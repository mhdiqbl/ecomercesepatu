import 'package:flutter/material.dart';
import 'package:sepatu/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        automaticallyImplyLeading: false, //menghilangkan nav yg diatas
        elevation: 0,
        flexibleSpace: SafeArea(
            //agar tidak tembus ke status bar
            child: Container(
          padding: EdgeInsets.all(
            defaultMargin,
          ),
          child: Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/image_profile.png',
                  width: 64,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hallo iqbal',
                      style: primaryTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text('@iqbl24',
                    style: subtitletTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    ),
                  ],
                ),
              ),
              Image.asset('assets/button_exit.png',
              width: 20,
              ),
            ],
          ),
        )),
      );
    }

    return Column(
      children: [
        header(),
      ],
    );
  }
}
