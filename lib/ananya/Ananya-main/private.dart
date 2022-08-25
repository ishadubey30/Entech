import 'package:flutter/material.dart';

class PrivateCounselling extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PrivateCounselling();
  }
}

class _PrivateCounselling extends State<PrivateCounselling> {
  var _coun_types = [
    'BITSPilani',
    'VIT',
    'ThaparUniversity',
    'AnnaUniversity',
    'ManipalInstitutey',
    'Birla Institute'
  ];
  var branchtypes = [
    'ComputerScience',
    'InformationTechnology',
    'Electrical',
    'Electronics',
    'Mechanical',
    'Civil'
  ];
  var _currentItemSelected = 'BITSPilani';
  var _currentItemSelected1 = 'ComputerScience';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counselling'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 60.0),
            child: const Text(
              'Welcome to Choice Filling!',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.blue),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 200, right: 100, top: 60.0, bottom: 20.0),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'Choose your college',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.blue),
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
                          value: _currentItemSelected,
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
                          value: _currentItemSelected,
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
                          value: _currentItemSelected,
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
                          value: _currentItemSelected,
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
                          value: _currentItemSelected,
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
                          value: _currentItemSelected,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

/**FOR BRANCHES */

              Container(
                margin: const EdgeInsets.only(
                    left: 100, right: 200, top: 60.0, bottom: 20.0),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'Choose your branch',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.blue),
                        ),
                        DropdownButton<String>(
                          items: branchtypes.map((String dropDownStringItem) {
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
                          items: branchtypes.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String? newValueSelected2) {
                            _onDropDownItemSelected(newValueSelected2!);
                          },
                          value: _currentItemSelected1,
                        ),
                        DropdownButton<String>(
                          items: branchtypes.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String? newValueSelected3) {
                            _onDropDownItemSelected(newValueSelected3!);
                          },
                          value: _currentItemSelected1,
                        ),
                        DropdownButton<String>(
                          items: branchtypes.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String? newValueSelected4) {
                            _onDropDownItemSelected(newValueSelected4!);
                          },
                          value: _currentItemSelected1,
                        ),
                        DropdownButton<String>(
                          items: branchtypes.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String? newValueSelected5) {
                            _onDropDownItemSelected(newValueSelected5!);
                          },
                          value: _currentItemSelected1,
                        ),
                        DropdownButton<String>(
                          items: branchtypes.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String? newValueSelected6) {
                            _onDropDownItemSelected(newValueSelected6!);
                          },
                          value: _currentItemSelected1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}
