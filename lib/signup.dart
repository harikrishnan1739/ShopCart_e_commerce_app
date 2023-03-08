import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imageListsignup = [
      "assets/signupsocialmedia/Black Casual Collar Long Sleeve Fabric Colorblock,Slogan Pullovers Embellished Slight Stretch Spring_Fall Men Hoodies & Sweatshirts.jpeg",
      'assets/Sleeve Cute Pocket Cozy Harajuku T-Shirt.jpg',
      'assets/signupsocialmedia/download (3).jpeg',
      'assets/signupsocialmedia/Justnotag Bear Flocked Jacket.jpeg',
      "assets/signupsocialmedia/New 2 Piece Men's Suits Short Sleeve T-shirt & Pants.jpeg",
      'assets/signupsocialmedia/Purchase Gotham Nights High Top Strap Sneakers.jpeg'
    ];
    return Scaffold(
      body: Container(
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
                items: imageListsignup
                    .map(
                      (item) => Container(
                        child: Center(
                          child: Image.asset(
                            item,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    )
                    .toList(),
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
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(54)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0, left: 17),
                        child: Container(
                          height: 55,
                          width: 150,
                          child: const DefaultTextStyle(
                            style: TextStyle(),
                            child: Text(
                              '𝗦𝗶𝗴𝗻 𝘂𝗽',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 33),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Container(
                          height: 35,
                          width: 330,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 81.0),
                            child: Text(
                              "create new acount",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
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
                          padding: EdgeInsets.only(left: 20.0, top: 2),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: 'name',
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 12),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
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
                          padding: EdgeInsets.only(left: 20.0, top: 2),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: 'email',
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 12),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
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
                          padding: EdgeInsets.only(left: 20.0, top: 2),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: 'phone number',
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 12),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
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
                          padding: EdgeInsets.only(left: 20.0, top: 2),
                          child: TextField(
                            obscureText: true,
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
                              padding: EdgeInsets.only(left: 75.0, top: 13),
                              child: Text(
                                "SINGUP",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0, right: 63),
                        child: Container(
                          height: 35,
                          width: 330,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 81.0),
                            child: Text(
                              "Social media Singup",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 24),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 116, top: 4),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/signupsocialmedia/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/signupsocialmedia/facebook-logo-icon-facebook-icon-png-images-icons-and-png-backgrounds-1.png",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/signupsocialmedia/apple-logo-png-dallas-shootings-don-add-are-speech-zones-used-4.png",
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
    );
  }
}
