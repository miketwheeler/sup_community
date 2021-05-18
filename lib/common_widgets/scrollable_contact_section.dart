import 'package:flutter/material.dart';
import 'package:sup_community/app/cards/contact_card.dart';

class MyScrollableSection extends StatelessWidget {
  // const MyScrollableSection({});

  Widget build(BuildContext context) {
    final contactCard = ContactCard();
    // temporary list of blank cards, need to configure contact cards
    // as retrieved nearbys - contact cards need fields for data, this needs to 
    // populate cards with that data
    final contactList = List<ContactCard>.generate(10, (i) => contactCard);
      
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: contactList.length,
      itemBuilder: (context, index) {
        return contactList[index];
      },
    );
  }
}
