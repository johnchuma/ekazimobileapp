import 'package:ekazi/pages/main/notification_tabs/all_notifications.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/heading_text.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: backgroundColor,
        
        appBar: AppBar(
          leading: Container(),
          bottom: TabBar(
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                labelColor: primaryColor,
                indicatorColor: primaryColor,
                tabs: const [
                  Tab(
                    text: "All notifications (102)",
                  ),
                  Tab(
                    text: "Important(5)",
                  ),
                  Tab(
                    text: "Promotions (2)",
                  ),
                  
                ]),
          leadingWidth: 0,
          backgroundColor: backgroundColor,
          title: heading(text: "Notifications"),
        ),
        body: TabBarView(children: [const AllNotifications(),Container(),Container()]),
      ),
    );
  }
}
