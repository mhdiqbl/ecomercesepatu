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

          //NOTE: ADDRESS DETAILS
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: backgroundColor4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Address Details',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/icon_store_location.png',
                        width: 40,
                        ),
                        Image.asset('assets/icon_line.png',
                        width: 30,
                        ),
                        Image.asset('assets/icon_your_address.png',
                        width: 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Store Location',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                        ),
                        Text('Adidas Core',
                        style: primaryTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                        ),
                        SizedBox(
                          height: defaultMargin,
                        ),
                        Text('Your Address',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                        ),
                        Text('marsemoon',
                        style: primaryTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
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
