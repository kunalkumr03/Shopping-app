import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_flutter/categories.dart';
import 'package:shop_app_flutter/global_variables.dart';
import 'package:shop_app_flutter/product_card.dart';
import 'package:shop_app_flutter/product_details_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  int currentIndex = 0;

  final List<String> filters = const [
    'All',
    'Trending',
    'New arrivals',
    'Top picks',
    'Men',
    'Women',
    'Boy',
    'Girl',
  ];

  final List<Widget> carouselItems = [
    Image.asset('assets/images/shirts_41.png', fit: BoxFit.cover),
    Image.asset('assets/images/shirts_43.png', fit: BoxFit.cover),
    Image.asset('assets/images/shirts_42.png', fit: BoxFit.cover),
    Image.asset('assets/images/shirts_44.png', fit: BoxFit.cover),
  ];

  final List<Map<String, String>> categories = [
    {'image': 'assets/images/shirts_48.png', 'title': 'Fashion'},
    {'image': 'assets/images/shirts_47.png', 'title': 'Beauty'},
    {'image': 'assets/images/shirts_46.png', 'title': 'Jewelry'},
    {'image': 'assets/images/shirts_50.png', 'title': 'Electronic'},
    {'image': 'assets/images/shirts_49.png', 'title': 'health'},
  ];

  late String selectedFilter;
  @override
  void initState() {
    super.initState();
    selectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(42),
      ),
    );
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    'assets/images/shirts_45.png',
                    height: 110,
                    width: 110,
                  ),
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: border,
                      enabledBorder: border,
                      focusedBorder: border,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Categories()),
                            );
                          },
                          child: Text(
                            'View All',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ))
                    ],
                  ),
                  SizedBox(height: 12),
                  SizedBox(
                    height: 110,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        final category = categories[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      spreadRadius: 1,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    category['image']!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                category['title']!,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Column(
              children: [
                CarouselSlider(
                  items: carouselItems,
                  options: CarouselOptions(
                    height: 190,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    viewportFraction: 0.9,
                    aspectRatio: 16 / 9,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                AnimatedSmoothIndicator(
                  activeIndex: currentIndex,
                  count: carouselItems.length,
                  effect: WormEffect(
                    activeDotColor: Colors.black,
                    dotHeight: 8,
                    dotWidth: 8,
                  ),
                  onDotClicked: (index) {},
                ),
              ],
            ),
            SizedBox(height: 30),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/shirts_15.png',
                        width: 395,
                        height: 380,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/shirts_14.png',
                              width: 115,
                              height: 145,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                          width: 8,
                        ),
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/shirts_11.png',
                              width: 115,
                              height: 145,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                itemCount: filters.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final filter = filters[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            selectedFilter = filter;
                          },
                        );
                      },
                      child: Chip(
                        backgroundColor: selectedFilter == filter
                            ? Theme.of(context).colorScheme.primary
                            : const Color.fromARGB(255, 221, 222, 227),
                        side: BorderSide(
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        label: Text(filter),
                        labelStyle: TextStyle(
                          color: selectedFilter == filter
                              ? Colors.white
                              : Colors.black,
                          fontSize: 16,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              itemCount: products.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final product = products[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return ProductDetailsPage(product: product);
                      }),
                    );
                  },
                  child: ProductCard(
                    title: product['title'] as String,
                    price: product['price'] as double,
                    image: product['imageUrl'] as String,
                    backgroundColor: index.isEven
                        ? const Color.fromRGBO(216, 240, 253, 1)
                        : const Color.fromARGB(255, 255, 255, 255),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
