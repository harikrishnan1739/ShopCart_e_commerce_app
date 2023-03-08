import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<String> ImageListsignin = [
      "assets/Accessories.jpeg",
      'assets/Addicted to Black.jpeg',
      'assets/Best New Gear_ July 2020 I CARRYOLOGY.jpeg',
      'assets/Giorgio Armani’s 10 Best Fashion Moments On Film.jpeg',
      'assets/Men’s Luxury Fashion _ Burberry® Official.jpeg'
    ];
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                height: 400,
                width: double.infinity,
                child: CarouselSlider(
                  options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 2,
                    viewportFraction: 1,
                    height: 900,
                  ),
                  items: ImageListsignin.map(
                    (item) => Container(
                      child: Center(
                        child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ).toList(),
                ),
              ),
              Positioned(
                top: 310,
                width: 412,
                bottom: 0,
                right: 0,
                child: Container(
                  height: 550,
                  width: 412,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(54)),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0, left: 20),
                          child: Container(
                            height: 100,
                            width: 150,
                            child: const DefaultTextStyle(
                              style: TextStyle(),
                              child: Text(
                                '𝗦𝗶𝗴𝗻 𝗶𝗻',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 33),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 360,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 8,
                                offset: Offset(4, 4),
                              ),
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 2,
                                blurRadius: 8,
                                offset: Offset(-4, -4),
                              ),
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 11),
                            child: TextField(
                              obscureText: false,
                              autocorrect: false,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: 'Enter email or phone number',
                                  hintStyle: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Container(
                            height: 60,
                            width: 360,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                  offset: Offset(4, 4),
                                ),
                                BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                  offset: Offset(-4, -4),
                                ),
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 11),
                              child: TextField(
                                obscureText: true,
                                enableSuggestions: false,
                                autocorrect: false,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    hintText: 'password',
                                    hintStyle: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              print("ok");
                            },
                            child: Container(
                              height: 50,
                              width: 230,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 1,
                                    blurRadius: 8,
                                    offset: Offset(4, 4),
                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 2,
                                    blurRadius: 8,
                                    offset: Offset(-4, -4),
                                  ),
                                ],
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 82.0, top: 14),
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(const SignUpPage(),
                                  transition: Transition.fade);
                            },
                            child: Container(
                              height: 28,
                              width: 230,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 46.0),
                                child: Text(
                                  "create new acount",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                      fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 28,
                          width: 330,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 81.0),
                            child: Text(
                              "25% off for new users",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 155.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/2331966.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    //=-----------------ShoperText---Container----------start-----
                                    Container(
                                      width: 36,
                                      height: 40,
                                      child: const Padding(
                                        padding: EdgeInsets.only(top: 12.0),
                                        child: Text(
                                          "Shoper",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10),
                                        ),
                                      ),
                                    ),
                                    //=-----------------ShoperText---Container----------End-----
                                    //==================================================================
                                    //=-----------------CartText---Container----------start-----
                                    Container(
                                      width: 75,
                                      height: 40,
                                      child: const Padding(
                                        padding: EdgeInsets.only(top: 12.0),
                                        child: Text(
                                          "Cart",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 133),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/socialmedia/facebook-logo-icon-facebook-icon-png-images-icons-and-png-backgrounds-1.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/socialmedia/pinterest-logo-p-png-0.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/socialmedia/images.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/socialmedia/twitter-bird-symbols-png-logo-0.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
