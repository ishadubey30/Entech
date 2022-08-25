import 'package:sih_finals/arhma/Arhma_lib/home_screen.dart';
import 'package:flutter/material.dart';

class formapp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.

// Create a corresponding State class. This class holds data related to the form.
class MyCustomForm extends StatefulWidget {
  MyCustomFormState createState() {
    // return TextEditingController();
    return MyCustomFormState();
  }
}

// Create a corresponding State class. This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.

  final _formKey = GlobalKey<FormState>();
  // bool displayText = true;

  // var gradroll;

  @override
  TextEditingController gradroll = TextEditingController();

  //var myController;

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.person),
              hintText: 'Enter your name',
              labelText: 'Name',
            ),
          ),
          // TextFormField(
          //   decoration: const InputDecoration(
          //     icon: const Icon(Icons.phone),
          //     hintText: 'Enter a phone number',
          //     labelText: 'Phone',
          //   ),
          // ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.account_circle_outlined),
              hintText: 'Enter your HSC roll no.',
              labelText: 'HSC Roll no.',
            ),
          ),
          TextFormField(
            controller: gradroll,
            // if(gradroll.text!=0)

            //controller: myController,
            decoration: const InputDecoration(
              icon: const Icon(Icons.account_circle_outlined),
              hintText: 'Enter your garduation roll no.',
              labelText: 'Graduation roll no.',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.email_outlined),
              hintText: 'Enter your email id',
              labelText: 'Email',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.account_box),
              hintText: 'Enter your aadhar no.',
              labelText: 'Aadhar number',
            ),
          ),

          // TextFormField(
          //   decoration: const InputDecoration(
          //     icon: const Icon(Icons.calendar_today),
          //     hintText: 'Enter your date of birth',
          //     labelText: 'dd/mm/yyyy',
          //   ),
          // ),

          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new RaisedButton(
                child: const Text('SUBMIT'),
                onPressed: () {
                  // if (gradroll.value != 0) {
                  //   displayText = false;
                  // }

                  if (gradroll.text == '0' || gradroll.text.isEmpty) {
                    showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                              title: const Text("Warning!"),
                              content: const Text(
                                  "You are not eligible for this form.Please select as per your eligibility."),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomePage_Ar()));
                                  },
                                  child: Container(
                                    color: Colors.green,
                                    padding: const EdgeInsets.all(14),
                                    child: const Text("Back"),
                                  ),
                                ),
                              ],
                            ));
                  } else {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: const Text("Success!"),
                        content: const Text(
                            "Your form has been filled.Please pay the required amount."),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Container(
                              color: Colors.green,
                              padding: const EdgeInsets.all(14),
                              child: const Text("Pay Now"),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              )),
        ],
      ),
    );
  }
}
