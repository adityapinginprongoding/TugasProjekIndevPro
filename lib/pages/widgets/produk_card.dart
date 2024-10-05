import 'package:flutter/material.dart';
import 'package:projektes/theme.dart';

class ProdukCard extends StatelessWidget {
  const ProdukCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primaryTextColor
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset('assets/image_shoes.png',
            height: 150,
            width: 215,
            fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hiking',
                    style: texttextstyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 6,),
                  Text(
                    'COURT VISION 2.0',
                    style: texttextstyle.copyWith(
                      fontSize: 18,
                      fontWeight: semibold
                    ),  
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6,),
                  Text('\$58,67', 
                  style: texttextstyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                    color: bg
                  )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}