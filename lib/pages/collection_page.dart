import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Apps',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
          title: const Text(
            'Female Shoes',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: const <Widget>[
            Icon(
              Icons.home,
              color: Colors.black,
            )
          ],
        ),
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.2,
          mainAxisSpacing: 2.0,
          padding: const EdgeInsets.all(20.0),
          children: const <Widget>[
            ShoesItem(
                image: "assets/sepatuBabyPink.png",
                price: "Rp. 129.900",
                icon: Icons.favorite,
                name: "Sepatu PVN Yujin"),
            ShoesItem(
                image: "assets/sepatuHijau.png",
                price: "Rp. 250.000",
                icon: Icons.favorite,
                name: "Sepatu PVN Dohyun"),
            ShoesItem(
                image: "assets/sepatuCream.png",
                price: "Rp. 499.000",
                icon: Icons.favorite,
                name: "Sepatu AIRWALK"),
            ShoesItem(
                image: "assets/sepatu6.png",
                price: "Rp. 350.000",
                icon: Icons.favorite,
                name: "Sepatu PVN Yellow"),
            ShoesItem(
              image: "assets/sepatuPutih.png",
              price: "Rp. 229.000",
              icon: Icons.favorite,
              name: "Sepatu PVN Soobin",
            ),
            ShoesItem(
              image: "assets/sepatuUngu.png",
              price: "Rp. 159.000",
              icon: Icons.favorite,
              name: "Sepatu PVN Nayeon",
            )
          ],
        ),
      ),
    );
  }
}

class ShoesItem extends StatelessWidget {
  final String image;
  final String price;
  final IconData icon;
  final String name;

  const ShoesItem({
    Key? key,
    required this.image,
    required this.price,
    required this.icon,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      width: double.infinity,
      height: double.infinity,
      color: Colors.deepPurple[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(
              width: double.infinity,
              image: AssetImage(image),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(price,
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Colors.black,
                  )),
              Icon(
                icon,
                size: 20,
              ),
            ],
          ),
          Text(name,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.montserrat(
                fontSize: 12.0,
                letterSpacing: 2,
                wordSpacing: 3,
                color: Colors.white,
              )),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
