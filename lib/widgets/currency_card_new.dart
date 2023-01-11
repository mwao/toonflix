import 'package:flutter/material.dart';
import 'package:toonflix/widgets/currency_card.dart';

class CurrencyCardNew extends StatelessWidget {
  final String name, code, amount;
  final double offset;
  final IconData icon;
  final bool isInverted;

  const CurrencyCardNew(
      {super.key,
      required this.name,
      required this.code,
      required this.amount,
      required this.offset,
      required this.icon,
      required this.isInverted});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Transform.translate(
        offset: Offset(0, offset),
        child: CurrencyCard(
            name: name,
            code: code,
            amount: amount,
            icon: icon,
            isInverted: isInverted));
  }
}
