import 'package:flutter/material.dart';
import 'package:shop_app_design/core/extensions/context_extensions.dart';
import 'package:shop_app_design/core/extensions/string_extensions.dart';

import '../../core/constants/application_colors.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {Key? key,
      required this.productName,
      required this.imageURL,
      required this.price,
      required this.description})
      : super(key: key);

  final String productName;
  final String imageURL;
  final double price;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundColor: ApplicationColors.cardColor,
                child: Icon(
                  Icons.star_outlined,
                  color: Colors.red,
                ),
              ))
        ]),
        backgroundColor: ApplicationColors.bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                imageURL,
                height: context.height * 0.4,
                fit: BoxFit.cover,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 48),
                decoration: const BoxDecoration(
                  color: ApplicationColors.cardColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36),
                    topRight: Radius.circular(36),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      Text(
                        productName,
                        style: context.textTheme.headline6,
                      ),
                      Text(
                        price.showPrice,
                        style: context.textTheme.headline6,
                      )
                    ]),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Text(description),
                    ),
                    const Text("Colors"),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: context.normalValue),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              _ColorDot(
                                color: Colors.yellow,
                              ),
                              _ColorDot(isSelected: true, color: Colors.red),
                              _ColorDot(color: Colors.green),
                            ],
                          ),
                          Row(children: [
                            SizedBox(
                              height: context.highValue / 2,
                              width: context.highValue / 2,
                              child: Card(
                                child: InkWell(onTap: () {}, child: const Icon(Icons.add)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: context.normalValue),
                              child: Text("1", style: context.textTheme.headline6),
                            ),
                            SizedBox(
                              height: context.highValue / 2,
                              width: context.highValue / 2,
                              child: Card(
                                child: InkWell(onTap: () {}, child: const Icon(Icons.remove)),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: context.normalValue),
                      child: Center(
                        child: SizedBox(
                          height: 48,
                          width: context.width / 2,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Add to Cart"),
                            style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class _ColorDot extends StatelessWidget {
  const _ColorDot({
    Key? key,
    this.isSelected,
    required this.color,
  }) : super(key: key);

  final bool? isSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.lowValue / 2),
      margin: EdgeInsets.symmetric(horizontal: context.lowValue / 2),
      decoration: isSelected ?? false
          ? BoxDecoration(
              border: Border.all(
                color: ApplicationColors.primaryColor,
              ),
              shape: BoxShape.circle,
            )
          : const BoxDecoration(),
      child: CircleAvatar(
        radius: 8,
        backgroundColor: color,
      ),
    );
  }
}
