import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:sih_finals/flobalVariables.dart';
import 'package:sih_finals/screens/homepage.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool paymentDone = false;
  var _razorpay = Razorpay();
  // TextEditingController amountController = TextEditingController();
  @override
  void initState() {
    super.initState();

    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text("Payment Gateway"),
            ),
            // TextField(
            //   controller: amountController,
            //   decoration: InputDecoration(
            //     hintText: "Amount",
            //     icon: Icon(Icons.currency_rupee_outlined),
            //   ),
            // ),
            ListTile(
              title: Text("${price}"),
              leading: Icon(Icons.currency_rupee_outlined),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: ElevatedButton(
                onPressed: () {
                  var options = {
                    'key': 'rzp_test_y3ZV8BT0z4Dyzf',
                    'amount': ((price!) * 100).toString(),
                    'name': 'Entech Pay',
                    'description': 'One Click Payment',
                    'timeout': 300,
                    'prefill': {
                      'contact': '7880667652',
                      'email': '${FirebaseAuth.instance.currentUser!.email}'
                    }
                  };
                  _razorpay.open(options);
                },
                child: Text("Pay"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: "SUCCESS: " + response.paymentId.toString(),
        timeInSecForIosWeb: 125);
    setState(() {
      paymentDone = true;
    });
    if (paymentDone == true) {
      Navigator.of(context).push(
          new MaterialPageRoute(builder: (BuildContext context) => HomePage()));
    } else {
      return;
    }
    print("Payment Done");

    // Do something when payment succeeds
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print("Fail");
    // Do something when payment fails
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    print("External Wallet Added");
    // Do something when an external wallet was selected
  }

  void dispose() {
    _razorpay.clear();

    super.dispose();
  }
}
