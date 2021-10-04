import 'package:flutter/material.dart';
import 'package:banking_app_ui_flutter_demo/constants/app_textstyle.dart';
import 'package:banking_app_ui_flutter_demo/data/card_data.dart';

class MyCard extends StatelessWidget {
  final CardModel card;
  const MyCard({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        height: 200,
        width: 350,
        decoration: BoxDecoration(
          color: card.cardColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Card Name", style: AppTextStyle.myCardTitle),
                    Text(card.holderFirstName,
                        style: AppTextStyle.myCardSubtitle),
                    Text(card.holderLastName,
                        style: AppTextStyle.myCardSubtitle)
                  ],
                ),
                Text(
                  card.cardNumber,
                  style: AppTextStyle.myCardSubtitle,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Expiring Date",
                            style: AppTextStyle.myCardTitle),
                        Text(card.expiringDate,
                            style: AppTextStyle.myCardSubtitle),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: Image.asset("assets/icons/mcard.png"),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
