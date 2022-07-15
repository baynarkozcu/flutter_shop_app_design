import 'package:flutter/material.dart';
import 'package:shop_app_design/core/extensions/context_extensions.dart';

import '../../core/components/product_cart.dart';
import '../../core/constants/application_colors.dart';
import '../models/product_model.dart';
import '../services/product_service.dart';

part 'part_of_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ProductService _productService;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _productService = ProductService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Baynarkozcu Shop"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu_rounded),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: ApplicationColors.bgColor,
      body: Padding(
        padding: EdgeInsets.all(context.normalValue),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Explore", style: context.textTheme.headline4),
              Text("best Outfits for you", style: context.textTheme.bodyText1),
              Padding(
                padding: EdgeInsets.only(top: context.normalValue),
                child: const _SearchForm(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: context.normalValue),
                child: SizedBox(
                  height: 100,
                  child: FutureBuilder(
                    future: _productService.fetchNewArrivalProductList(),
                    builder: (context, AsyncSnapshot<List<Product>?> snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                          itemCount: snapshot.data?.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return const _CategoryCard();
                          },
                        );
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    },
                  ),
                ),
              ),
              _TitleAndSeeAll(
                title: "New Arrival",
                onPressed: () {},
              ),
              SizedBox(
                height: 225,
                child: FutureBuilder(
                  future: _productService.fetchNewArrivalProductList(),
                  builder: (context, AsyncSnapshot<List<Product>?> snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data?.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          var product = snapshot.data?[index];
                          return ProductCard(
                            productName: product?.productName ?? "",
                            price: product?.price ?? 0,
                            imageURL: product?.image ?? "https://picsum.photos/200/300",
                          );
                        },
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
              _TitleAndSeeAll(
                title: "Populer",
                onPressed: () {},
              ),
              SizedBox(
                height: 225,
                child: FutureBuilder(
                  future: _productService.fetchPopulerProductList(),
                  builder: (context, AsyncSnapshot<List<Product>?> snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data?.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          var product = snapshot.data?[index];
                          return ProductCard(
                            productName: product?.productName ?? "",
                            price: product?.price ?? 0,
                            imageURL: product?.image ?? "https://picsum.photos/200/300",
                          );
                        },
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
