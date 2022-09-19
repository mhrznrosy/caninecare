import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Container(

        margin: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s '
              'standard dummy text ever since the 1500s, when an unknown printer took a \'galley of type and scrambled it to make a type specimen book.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),


    );
  }
}
