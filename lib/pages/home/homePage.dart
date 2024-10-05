import 'package:flutter/material.dart';
import 'package:projektes/pages/widgets/produk_card.dart';
import 'package:projektes/pages/widgets/produk_tile.dart';
import 'package:projektes/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget header() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hallo Erik',
                  style: texttextstyle.copyWith(
                      fontSize: 24, fontWeight: semibold, color: bg),
                ),
                Text(
                  'erikadityairvansya@gmail.com',
                  style: texttextstyle.copyWith(
                      fontSize: 16, color: isifrom, fontWeight: medium),
                )
              ],
            ),
          ),
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profile.png',
                  ),
                )),
          )
        ],
      ),
    );
  }

  Widget categories() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: bg,
                  border: Border.all(color: isifrom)),
              child: Text(
                'all shoes',
                style: texttextstyle.copyWith(
                    fontSize: 13, fontWeight: medium, color: putih),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparan,
                  border: Border.all(color: isifrom)),
              child: Text(
                'Running',
                style: texttextstyle.copyWith(
                    fontSize: 13, fontWeight: medium, color: isifrom),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparan,
                  border: Border.all(color: isifrom)),
              child: Text(
                'Training',
                style: texttextstyle.copyWith(
                    fontSize: 13, fontWeight: medium, color: isifrom),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparan,
                  border: Border.all(color: isifrom)),
              child: Text(
                'Basket',
                style: texttextstyle.copyWith(
                    fontSize: 13, fontWeight: medium, color: isifrom),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparan,
                  border: Border.all(color: isifrom)),
              child: Text(
                'Hiking',
                style: texttextstyle.copyWith(
                    fontSize: 13, fontWeight: medium, color: isifrom),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget populerProductTile() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Text(
        'Popular Product',
        style: texttextstyle.copyWith(fontSize: 22, fontWeight: semibold),
      ),
    );
  }

  Widget populerProduts() {
    return Container(
      margin: EdgeInsets.only(top: 14),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Row(
                children: [
                  ProdukCard(),
                  ProdukCard(),
                  ProdukCard(),
                ],
              )
            ],
          )),
    );
  }

  Widget newArivalTile() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Text(
        'New Arival',
        style: texttextstyle.copyWith(fontSize: 22, fontWeight: semibold),
      ),
    );
  }

  Widget newArivalLs() {
    return Container(
      margin: EdgeInsets.only(
        top: 14
      ),
      child: Column(
        children: [
          ProdukTile(),
          ProdukTile(),
          ProdukTile(),
          ProdukTile()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        categories(),
        populerProductTile(),
        populerProduts(),
        newArivalTile(),
        newArivalLs()
      ],
    );
  }
}
