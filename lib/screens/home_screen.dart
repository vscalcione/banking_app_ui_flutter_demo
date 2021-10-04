import 'package:flutter/material.dart';
import 'package:banking_app_ui_flutter_demo/constants/app_textstyle.dart';
import 'package:banking_app_ui_flutter_demo/constants/color_constants.dart';
import 'package:banking_app_ui_flutter_demo/data/card_data.dart';
import 'package:banking_app_ui_flutter_demo/data/transaction_data.dart';
import 'package:banking_app_ui_flutter_demo/widgets/my_card.dart';
import 'package:banking_app_ui_flutter_demo/widgets/transaction_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Bank",
          style: TextStyle(
            fontFamily: "Poppins",
            color: kPrimaryColor,
          ),
        ),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage:
                NetworkImage("https://placeimg.com/640/480/people"),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_active_outlined,
              color: Colors.black,
              size: 27,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                child: ListView.separated(
                    physics: ClampingScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 10);
                    },
                    itemCount: myCards.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MyCard(
                        card: myCards[index],
                      );
                    }),
              ),
              const SizedBox(height: 30),
              const Text("Recent Transactions", style: AppTextStyle.bodyText),
              const SizedBox(
                height: 15,
              ),
              ListView.separated(
                itemCount: myTransactions.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10);
                },
                itemBuilder: (context, index) {
                  return TransactionCard(transaction: myTransactions[index]);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
