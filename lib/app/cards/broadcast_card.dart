import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:sup_community/common_widgets/selection_switch.dart';
import 'package:sup_community/common_widgets/stateful_selection_switch.dart';

class ExpansionCardWidget extends StatefulWidget {
  @override
  _ExpansionCardWidgetState createState() => _ExpansionCardWidgetState();
}

class _ExpansionCardWidgetState extends State<ExpansionCardWidget> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 2.0,
        vertical: 2.0,
      ),
      child: ExpansionTileCard(
        shadowColor: Colors.transparent,
        key: cardA,
        leading: Icon(
          Icons.account_box,
          size: 60,
        ),
        title: Text("My Broadcast Info"),
        subtitle: Text("Looking for: Friends"),
        children: <Widget>[
          Divider(
            thickness: 1.0,
            indent: 8.0,
            endIndent: 8.0,
            height: 1.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 8.0,
              ),
              child: Column(
                children: <Widget>[
                  StatefulSelectionSwitch(label: 'Name'),
                  StatefulSelectionSwitch(label: 'Seeking'),
                  StatefulSelectionSwitch(label: 'Picture'),
                  StatefulSelectionSwitch(label: 'Introduction'),
                  StatefulSelectionSwitch(label: 'Description (on expand)'),
                  StatefulSelectionSwitch(label: 'Interests'),
                  StatefulSelectionSwitch(label: 'Business'),
                  StatefulSelectionSwitch(label: 'Hobbies'),
                  StatefulSelectionSwitch(label: 'Pseudoname'),
                ],
              ),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.end,
            buttonHeight: 52.0,
            buttonMinWidth: 90.0,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  cardA.currentState?.collapse();
                },
                child: Row(
                  children: <Widget>[
                    Text('Done'),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(Icons.task_alt),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
