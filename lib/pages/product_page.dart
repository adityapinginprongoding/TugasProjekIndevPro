// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projektes/theme.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = [
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
  ];

  List fimiliarShoes = [
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget indikator(int index) {
      return Container(
        width: _currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: _currentIndex == index ? bg : Color(0xffC4C4C4),
        ),
      );
    }

    Widget fimiliarShoesChard(String imageUrl) {
      return Container(
        width: 54,
        height: 54,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
            borderRadius: BorderRadiusDirectional.circular(6)),
      );
    }

    Widget header() {
      int index = -1;
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.chevron_left,
                  ),
                ),
                Icon(
                  Icons.shopping_bag,
                  color: hitam,
                )
              ],
            ),
          ),
          CarouselSlider(
            items: images
                .map(
                  (image) => Image.asset(
                    image,
                    width: MediaQuery.of(context).size.width,
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e) {
              index++;
              return indikator(index);
            }).toList(),
          )
        ],
      );
    }

    int index = -1;

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 17),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            color: bg),
        child: Column(
          children: [
            // NOTE: HEADER
            Container(
              margin: EdgeInsets.only(
                  top: defaultMargin,
                  left: defaultMargin,
                  right: defaultMargin),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TERREX URBAN LOW',
                          style: texttextstyle.copyWith(
                              fontSize: 18, fontWeight: semibold),
                        ),
                        Text(
                          'Hiking',
                          style: texttextstyle.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/button_wishlist.png',
                    width: 46,
                  )
                ],
              ),
            ),
            SizedBox(height: 36,),
            // NOTE: PRICE
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                  top: 20, left: defaultMargin, right: defaultMargin),
              decoration: BoxDecoration(
                  color: primaryTextColor,
                  borderRadius: BorderRadius.circular(4)),
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price starts from',
                    style: texttextstyle.copyWith(color: hitam, fontSize: 14),
                  ),
                  Text(
                    '\$123.43',
                    style: texttextstyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  )
                ],
              ),
            ),

            // NOTE: DESCRIPTION
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                  top: defaultMargin,
                  left: defaultMargin,
                  right: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: texttextstyle.copyWith(fontWeight: bold),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Semua manusia pintar tidak ada yang bodoh dan tidak cerdas semuanya cerdas kecuali dia mau benar benar belajar dengan giat baik dan bersungguh-sungguh dalam mencapai tujuan nya insyaallah Allah mempermudah kan semua proses nya',
                    style: texttextstyle.copyWith(fontWeight: light),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),

            // NOTTE: FAMILIAAR SHOES
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Text(
                      'Fimiliar Shoes',
                      style: texttextstyle.copyWith(fontWeight: bold),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: fimiliarShoes.map(
                        (Image) {
                          index++;
                          return Container(
                            margin: EdgeInsets.only(left: index == 0 ? defaultMargin : 0),
                            child: fimiliarShoesChard(Image),
                          );
                        },
                      ).toList(),
                    ),
                  )
                ],
              ),
            ),


            // NOTE: BUTTONS
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(defaultMargin),
              child: Row(
                children: [
                  Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/button_chat.png')
                      )
                    ),
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      height: 54,
                      child: TextButton(
                        onPressed: (){},
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: primaryTextColor,
                        ),
                        child: Text(
                          'Add to chart',
                          style: texttextstyle.copyWith(
                            fontSize: 16,
                            fontWeight: semibold
                          ),
                        ),
                        
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: bg6,
        body: ListView(
          children: [header(), content()],
        ));
  }
}
