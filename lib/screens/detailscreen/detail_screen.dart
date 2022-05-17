import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travelapp/model/place_model.dart';
import 'package:travelapp/renkler/renk.dart';

class DetailScreen extends StatefulWidget {
  final PlaceInfo placeInfo;
  const DetailScreen({Key? key, required this.placeInfo}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteClor,
      body: Stack(
        children: [
          Image.asset(
            widget.placeInfo.image,
            width: double.infinity,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.5,
          ),
          SafeArea(
            child: Column(
              children: [
                //app bar buttons
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);//geri tuşu
                        },
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(100),
                          child: Padding(
                            //geri buttonunu altındaki beyaz kısım
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration:  const BoxDecoration(
                                  color: kPrimaryClor, shape: BoxShape.circle),
                              child:  const Center(
                                child: Icon(
                                  Icons.arrow_back,
                                  color: kWhiteClor,
                                  size: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(100),
                        child: Padding(
                          //geri buttonunu altındaki beyaz kısım
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration:const  BoxDecoration(
                                color: kWhiteClor, shape: BoxShape.circle),
                            child:  const Center(
                              child: Icon(
                                Icons.bookmark_rounded,
                                color: kPrimaryClor,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Expanded(
                  child: Container(
                    // height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: kWhiteClor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.placeInfo.name,
                              style: const TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                //color: kBlackClor
                              ),
                            ),
                            //location istanbul
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.location_on,
                                    color: kPrimaryClor),
                                Text(
                                  widget.placeInfo.location,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              "Seyahat Hakkında",
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                //color: kBlackClor
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.placeInfo.desc,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                            const Divider(
                              height: 10,
                              color: Colors.black,
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                               const Text(
                                  "Süre  ",
                                  style:  TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Expanded(
                                  child: Text(
                                    "${widget.placeInfo.days} Gün",
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                              const Text(
                                  "Süre  ",
                                  style:  TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Expanded(
                                  child: Text(
                                    "${widget.placeInfo.distance} Kilometre",
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                           const SizedBox(height: 20),
                            MaterialButton(
                              color: kPrimaryClor,
                              minWidth: double.infinity,
                              height: 55,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              onPressed: () {},
                              child: const Text(
                                "Gezenti",
                                style: TextStyle(
                                  color: kWhiteClor,
                                    fontSize: 18,
                                     fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
