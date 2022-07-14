import 'package:flutter/material.dart';
import 'package:shop_app_design/extensions/context_extensions.dart';

import '../constants/application_colors.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.star_outlined,
                  color: Colors.yellow,
                ),
              ))
        ]),
        backgroundColor: ApplicationColors.bgColor,
        body: Column(
          children: [
            Image.network(
              "https://picsum.photos/200/300",
              height: context.height * 0.4,
              fit: BoxFit.cover,
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
              decoration: const BoxDecoration(
                color: Colors.white,
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
                      "Product Name",
                      style: context.textTheme.headline6,
                    ),
                    Text(
                      "75 TL",
                      style: context.textTheme.headline6,
                    )
                  ]),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                        "lorem ipsum dolor sit amet, consectetur adip lorem dlorem ipsum dolor sit amet, consectetur adip lorem d"),
                  ),
                  const Text("Colors"),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: context.normalValue),
                    child: Row(
                      children: const [
                        _ColorDot(),
                        _ColorDot(),
                        _ColorDot(),
                      ],
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: 48,
                      width: context.width / 2,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Add to Cart"),
                        style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ));
  }
}

class _ColorDot extends StatelessWidget {
  const _ColorDot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.lowValue / 2),
      margin: EdgeInsets.symmetric(horizontal: context.lowValue / 2),
      decoration: BoxDecoration(
        border: Border.all(
          color: ApplicationColors.primaryColor,
        ),
        shape: BoxShape.circle,
      ),
      child: const CircleAvatar(
        radius: 8,
        backgroundColor: Colors.red,
      ),
    );
  }
}
