import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController? _textEditingController = TextEditingController();
  List<String> counsellingTypeOnSearch = [];
  List<String> counsellingType = ['JoSAA', 'NEET', 'LLB'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
              color: Colors.blue.shade200,
              borderRadius: BorderRadius.circular(30)),
          child: TextField(
            onChanged: (value) {
              setState(() {
                counsellingTypeOnSearch = counsellingType
                    .where((element) =>
                        element.toLowerCase().contains(value.toLowerCase()))
                    .toList();
              });
            },
            controller: _textEditingController,
            decoration: InputDecoration(
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: EdgeInsets.all(15),
                hintText: 'Search'),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              counsellingTypeOnSearch.clear();
              _textEditingController!.clear();
              setState(() {
                _textEditingController!.text = '';
              });
            },
            child: Icon(
              Icons.close,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: _textEditingController!.text.isNotEmpty &&
              counsellingTypeOnSearch.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search_off, size: 100),
                  Text('Sorry, No Results Found',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ],
              ),
            )
          : ListView.builder(
              itemCount: _textEditingController!.text.isNotEmpty
                  ? counsellingTypeOnSearch.length
                  : counsellingType.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.school),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        _textEditingController!.text.isNotEmpty
                            ? counsellingTypeOnSearch[index]
                            : counsellingType[index],
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              }),
    );
  }
}
