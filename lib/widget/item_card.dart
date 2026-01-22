import 'package:flutter/material.dart';
import 'package:uidesign06/core/color.dart';
import 'package:uidesign06/core/text_style.dart';
import 'package:uidesign06/data/items.dart';
import 'package:uidesign06/widget/circurl_btn.dart';
import 'package:uidesign06/widget/round_btn.dart';

class ItemCard extends StatelessWidget {
  final Cakes cake;
  const ItemCard({Key? key, required this.cake}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      width: 250.0,
      padding: EdgeInsets.only(bottom: 20.0, left: 10.0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 250.0,
              width: 100.0,
              padding: EdgeInsets.only(left: 21.0, right: 10.0, bottom: 10.0),
              decoration: BoxDecoration(
                color: pink,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 17),
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cake.name,
                    maxLines: 1,
                    style: txtItemCard,
                  ),
                  SizedBox(height: 19.0),
                  Text(
                    'Flavor: ${cake.flavourl}',
                    maxLines: 1,
                    style: txtItemCard.copyWith(
                      fontSize: 14,
                      color: grayColor,
               
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '\$',
                              style: txtHeading.copyWith(fontSize: 15.0),
                            ),
                            TextSpan(
                              text: cake.price,
                              style: txtHeading.copyWith(fontSize: 24.0),
                            ),
                          ],
                        ),
                      ),
                      roundButton(),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              height: 220.0,
              width: 220.0,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: pink02,
              ),
              child: Image.asset(
                cake.image,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: CircleButton(
              size: 30.0,
              iconColor: mainColor,
              onTap: () {},
              image: 'heart_full.svg',
            ),
          )
        ],
      ),
    );
  }
}
