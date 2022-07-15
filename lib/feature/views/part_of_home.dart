part of 'home_page.dart';

class _TitleAndSeeAll extends StatelessWidget {
  const _TitleAndSeeAll({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: context.normalValue),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: context.textTheme.headline5),
          TextButton(
            onPressed: onPressed,
            child: const Text("See All"),
          ),
        ],
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required this.categoryName,
    required this.imageURL,
  }) : super(key: key);

  final String categoryName;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.lowValue / 2),
      child: SizedBox(
        height: 85,
        width: 75,
        child: Card(
          color: ApplicationColors.cardColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(imageURL, height: 50),
              Text(categoryName),
            ],
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
          hintText: "Search ...",
          prefixIcon: Padding(
            padding: EdgeInsets.all(context.lowValue),
            child: const Icon(
              Icons.search,
            ),
          ),
          // suffixIcon: Padding(
          //   padding: EdgeInsets.all(context.lowValue),
          //   child: SizedBox(
          //     height: 48,
          //     width: 48,
          //     child: ElevatedButton(
          //       onPressed: () {},
          //       child: const Icon(
          //         Icons.filter_alt_rounded,
          //       ),
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
