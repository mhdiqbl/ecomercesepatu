import 'package:flutter/material.dart';
import 'package:sepatu/theme.dart';
import 'package:sepatu/widgets/cart_card.dart';
import 'package:sepatu/widgets/checkout_card.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Checkout Details',
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          // NOTE: LIST ITEMS
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                'List Items ',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              CheckoutCard(),
              CheckoutCard(),
              ],
          ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Checkout Details',
      ),
    ),
    body: content(),
    );
  }
}
