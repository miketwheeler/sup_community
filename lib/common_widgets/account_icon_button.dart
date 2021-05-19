import 'package:flutter/material.dart';

class AccountIconButton extends StatelessWidget {
  const AccountIconButton({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Center(
          child: Ink(
            child: IconButton(
              icon: const Icon(Icons.account_circle),
              color: Colors.white,
              iconSize: 34.0,
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

// need onPressed function to 
//    1) open mini-modal for 'Logout' or 'Account' option