import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class ExpansionNearbyCardWidget extends StatefulWidget {
  @override
  _ExpansionNearbyCardWidgetState createState() => _ExpansionNearbyCardWidgetState();
}

class _ExpansionNearbyCardWidgetState extends State<ExpansionNearbyCardWidget> {
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
        title: Text("Jerry A."),
        subtitle: Text("I'm looking for some new Friends"),
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 8.0,
              ),
              child: Text(
                "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
                " creative and leading-edge flutter app development solutions for customers all around the globe.",
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(fontSize: 16),
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
                    Icon(
                      Icons.facebook, 
                      color: Colors.blue,
                    ),
                    SizedBox(width: 220.0),
                    Text('Done'),
                    SizedBox(width: 4),
                    Icon(Icons.task_alt),
                    SizedBox(width: 8),
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