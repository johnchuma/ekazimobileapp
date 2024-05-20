import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/chat_item.dart';
import 'package:ekazi/widgets/heading_text.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0,
        backgroundColor: backgroundColor,
        title: heading(text: "Chats"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            chatItem(
                title: "Halid Suleiman",
                image:
                    "https://img.freepik.com/free-photo/side-view-ofserious-man_23-2148946213.jpg"),
            chatItem(
                title: "Halid Suleiman",
                image:
                    "https://img.freepik.com/free-photo/side-view-ofserious-man_23-2148946213.jpg"),
            chatItem(
                title: "Halid Suleiman",
                image:
                    "https://img.freepik.com/free-photo/side-view-ofserious-man_23-2148946213.jpg")
          ],
        ),
      ),
    );
  }
}
