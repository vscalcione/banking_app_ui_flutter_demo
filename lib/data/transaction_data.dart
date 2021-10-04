import 'package:flutter/material.dart';

class TransactionModel {
  String firstName;
  String lastName;
  String avatar;
  String currentBalance;
  String month;
  String changePercentageIndicator;
  String changePercentage;
  Color color;

  TransactionModel(
      {required this.firstName,
      required this.lastName,
      required this.avatar,
      required this.currentBalance,
      required this.month,
      required this.changePercentageIndicator,
      required this.changePercentage,
      required this.color});
}

List<TransactionModel> myTransactions = [
  TransactionModel(
      firstName: "Lindsay",
      lastName: "Gonzales",
      avatar: "asset/icons/avatar1.png",
      currentBalance: "\$5482",
      month: "January",
      changePercentageIndicator: "up",
      changePercentage: "0.41%",
      color: (Colors.green[100])!),
  TransactionModel(
      firstName: "Joey",
      lastName: "Mays",
      avatar: "asset/icons/avatar2.png",
      currentBalance: "\$4252",
      month: "March",
      changePercentageIndicator: "down",
      changePercentage: "4.54%",
      color: (Colors.orange[100])!),
  TransactionModel(
      firstName: "Connar",
      lastName: "Bloom",
      avatar: "asset/icons/avatar3.png",
      currentBalance: "\$5052",
      month: "January",
      changePercentageIndicator: "up",
      changePercentage: "0.41%",
      color: (Colors.green[100])!),
  TransactionModel(
      firstName: "Kate",
      lastName: "Holt",
      avatar: "asset/icons/avatar1.png",
      currentBalance: "\$5841",
      month: "August",
      changePercentageIndicator: "up",
      changePercentage: "0.41%",
      color: (Colors.green[100])!),
  TransactionModel(
      firstName: "Glen",
      lastName: "Helliot",
      avatar: "asset/icons/avatar4.png",
      currentBalance: "\$4525",
      month: "May",
      changePercentageIndicator: "down",
      changePercentage: "4.54%",
      color: (Colors.orange[100])!),
];
