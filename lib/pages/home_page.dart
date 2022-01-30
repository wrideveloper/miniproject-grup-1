import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrigroup1/pages/collection_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //create list category
  Widget category(String logo, String name) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Color(0xfff6f6f6),
          ),
          height: 60,
          width: 60,
          child: Image.asset(
            logo,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          name,
          style: GoogleFonts.lato(),
        ),
      ],
    );
  }

  //create list selected item
  List<IconData> iconLove = [
    Icons.favorite_outline,
    Icons.favorite_outline,
    Icons.favorite_outline,
    Icons.favorite_outline,
  ];
  Widget selected(
    int index,
    String image,
    String brandLogo,
    String price,
    String name,
    int widgetIndex,
  ) {
    return Column(
      children: [
        SizedBox(height: (index == 2) ? 24 : 0),
        Stack(
          children: [
            Container(
              height: 176,
              width: 168,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xfff6f6f6),
              ),
              child: Image.asset(image),
            ),
            Positioned(
              left: 112,
              top: 134,
              child: Image.asset(
                brandLogo,
                color: Colors.grey,
                height: 42,
                width: 42,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (iconLove[widgetIndex] == Icons.favorite_outline) {
                      iconLove[widgetIndex] = Icons.favorite_outlined;
                    } else {
                      iconLove[widgetIndex] = Icons.favorite_outline;
                    }
                  });
                },
                child: Icon(iconLove[widgetIndex]),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 18),
          child: Text(
            name,
            style: GoogleFonts.lato(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              //Serach Box
              Container(
                padding: const EdgeInsets.only(left: 10),
                width: 340,
                height: 42,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    Text(
                      ' What are you looking for?',
                      style: GoogleFonts.lato(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),

              //Show Box
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 24),
                    height: 180,
                    width: 340,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff181914),
                          Color(0xff3d3d3c),
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 18,
                        ),
                        Text(
                          'Nike. Just Do It',
                          style: GoogleFonts.lato(
                              color: Colors.white, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'A HERITAGE\nOF SPEED',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 160,
                    child: Image.asset(
                      "assets/Jogging.png",
                      fit: BoxFit.fill,
                      height: 200,
                      width: 200,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 32),

              //Category Selection
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CategoryPage()),
                      );
                    },
                    child: category('assets/NikiLogo.png', 'Nike'),
                  ),
                  category('assets/ReebokLogo.png', 'Reebok'),
                  category('assets/AdidasLogo.png', 'Adidas'),
                  category('assets/PumaLogo.png', 'Puma'),
                ],
              ),
              const SizedBox(height: 24),

              //Selected for you
              Container(
                padding: const EdgeInsets.only(left: 32),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Selected for you',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              GridView.count(
                childAspectRatio: 1 / 1.5,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  selected(
                    1,
                    'assets/nike_shoes/nike-air-force.png',
                    'assets/NikiLogo.png',
                    'Rp 1,379,000',
                    'Nike Air Force',
                    0,
                  ),
                  selected(
                    2,
                    'assets/nike_shoes/nike-dunk.png',
                    'assets/NikiLogo.png',
                    'Rp 1,799,000',
                    'Nike Dunk',
                    1,
                  ),
                  selected(
                    1,
                    'assets/nike_shoes/nike-waffle.png',
                    'assets/NikiLogo.png',
                    'Rp 1,649,000',
                    'Nike Waffle',
                    2,
                  ),
                  selected(
                    2,
                    'assets/nike_shoes/nike-air-monarch.png',
                    'assets/NikiLogo.png',
                    'Rp 749,000',
                    'Nike Air Monarch',
                    3,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.home),
            Icon(Icons.notifications_outlined),
            Icon(Icons.shopping_cart_outlined),
            Icon(Icons.person_outlined)
          ],
        ),
      ),
    );
  }
}
