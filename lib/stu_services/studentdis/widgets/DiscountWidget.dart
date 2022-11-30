import 'package:expandable/expandable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

import 'package:sih_finals/flobalVariables.dart';
import 'package:sih_finals/screens/payment.dart';
import 'package:sih_finals/stu_services/studentdis/models/DiscountModel.dart';

class DiscountWidget extends StatefulWidget {
  final Item item;
  const DiscountWidget({required this.item});

  @override
  State<DiscountWidget> createState() => _DiscountWidgetState();
}

class _DiscountWidgetState extends State<DiscountWidget> {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Card(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Payment()));
                    setState(() {
                      price = int.parse(widget.item.price);
                    });
                  },
                  child: Text("Pay ₹ ${widget.item.price}"),
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
