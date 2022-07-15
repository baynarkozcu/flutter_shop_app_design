class Category {
  final String icon, title;

  Category({required this.icon, required this.title});

  static List<Category> demoCategories = [
    Category(
      icon: "https://cdn-icons-png.flaticon.com/512/1785/1785375.png",
      title: "Dress",
    ),
    Category(
      icon: "https://cdn-icons-png.flaticon.com/512/2503/2503380.png",
      title: "Shirt",
    ),
    Category(
      icon:
          "https://cdn-icons-png.flaticon.com/512/2933/2933245.png",
      title: "Computer",
    ),
    Category(
      icon:
          "https://cdn-icons-png.flaticon.com/512/3774/3774155.png",
      title: "Jewellery",
    ),
    Category(
      icon:
          "https://cdn-icons-png.flaticon.com/512/2333/2333041.png",
      title: "Bag",
    ),
  ];
}
