import 'package:flutter/material.dart';
import 'package:banking_app_ui_flutter_demo/constants/app_textstyle.dart';
import 'package:banking_app_ui_flutter_demo/constants/color_constants.dart';
import 'package:banking_app_ui_flutter_demo/data/card_data.dart';
import 'package:banking_app_ui_flutter_demo/widgets/my_card.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Cards",
          style: TextStyle(
            fontFamily: "Poppins",
            color: kPrimaryColor,
          ),
        ),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage:
                (NetworkImage("https://placeimg.com/640/480/people")),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_active_outlined,
                color: Colors.black, size: 27),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: const EdgeInsets.all(20),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: myCards.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 20);
                },
                itemBuilder: (context, index) {
                  return MyCard(card: myCards[index]);
                },
              )),
          const CircleAvatar(
            radius: 40,
            child: Icon(Icons.add, size: 50),
          ),
          const SizedBox(height: 10),
          const Text(
            "Add Card",
            style: AppTextStyle.listitleTitle,
          ),
        ],
      ),
    );
  }
}
