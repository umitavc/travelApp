import 'package:flutter/material.dart';
import 'package:travelapp/renkler/renk.dart';
import 'package:travelapp/screens/home/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/welcome.jpeg", //giriş resmini ekledim
            height: double.infinity, //eklediğim resmin boyutlarını ayarladım.
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Center(
              //yazıyı ortalama için
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  //column oluşturduk içine text yazdık
                  mainAxisAlignment: MainAxisAlignment
                      .center, // yazıları ekranın ortasına almak için kullandık.
                  children: [
                    Spacer(),
                    const Text(
                      " Evine Hoş Geldin",
                      style: TextStyle(
                          fontSize: 30,
                          color: kWhiteClor,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height:
                          15, //başlık ile açıklma yasızı arasındaki boşluk ayarlama.
                    ),
                    const Text(
                      "Seyahatiniz için mükemmel konaklama imkanını bulup, evdeymişsiniz gibi karşılanacaksınız! Nitekim, sitenin sloganı 'Evine hoş geldin' dir.",
                      textAlign: TextAlign
                          .center, // açıklama yazsını ortalama yapıyor.
                      style: TextStyle(
                          color: kWhiteClor, fontSize: 16, height: 1.6,fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 15),

                    // login buttons

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>  const HomeScreen()));
                      },
                      child: Container(
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: kWhiteClor,
                            borderRadius: BorderRadius.circular(100)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/google.png",
                              height: 30,
                              width: 30,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                           const Text("Google ile giriş yapınız",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                    ),
                   const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                       onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>  const HomeScreen()));
                      },
                      child: Container(
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: kWhiteClor,
                            borderRadius: BorderRadius.circular(100)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/facebook.png",
                              height: 30,
                              width: 30,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                           const Text("Facebook ile giriş yapınız",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                            height: MediaQuery.of(context).size.height*0.06,
                          ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
