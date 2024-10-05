import 'package:flutter/material.dart';
import 'package:projektes/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/chat');
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 33,
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/image_shop_logo.png',
              width: 54,
            ),
            SizedBox(width: 12), // Memberi jarak antara gambar dan teks
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Erik Store',
                    style: texttextstyle.copyWith(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'Good night, This item is on....',
                    style: texttextstyle.copyWith(
                      fontSize: 13,
                      color: isifrom,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Text(
              'now',
              style: texttextstyle.copyWith(fontSize: 10, color: isifrom),
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 78, 77, 77),
            )
          ],
        ),
      ),
    );
  }
}
