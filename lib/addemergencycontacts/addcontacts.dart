import 'package:flutter/material.dart';
import 'package:safetyapp/main.dart';
import 'package:safetyapp/utilis/constants.dart';

class NewContact extends StatelessWidget {
  const NewContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: <Widget>[
                Container(
                  height: size.height * .25,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image:
                          AssetImage('assets/addcontactscreen/Rectangle.png'),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 60),
                  child: Text(
                    'Hi Jhon',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Georgia Regular font'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 85),
                  child: Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                      color: Colorlib.kPink_text,
                      fontFamily: 'Georgia Regular font',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 230.0, top: 10),
                  child: Image(
                    image: AssetImage('assets/addcontactscreen/call.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, top: 150),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colorlib.kGreen_button, //background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.only(
                          left: 28, right: 28, top: 13, bottom: 13),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Contacts',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Georgia Regular font',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 170.0, top: 150),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colorlib.kLightPink_button, //background color

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 13, bottom: 13),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Add New',
                      style: TextStyle(
                          fontFamily: 'Georgia Regular font',
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 20),
                  child: Text(
                    'Add new Contacts',
                    style: TextStyle(
                        color: Colorlib.kPink_text,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        fontFamily: 'Georgia Regular font'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 5,
                        offset: Offset(0, 2))
                  ]),
              height: size.height * .64,
              width: size.width * .95,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 22, top: 20),
                    child: Text(
                      'Name',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Georgia Regular font',
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(0, 1))
                        ],
                      ),
                      height: 60,
                      width: size.width * .90,
                      child: const TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'John',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 20, right: 20),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 22, top: 20),
                    child: Text(
                      'Phone Number',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Georgia Regular font',
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(0, 1))
                        ],
                      ),
                      height: 60,
                      width: size.width * .90,
                      child: const TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: '+123456789',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 20, right: 20),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colorlib.kGreen_button, //background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.only(
                              left: 45, right: 45, top: 13, bottom: 13),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Save',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Georgia Regular font',
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
