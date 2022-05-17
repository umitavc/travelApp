import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travelapp/model/place_model.dart';
import 'package:travelapp/renkler/renk.dart';
import 'package:travelapp/screens/detailscreen/detail_screen.dart';
import 'package:travelapp/screens/home/widgets/category_card.dart';
import 'package:travelapp/screens/home/widgets/recommended_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteClor,
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/icons/home.png",
              height: 35,
              width: 35,
              color: kPrimaryClor,
              ),
              Image.asset("assets/icons/calendar.png",
              height: 45,
              width: 45,
              color: Colors.grey,
              ),
              Image.asset("assets/icons/bookmark (2).png",
              height: 45,
              width: 45,
              color: Colors.grey,
              ),
              Image.asset("assets/icons/chat-bubble.png",
              height: 45,
              width: 45,
              color: Colors.grey,
              ),
              
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //app bar
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage("assets/images/insan.png"),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    RichText(
                        text: const TextSpan(
                            text: "Merhaba",
                            style: TextStyle(color: kBlackClor),
                            children: [
                          TextSpan(
                              text: " Kenan",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ))
                        ]))
                  ],
                ),
          
                // search section
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Yeni Keşiflere Hazır mısın ?",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    //color: kBlackClor
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
          
                Material(
                  //arama kısmında ilk önce material yoktu olmadığı için arama kısmının çercevesi yoktu
                  //material ile çerceve ekledik
                  borderRadius: BorderRadius.circular(100), //ovellik veriyor
                  elevation: 5, //arama kısmınını daha belirgin yapıyor
                  child: Container(
                    decoration: BoxDecoration(
                        color: kWhiteClor,
                        borderRadius: BorderRadius.circular(
                            100)), // burdaki border radius köşeler gölge gibi oluyor onu düzenliyor.
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Row(
                        //row conteiner içine aldık
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: "Arama",
                                prefixIcon: Icon(Icons.search),
                                enabledBorder: InputBorder
                                    .none, //textfield altında bi cizgi va onu siliyor
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          const CircleAvatar(
                            radius: 22,
                            backgroundColor:
                                kPrimaryClor, // arama kısmının yanındaki A-Z
                            child: Icon(
                              Icons.sort_by_alpha_sharp,
                              color: kWhiteClor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                //kategori
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      "Kategori",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        //color: kBlackClor
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          CategoryCard(
                            press: () {},
                            image: "assets/images/mountain.jpg",
                            title: "Dağ",
                          ),
                          CategoryCard(
                            press: () {},
                            image: "assets/images/forests.jpeg",
                            title: "Orman",
                          ),
                          CategoryCard(
                            press: () {},
                            image: "assets/images/sea.webp",
                            title: "Deniz",
                          ),
                          CategoryCard(
                            press: () {},
                            image: "assets/images/deserts.jpeg",
                            title: "Çöl",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
          
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      "Önerilen",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        //color: kBlackClor
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    height: 350,
                    child: ListView.builder(
                        itemCount: places
                            .length, //place_model sınıfında oluşturduğumuz metod boyu kadar sırala
                        scrollDirection:
                            Axis.horizontal, // yatay olarak sıralıyor.
          
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 5,right: 15),
                            child: Row(
                              children: [
                                RecommendedCard(
                                  placeInfo: places[index],
                                  press: () {
                                    //kard ekledik bunun ile ekledğimiz kartların sayfasına gidiyoruz
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(placeInfo: places[index],)));
                                  },
          
                                )
                              ],
                            ),
                          );
                        }))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

