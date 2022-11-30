// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:sih_finals/screens/homepage.dart';

class NationalCounselling extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NationalCounselling();
  }
}

class _NationalCounselling extends State<NationalCounselling> {
  final _coun_types = [
    'IITKanpur',
    'IITBombay',
    'IITMadras',
    'IITGuwahati',
    'IITDhanbad',
    'IITDelhi',
  ];
  final branchtypes = [
    'ComputerScience',
    'InformationTechnology',
    'Electrical',
    'Electronics',
    'Mechanical',
    'Civil'
  ];
  var _currentItemSelected1 = 'IITKanpur';
  var _currentItemSelected2 = 'IITBombay';
  var _currentItemSelected3 = 'IITMadras';
  var _currentItemSelected4 = 'IITGuwahati';
  var _currentItemSelected5 = 'IITDhanbad';
  var _currentItemSelected6 = 'IITDelhi';

  var _currentItemSelected11 = 'ComputerScience';
  var _currentItemSelected12 = 'InformationTechnology';
  var _currentItemSelected13 = 'Electrical';
  var _currentItemSelected14 = 'Electronics';
  var _currentItemSelected15 = 'Mechanical';
  var _currentItemSelected16 = 'Civil';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Counselling'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 152, 231, 245),
              Color.fromARGB(255, 241, 239, 235),
              Color.fromARGB(255, 246, 215, 169),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 70, 8, 5),
                child: Center(
                  child: Text(
                    'Welcome to Choice Filling!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.blue),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.02,
                      right: MediaQuery.of(context).size.width * 0.002,
                      top: 6,
                      bottom: 2),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'Choose your college',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.blue),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        DropdownButton<String>(
                          items: _coun_types.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String? newValueSelected1) {
                            _onDropDownItemSelected(newValueSelected1!);
                          },
                          value: _currentItemSelected1,
                        ),
                        DropdownButton<String>(
                          items: _coun_types.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String? newValueSelected2) {
                            _onDropDownItemSelected(newValueSelected2!);
                          },
                          value: _currentItemSelected2,
                        ),
                        DropdownButton<String>(
                          items: _coun_types.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String? newValueSelected3) {
                            _onDropDownItemSelected(newValueSelected3!);
                          },
                          value: _currentItemSelected3,
                        ),
                        DropdownButton<String>(
                          items: _coun_types.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String? newValueSelected4) {
                            _onDropDownItemSelected(newValueSelected4!);
                          },
                          value: _currentItemSelected4,
                        ),
                        DropdownButton<String>(
                          items: _coun_types.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String? newValueSelected5) {
                            _onDropDownItemSelected(newValueSelected5!);
                          },
                          value: _currentItemSelected5,
                        ),
                        DropdownButton<String>(
                          items: _coun_types.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String? newValueSelected6) {
                            _onDropDownItemSelected(newValueSelected6!);
                          },
                          value: _currentItemSelected6,
                        ),
                      ],
                    ),
                  ),
                ),

/**FOR BRANCHES */

                Container(
                  margin: const EdgeInsets.only(
                      left: 5, right: 5, top: 6, bottom: 2),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Column(
                        children: <Widget>[
                          const Text(
                            'Choose your branch',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.blue),
                          ),
                          SizedBox(height: 20),
                          DropdownButton<String>(
                            items: branchtypes.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String? newValueSelected1) {
                              setState(() {
                                this._currentItemSelected11 =
                                    newValueSelected1!;
                              });
                              // _onDropDownItemSelected(newValueSelected1!);
                            },
                            value: _currentItemSelected11,
                          ),
                          DropdownButton<String>(
                            items: branchtypes.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String? newValueSelected2) {
                              this._currentItemSelected12 = newValueSelected2!;
                              // _onDropDownItemSelected(newValueSelected2!);
                            },
                            value: _currentItemSelected12,
                          ),
                          DropdownButton<String>(
                            items: branchtypes.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String? newValueSelected3) {
                              this._currentItemSelected13 = newValueSelected3!;
                              // _onDropDownItemSelected(newValueSelected3!);
                            },
                            value: _currentItemSelected13,
                          ),
                          DropdownButton<String>(
                            items: branchtypes.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String? newValueSelected4) {
                              this._currentItemSelected13 = newValueSelected4!;
                              // _onDropDownItemSelected(newValueSelected4!);
                            },
                            value: _currentItemSelected14,
                          ),
                          DropdownButton<String>(
                            items: branchtypes.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String? newValueSelected5) {
                              this._currentItemSelected15 = newValueSelected5!;
                              // _onDropDownItemSelected(newValueSelected5!);
                            },
                            value: _currentItemSelected15,
                          ),
                          DropdownButton<String>(
                            items: branchtypes.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String? newValueSelected6) {
                              this._currentItemSelected16 = newValueSelected6!;
                              // _onDropDownItemSelected(newValueSelected6!);
                            },
                            value: _currentItemSelected16,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
                child: ElevatedButton(
                    child: Text('Fill now'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    })),
          ],
        ),
      ),
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      // ignore: unnecessary_this
      this._currentItemSelected1 = newValueSelected;
    });
  }
}
