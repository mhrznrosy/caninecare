import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../configuration.dart';
import '../widgets/pet_categories.dart';
import '../widgets/pet_category_display.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

late final User loggedinUser;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final firestore = FirebaseFirestore.instance; //
  FirebaseAuth auth = FirebaseAuth.instance;

  final _auth = FirebaseAuth.instance;

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool showDrawer = false;

  @override
  late User loggedinUser;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onTap: () {
            if (showDrawer) {
              setState(() {
                xOffset = 0;
                yOffset = 0;
                scaleFactor = 1;
                showDrawer = false;
              });
            }
          },
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // IconButton(
                      //     icon: showDrawer
                      //         ? Icon(CupertinoIcons.chevron_left)
                      //         : Icon(Icons.menu),
                      //     onPressed: () {
                      //       setState(() {
                      //         if (!showDrawer) {
                      //           xOffset = size.width * 0.6; //280;
                      //           yOffset = size.height / 5;
                      //           scaleFactor = 0.6;
                      //           showDrawer = true;
                      //         } else {
                      //           xOffset = 0;
                      //           yOffset = 0;
                      //           scaleFactor = 1;
                      //           showDrawer = false;
                      //         }
                      //       });
                      //     }),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'hello',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w300,
                              color: primaryGreen,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('images/profile.jpg'),
                      ),
                    ],
                  ),
                ),
                // Text(
                //   getUserdata().data()['name'],
                //   style: TextStyle(
                //     fontSize: 25,
                //     fontWeight: FontWeight.w300,
                //     color: primaryGreen,
                //   ),
                // ),
                PetCategoryDisplay(),
                PetCategories(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
