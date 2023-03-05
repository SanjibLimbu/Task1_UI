import 'package:flutter/material.dart';
import 'package:ui/screens/email/email_card/email_card.dart';

import 'package:ui/viewModel/email_data.dart';

class EmailList extends StatelessWidget {
  const EmailList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: EmailData.emailData.length,
          itemBuilder: (BuildContext context, int index) {
            var emailData = EmailData.emailData[index];
            return EmailCard(
              emailData: emailData,
            );
          }),
    );
  }
}
