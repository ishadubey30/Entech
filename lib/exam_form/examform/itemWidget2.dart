import 'package:firebase_auth/firebase_auth.dart';

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:sih_finals/exam_form/examform/formGate.dart';
import 'package:sih_finals/exam_form/examform/formNeetpg.dart';
import 'package:sih_finals/exam_form/examform/formgrad.dart';
import 'catalog2.dart';

class ItemWidget extends StatefulWidget {
  final Item item;
  const ItemWidget({required this.item});

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  final user = FirebaseAuth.instance.currentUser;
  late String? userId = user!.uid;
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
              side: BorderSide(color: Colors.black, width: 2)),
          color: Colors.transparent,
          clipBehavior: Clip.antiAlias,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 240,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    image:
                        DecorationImage(image: NetworkImage(widget.item.image)),
                  ),
                ),
                ScrollOnExpand(
                  child: ExpandablePanel(
                    theme: ExpandableThemeData(
                        expandIcon: Icons.arrow_downward_rounded,
                        collapseIcon: Icons.arrow_upward_rounded,
                        tapBodyToCollapse: true,
                        tapHeaderToExpand: true),
                    header: Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        widget.item.name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    collapsed: Text(
                      widget.item.des,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Text(
                      List.generate(1, (_) => widget.item.des).join('\n\n'),
                      style: TextStyle(fontSize: 18),
                    ),
                    builder: (_, collapsed, expanded) => Padding(
                        padding: EdgeInsets.all(10).copyWith(top: 0),
                        child: Expandable(
                            collapsed: collapsed, expanded: expanded)),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    if (widget.item.name == "GATE") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Gate(userId!)));
                    } else if (widget.item.name == "NEET PG") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NeetPG(userId!)));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FormGrad(userId!)));
                    }
                  },
                  child: Text("Pay ${widget.item.price}"),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    primary: Colors.black,
                    side: BorderSide(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
