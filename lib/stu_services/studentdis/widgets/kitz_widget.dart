import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:sih_finals/stu_services/studentdis/models/kitz_model.dart';

class Kitz extends StatelessWidget {
  final Item4 item;
  const Kitz({required this.item});
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
                    image: DecorationImage(image: NetworkImage(item.image)),
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
                        item.name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    collapsed: Text(
                      item.des,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Text(
                      List.generate(1, (_) => item.des).join('\n\n'),
                      style: TextStyle(fontSize: 18),
                    ),
                    builder: (_, collapsed, expanded) => Padding(
                        padding: EdgeInsets.all(10).copyWith(top: 0),
                        child: Expandable(
                            collapsed: collapsed, expanded: expanded)),
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
