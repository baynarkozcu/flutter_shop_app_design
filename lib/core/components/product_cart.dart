import 'package:flutter/material.dart';
import 'package:shop_app_design/core/extensions/context_extensions.dart';

import '../../feature/views/detail_page.dart';
import '../constants/application_colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.productName,
    required this.price,
    required this.imageURL,
  }) : super(key: key);

  final String productName;
  final String imageURL;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: context.normalValue),
      width: context.width * 0.4,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const DetailPage(),
              ));
            },
            child: Container(
              padding: EdgeInsets.only(bottom: context.lowValue),
              decoration: const BoxDecoration(
                color: ApplicationColors.bgColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(imageURL)),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: Text(
                productName,
                style: context.textTheme.headline6,
              )),
              Text(price.toString())
            ],
          )
        ],
      ),
    );
  }
}
