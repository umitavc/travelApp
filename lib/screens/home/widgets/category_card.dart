import 'package:flutter/material.dart';
import 'package:travelapp/renkler/renk.dart';

class CategoryCard extends StatelessWidget {
  final String title, image;
  final VoidCallback press;
  const CategoryCard({
    Key? key, required this.title, required this.image, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: press,
        child: Material(
          borderRadius: BorderRadius.circular(100),
          elevation: 5,
          child: Container(
            height: 55,
            
            decoration: BoxDecoration(color: kWhiteClor,borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(image) ,
                  ),
                const  SizedBox(width: 5,),
                  Text(title,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}