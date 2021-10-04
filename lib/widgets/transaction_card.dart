import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:banking_app_ui_flutter_demo/constants/app_textstyle.dart';
import 'package:banking_app_ui_flutter_demo/data/transaction_data.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionCard({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: (Colors.grey[300])!)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: transaction.color,
                ),
                child: Image.asset(transaction.avatar),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    transaction.firstName,
                    style: AppTextStyle.listitleTitle,
                  ),
                  Text(transaction.lastName, style: AppTextStyle.listitleTitle),
                  Text(
                    transaction.month,
                    style: AppTextStyle.listitleSubTitle,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    transaction.currentBalance,
                    style: AppTextStyle.listitleTitle,
                  ),
                  Row(
                    children: [
                      transaction.changePercentageIndicator == "up"
                          ? const Icon(
                              FontAwesomeIcons.levelUpAlt,
                              size: 10,
                              color: Colors.green,
                            )
                          : const Icon(
                              FontAwesomeIcons.levelDownAlt,
                              size: 10,
                              color: Colors.red,
                            ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        transaction.changePercentage,
                        style: AppTextStyle.listitleSubTitle,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
