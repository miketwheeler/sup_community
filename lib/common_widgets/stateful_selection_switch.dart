import 'package:flutter/material.dart';
import 'package:sup_community/common_widgets/selection_switch.dart';

class StatefulSelectionSwitch extends StatefulWidget {
  final String label;
  const StatefulSelectionSwitch({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  State<StatefulSelectionSwitch> createState() =>
      _StatefulSelectionSwitchState();
}

class _StatefulSelectionSwitchState extends State<StatefulSelectionSwitch> {
  bool _isSelected = false;

  Widget build(BuildContext context) {
    return SwitchWithText(
        label: widget.label,
        value: _isSelected,
        onChanged: (newValue) {
          setState(() {
            _isSelected = newValue;
          });
        });
  }
}
