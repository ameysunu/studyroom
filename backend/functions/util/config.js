

  var firebaseConfig = {
    apiKey: "AIzaSyCtN4dCwDpNse2xhQNPLr7sMUMOijbTZvY",
    authDomain: "studyroom-b6626.firebaseapp.com",
    databaseURL: "https://studyroom-b6626.firebaseio.com",
    projectId: "studyroom-b6626",
    storageBucket: "studyroom-b6626.appspot.com",
    messagingSenderId: "279824364329",
    appId: "1:279824364329:web:21fe53caf4916f71f4bd38",
    measurementId: "G-N5NSDERYWT"
  };

const firebase = require('firebase')
firebase.initializeApp(firebaseConfig)

module.exports = {firebase, firebaseConfig}

