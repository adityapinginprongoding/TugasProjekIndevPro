import 'package:flutter/material.dart';
import 'package:projektes/theme.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool hasProduct;

  ChatBubble({
    this.isSender = false, 
    this.text = '',
    this.hasProduct = false,
    });

  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Container(
        width: 230,
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(isSender ? 12 : 0),
                topRight: Radius.circular(isSender ? 0 : 12),
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12)),
            color: isSender ? bg : isifrom),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/image_shoes.png',
                    width: 70,
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'COURT VISION 2.0 SHOES',
                        style: texttextstyle.copyWith(fontWeight: bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '\$57.25',
                        style: texttextstyle.copyWith(
                            fontWeight: medium, color: putih),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: putih),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: Text(
                    'Add to Cart',
                    style: texttextstyle.copyWith(
                        color: hitam, fontWeight: semibold),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: putih,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: Text(
                    'Buy Now',
                    style:
                        texttextstyle.copyWith(color: hitam, fontWeight: bold),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productPreview() : SizedBox(),
          Row(
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(isSender ? 12 : 0),
                          topRight: Radius.circular(isSender ? 0 : 12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                      color: isSender ? bg : isifrom),
                  child: Text(
                    text,
                    style: texttextstyle.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                      color: putih,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
