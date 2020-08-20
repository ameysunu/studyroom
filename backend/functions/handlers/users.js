const {admin, db} = require('../util/admin')
const {firebase, firebaseConfig} = require('../util/config')


const {validateSignupData,validateLoginData, reduceUserDetails}  = require('../util/validators')
//validate the email, passwd, handle

exports.signup = (req, res) => {
    const newUser = {
        email : req.body.email,
        password : req.body.password,
        confirmPassword : req.body.confirmPassword,
        handle : req.body.handle
    }

    let {errors , valid } = validateSignupData(newUser)
    if(!valid){
        return res.status(400).json(errors)
    }

    const noImg = 'no-profile-image.png' 


    //TODO validate user
    let token, userId
    db.doc(`/users/${newUser.handle}`).get()
    .then(doc => {
        if(doc.exists){
            return res.status(400).json({handle : `This handle already exists`})
        }else{
            return firebase.auth().createUserWithEmailAndPassword(newUser.email , newUser.password)
        }
    })
    .then(data => {
        userId = data.user.uid
        return data.user.getIdToken()
    })
    .then((idToken) => {
        token = idToken
        const userCredentials = {
            handle : newUser.handle,
            email : newUser.email,
            password : newUser.password,
            createdAt : new Date().toISOString(),
            imageUrl : `https://firebasestorage.googleapis.com/v0/b/${firebaseConfig.storageBucket}/o/${noImg}?alt=media`,
            userId
        }
        return db.doc(`/users/${newUser.handle}`).set(userCredentials)
    }) 
    .then(() => {
        return res.status(201).json({token})
    })
    .catch(err => {
        console.log(err)
        if(err.code === 'auth/email-already-in-use'){
            return res.status(400),json({email : 'Email already in use'})
        }else{
            return res.status(500).json({general : 'Something went wrong'})
        }
    })
}

//login user
exports.login = (req, res) => {
    const user = {
        email : req.body.email,
        password : req.body.password
    }

    let {errors, valid } = validateLoginData(user)
    if(!valid){
        return res.status(400).json(errors)
    }


    // if no errors exist, login the user to firebase
    firebase
    .auth()
    .signInWithEmailAndPassword(user.email, user.password)
    .then((data) => {
        return data.user.getIdToken()
    })
    .then((token) => {
        return res.json({token})
    })
    .catch((err) => {
        console.log(err)
        return res.status(403).json({general : "Wrong password, try again"})        
    })
}

