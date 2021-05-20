// toggled, changes the state of a [bool]
// member field called `_lights`.

import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class SwitchWithText extends StatelessWidget {
  const SwitchWithText({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final bool value;
  final Function onChanged;
  final EdgeInsets padding = const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Container(
        // padding: padding,
        height: 26.0,
        margin: EdgeInsets.only(left: 4.0),
        child: Row(
          // crossAxisAlignment: ,
          children: <Widget>[
            Expanded(
              child: Text(label),
            ),
            Switch(
              value: value,
              onChanged: (bool newValue) {
                onChanged(newValue);
              },
            ),
          ],
        ),
      ),
    );
  }
}