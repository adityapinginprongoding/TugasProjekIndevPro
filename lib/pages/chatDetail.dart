import 'package:flutter/material.dart';
import 'package:projektes/pages/widgets/chat_bubble.dart';
import 'package:projektes/theme.dart';

class ChatDetail extends StatelessWidget {
  const ChatDetail({super.key});

  PreferredSize header() {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        backgroundColor: primaryTextColor,
        centerTitle: false,
        title: Row(
          children: [
            Image.asset(
              'assets/image_shop_logo_online.png',
              width: 50,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Erik Store',
                  style: texttextstyle.copyWith(
                      fontWeight: bold, color: hitam, fontSize: 18),
                ),
                Text(
                  'Online',
                  style: texttextstyle.copyWith(
                    fontWeight: light,
                    fontSize: 16,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget productPreview() {
    return Container(
      width: 225,
      height: 74,
      margin: EdgeInsets.only(bottom: 20, left: 20),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isifrom,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: primaryTextColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 54,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'COURT VISIO....',
                  style: texttextstyle.copyWith(color: putih, fontSize: 16),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '\$54.45',
                  style: texttextstyle.copyWith(
                      color: bg, fontSize: 18, fontWeight: bold),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/icon_clos.png',
            width: 24,
          )
        ],
      ),
    );
  }

  Widget ChatInput() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        productPreview(),
        Container(
          margin: EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: primaryTextColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Type Message...',
                        hintStyle: texttextstyle.copyWith(
                            color: hitam, fontSize: 16, fontWeight: medium),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: primaryTextColor,
                  borderRadius:
                      BorderRadius.circular(12), // Gunakan borderRadius di sini
                ),
                child: Center(
                  child: Image.asset(
                    'assets/icon_send.png',
                    color: hitam,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget Content() {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      children: [
        ChatBubble(
          isSender: true,
          text: 'Hi, This item is still avaibel?',
          hasProduct: true,
        ),
         ChatBubble(
          isSender: false,
          text: 'Good night, This item is only avaible in size 21 and 34',
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: header(),
      bottomNavigationBar: ChatInput(),
      body: Content(),
    );
  }
}
