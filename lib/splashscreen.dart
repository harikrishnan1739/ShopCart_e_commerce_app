import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 100.0),
          //=-----------------Image---Container----------start-----
          child: Padding(
            padding: const EdgeInsets.only(left: 110.0),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
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
                  width: 75,
                  height: 70,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 19.0),
                    child: Text(
                      "Shoper",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 21),
                    ),
                  ),
                ),
                //=-----------------ShoperText---Container----------End-----
                //==================================================================
                //=-----------------CartText---Container----------start-----
                Container(
                  width: 75,
                  height: 70,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 19.0),
                    child: Text(
                      "Cart",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 21),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //=-----------------CartText---Container----------End-----
        ),
      ),
    );
  }
}
