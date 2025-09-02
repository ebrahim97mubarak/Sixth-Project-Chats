// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ninth/Models/messagesModel.dart';
import 'package:ninth/Widgets/chatContenarWidget.dart';
import 'package:ninth/consets.dart';

// ignore: camel_case_types, must_be_immutable
class chatScreen extends StatefulWidget {
  chatScreen({super.key});
  @override
  State<chatScreen> createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  List<MessagesModel> messagesModel = [
    MessagesModel(0, messageText: 'السلام عليكم ورحمة الله وبركاته'),
    MessagesModel(0, messageText: 'كيفك أخبارك يواد'),
    MessagesModel(0, messageText: 'ايش جديد؟؟'),
    MessagesModel(1, messageText: 'وعليكم السلام ورحمة الله وبركاته'),
    MessagesModel(1, messageText: 'الحمد لله بخير'),
    MessagesModel(1, messageText: 'كيفك إنت أخبارك؟؟'),
    MessagesModel(0,
        messageText: 'والله الحمد لله بخير ونعمة ولله الحمد والمنة'),
  ];
  ScrollController scrollController = ScrollController();
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPraimaryColor,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/scholar.png', height: 50),
            const Text('Chat'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 85),
        child: ListView.builder(
          controller: scrollController,
          itemBuilder: (context, index) {
            int numberUser = messagesModel[index].User;
            return ChatContenarWidget(
              leftMargin: numberUser == 0 ? 10 : 120,
              rightMargin: numberUser == 0 ? 120 : 10,
              bouttomLefteRadius: numberUser == 0 ? 0 : 32,
              bouttomRighteRadius: numberUser == 0 ? 32 : 0,
              backGroundContenarColor:
                  numberUser == 0 ? kPraimaryColor : const Color(0xEE006287),
              text: messagesModel[index].messageText,
              alignment: numberUser == 0
                  ? Alignment.centerLeft
                  : Alignment.bottomRight,
            );
          },
          itemCount: messagesModel.length,
        ),
      ),
      bottomSheet: SizedBox(
        height: 75,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: TextField(
            controller: textEditingController,
            onSubmitted: (value) {
              if (value != '') {
                setState(
                  () {
                    messagesModel.add(
                      MessagesModel(
                        0,
                        messageText: value,
                      ),
                    );
                    textEditingController.clear();
                    scrollController.jumpTo(
                      scrollController.position.maxScrollExtent,
                    );
                  },
                );
              }
            },
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
              suffixIcon: const Icon(Icons.send),
              suffixIconColor: kPraimaryColor,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  width: 1.5,
                  color: kPraimaryColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
