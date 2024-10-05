import 'package:flutter/material.dart';
import 'package:projektes/pages/widgets/chat_tile.dart';
import 'package:projektes/theme.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: primaryTextColor,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: texttextstyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyChat() {
      return Expanded(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_headset.png',
                width: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Opss no message yet?',
                style: texttextstyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'You have never done a transaction',
                style: texttextstyle.copyWith(color: isifrom),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 44,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                        backgroundColor: bg,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    child: Text(
                      'Explore Store',
                      style: texttextstyle.copyWith(
                          fontSize: 16, fontWeight: medium, color: putih),
                    )),
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin
            ),
            children: [
              ChatTile(),
              ChatTile(),
              ChatTile()
            ],
          ),
        ),
      );
    }

    return Column(
      children: [header(), content()],
    );
  }
}
