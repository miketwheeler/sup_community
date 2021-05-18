import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sup_community/common_widgets/selection_switch.dart';

final List<String> person_data = [
  'Name',
  'Info',
  'Seeking',
  'Synop',
  'Picture',
  'Social'
];

bool _isOpen = false;

class PersonalCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(4.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                color: Colors.lightBlue,
                height: 60.0,
                width: 60.0,
              ),
            ),
          ),
          //<-----------------
          // Iterable list of own data for display, via passed is 'open' prop
          //<-----------------
          // Below: test data for display, will actually come from func, above
          SwitchWithText(label: 'Name'),
          SwitchWithText(label: 'Info'),
          SwitchWithText(label: 'Social'),
          SwitchWithText(label: 'Simp. Descr.'),
          SwitchWithText(label: 'Picture'),
          SwitchWithText(label: 'Seeking'),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              OutlinedButton(
                child: Text(_isOpen ? 'All Set' : 'Open Selection'),
                onPressed: () => { },
              ),
              SizedBox(width: 8.0,),
            ],
          ),
        ],
      ),
    );
  }
}

Iterable<String> _setListLength() {
  return !_isOpen ? person_data.take(3) : person_data;
}
