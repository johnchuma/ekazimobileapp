import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/heading_text.dart';
import 'package:ekazi/widgets/notification_item.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0,
        backgroundColor: backgroundColor,
        title: heading(text: "Notifications"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            notificationItem(),
            notificationItem(),
            notificationItem(),
            notificationItem(isRead: true),
            notificationItem(isRead: true)
          ],
        ),
      ),
    );
  }
}
