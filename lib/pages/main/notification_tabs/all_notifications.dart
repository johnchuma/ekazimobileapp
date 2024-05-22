import 'package:ekazi/widgets/notification_item.dart';
import 'package:flutter/material.dart';

class AllNotifications extends StatelessWidget {
  const AllNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body:Padding(
        padding:  EdgeInsets.only(left: 15,right: 15,top: 10),
        child: ListView(
          children: [
            notificationItem(),
            notificationItem(),
            notificationItem(),
            notificationItem(isRead: true),
            notificationItem(isRead: true)
          ],
        ),
      ),);
  }
}