// import { RestClient } from "@bootpay/server-rest-client";
// or
const RestClient = require("@bootpay/server-rest-client").RestClient;

const functions = require("firebase-functions");

const admin = require("firebase-admin");
admin.initializeApp();

RestClient.setConfig(
  "616422f87b5ba4001d52c1f1",
  "ShSUsfXJBLdwh58Vm2hOdePJXRW821xfP8QRcpNB9sI="
);

exports.checkPay = functions.https.onRequest((request, response) => {
  try {
    RestClient.getAccessToken().then(function (response) {
      if (response.status === 200) {
        console.log(response.data.token);
      }
    });
  } catch (e) {
    console.log(e);
  }
});

// // // Create and Deploy Your First Cloud Functions
// // // https://firebase.google.com/docs/functions/write-firebase-functions
// //
// exports.helloWorld = functions.https.onRequest((request, response) => {
//   functions.logger.info("Hello logs!", { structuredData: true });
//   response.send("Hello from Firebase!");
// });
