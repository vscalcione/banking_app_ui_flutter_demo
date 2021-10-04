import 'package:flutter/material.dart';
import 'package:banking_app_ui_flutter_demo/constants/color_constants.dart';

class CardModel {
  String holderFirstName;
  String holderLastName;
  String cardNumber;
  String expiringDate;
  String cvv;
  Color cardColor;

  CardModel(
      {required this.holderFirstName,
      required this.holderLastName,
      required this.cardNumber,
      required this.expiringDate,
      required this.cvv,
      required this.cardColor});
}

List<CardModel> myCards = [
  CardModel(
      holderFirstName: "John",
      holderLastName: "Doe",
      cardNumber: "**** **** **** 1234",
      cvv: "**1",
      expiringDate: "07/26",
      cardColor: kPrimaryColor),
  CardModel(
      holderFirstName: "Mark",
      holderLastName: "Red",
      cardNumber: "**** **** **** 5678",
      cvv: "**1",
      expiringDate: "08/29",
      cardColor: KSecondaryColor),
  CardModel(
      holderFirstName: "Luke",
      holderLastName: "Yellow",
      cardNumber: "**** **** **** 9012",
      cvv: "**1",
      expiringDate: "09/30",
      cardColor: kThirdColor),
];
