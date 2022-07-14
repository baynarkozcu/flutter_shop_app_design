import 'package:flutter/material.dart';
import 'package:shop_app_design/extensions/context_extensions.dart';

import '../constants/application_colors.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      _CategoryCard(),
                      _CategoryCard(),
                      _CategoryCard(),
                      _CategoryCard(),
                      _CategoryCard(),
                      _CategoryCard(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: context.normalValue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("New Arrival", style: context.textTheme.headline5),
                    Text(
                      "New Arrival",
                      style: context.textTheme.bodyText2?.copyWith(color: Colors.blue.shade600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 225,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    _ProductCard(),
                    _ProductCard(),
                    _ProductCard(),
                    _ProductCard(),
                    _ProductCard(),
                    _ProductCard(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: context.normalValue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Populer", style: context.textTheme.headline5),
                    Text(
                      "New Arrival",
                      style: context.textTheme.bodyText2?.copyWith(color: Colors.blue.shade600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 225,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    _ProductCard(),
                    _ProductCard(),
                    _ProductCard(),
                    _ProductCard(),
                    _ProductCard(),
                    _ProductCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  const _ProductCard({
    Key? key,
  }) : super(key: key);

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
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
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
                "Long Sleeve Shirts",
                style: context.textTheme.headline6,
              )),
              const Text("25 TL")
            ],
          )
        ],
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.lowValue / 2),
      child: SizedBox(
        height: 85,
        width: 75,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Icon(Icons.ac_unit_outlined, size: 50), Text("Dress")],
          ),
        ),
      ),
    );
  }
}

class _SearchForm extends StatelessWidget {
  const _SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        style: context.textTheme.bodyText1,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.all(context.lowValue),
            child: const Icon(
              Icons.search,
            ),
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.all(context.lowValue),
            child: SizedBox(
              height: 48,
              width: 48,
              child: ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.filter_alt_rounded,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
