import 'package:flutter/material.dart';

class SignalIconButton extends StatelessWidget {
  const SignalIconButton({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Center(
          child: Ink(
            child: IconButton(
              icon: const Icon(Icons.record_voice_over),
              color: Colors.white,
              onPressed: () {},
            ),
            decoration: const ShapeDecoration(
              color: Colors.transparent,
              shape: CircleBorder(),
            ),
          ),
        ),
      );
  }
}

// need onPressed func and state to :
//      1) turn on/off ongoing signal 
//      2) revoke or deploy to nearby_connections
//      3) change icon to 'voice_over_off' if off