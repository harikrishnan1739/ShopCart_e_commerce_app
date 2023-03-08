import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifiCationPage extends StatelessWidget {
  const VerifiCationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              width: 500,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                image: const DecorationImage(
                  image: AssetImage("assets/verificaton/Enter OTP.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 350,
              width: 412,
              bottom: 0,
              right: 0,
              child: Container(
                height: 550,
                width: 412,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(54)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0, left: 17),
                        child: Container(
                          height: 55,
                          width: 250,
                          child: const DefaultTextStyle(
                            style: TextStyle(),
                            child: Padding(
                              padding: EdgeInsets.only(left: 27.0),
                              child: Text(
                                'OTP verifiaction',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 65.0, left: 17),
                        child: Container(
                          height: 55,
                          width: 350,
                          child: const DefaultTextStyle(
                            style: TextStyle(),
                            child: Padding(
                              padding: EdgeInsets.only(left: 27.0),
                              child: Text(
                                'Enter 6 digit number',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 29),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 350,
                        height: 70,
                        child: PinCodeTextField(
                          appContext: context,
                          length: 6,
                          cursorHeight: 19,
                          enableActiveFill: true,
                          textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                          //--------------
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            fieldWidth: 50,
                            inactiveColor: Colors.black12,
                            selectedColor: Colors.blueGrey,
                            activeFillColor: Colors.black,
                            selectedFillColor: Colors.white,
                            inactiveFillColor: Colors.grey.shade100,
                            borderWidth: 1,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          onChanged: (value) => {
                            print("value"),
                          },
                        ),
                      ),
                      // SizedBox(height: 15,),
                      GestureDetector(
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(0xFFE0E0E0),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: IconButton(
                            onPressed: () {
                              print("cliked");
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 50,
                              color: Colors.black38,
                            ),
                          ),
                        ),
                      )
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
