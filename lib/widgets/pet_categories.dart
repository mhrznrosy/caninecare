import 'package:canine_care/pages/contact.dart';
import 'package:canine_care/screens/blog.dart';
import 'package:canine_care/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../configuration.dart';

import '../screens/donation.dart';

class PetCategories extends StatefulWidget {
  @override
  _PetCategoriesState createState() => _PetCategoriesState();
}

class _PetCategoriesState extends State<PetCategories> {
  int selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = index;

                      switch (selectedCategory) {
                        case 0:
                          Navigator.push(context, new MaterialPageRoute(
                              builder: (context) => new HomeScreen())
                          );
                          break;
                        case 1:
                          Navigator.push(context, new MaterialPageRoute(
                              builder: (context) => new Donation())
                          );
                          break;
                        case 2:
                          Navigator.push(context, new MaterialPageRoute(
                              builder: (context) => new Blog())
                          );
                          break;
                        case 3:
                          Navigator.push(context, new MaterialPageRoute(
                              builder: (context) => new Contact())
                          );
                          break;
                      }
                    });
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.symmetric(horizontal: 18),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: customShadow,
                      border: selectedCategory == index
                          ? Border.all(
                              color: secondaryGreen,
                              width: 2,
                            )
                          : null,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      categories[index]['iconPath'],
                      scale: 1.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  categories[index]['name'],
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
