import 'package:flutter/material.dart';
import 'package:sup_community/common_widgets/show_alert_dialog.dart';
import 'package:provider/provider.dart';
import 'package:sup_community/services/auth.dart';
import 'package:sup_community/app/cards/personal_card.dart';
import 'package:sup_community/common_widgets/horizontal_heading.dart';
import 'package:sup_community/common_widgets/account_icon_button.dart';
import 'package:sup_community/common_widgets/signal_icon_button.dart';
// import 'package:sup_community/app/cards/contact_card.dart';
import 'package:sup_community/common_widgets/scrollable_contact_section.dart';

class HomePage extends StatelessWidget {
  Future<void> _signOut(BuildContext context) async {
    try {
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _confirmSignOut(BuildContext context) async {
    final didRequestSignOut = await showAlertDialog(
      context,
      title: 'Logout',
      content: 'Are you sure you want to log out?',
      defaultActionText: 'Logout',
    );
    if (didRequestSignOut == true) {
      _signOut(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final personalCard = PersonalCard();
    final horizontalHeadingBlue = HorizontalHeading(
      label: 'Nearby',
      height: 32,
      color: Colors.blue,
    );
    final contactList = MyScrollableSection();
    final accountIcon = AccountIconButton();
    final signalIcon = SignalIconButton();

    return Scaffold(
      appBar: AppBar(
        title: Text('Sup'),
        actions: <Widget>[
          signalIcon,
          // accountIcon, <== con set, needs onPressed action
          TextButton(
            child: Text('My Account',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                )),
            onPressed: () => _confirmSignOut(context), // sign out for now
          )
        ],
      ),
      // Personal Card (and dropdown) / bar / nearby connections
      body: Column(
        children: <Widget>[
          personalCard,
          horizontalHeadingBlue,
          Expanded(
            child: contactList,
          ),
        ],
      ),
    );
  }
}
