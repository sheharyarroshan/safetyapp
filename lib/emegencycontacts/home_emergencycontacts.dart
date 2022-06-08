import 'package:flutter/material.dart';
import 'package:safetyapp/main.dart';
import 'package:safetyapp/utilis/constants.dart';
import 'package:flutter/widgets.dart';
import '../utilis/widgets.dart';

class Home_EmergencyContacts extends StatelessWidget {
  const Home_EmergencyContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  height: size.height * .25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage('assets/homescreen/Rectangle.png'),
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
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colorlib.kPink_text,
                      fontFamily: 'Georgia Regular font',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 230.0, top: 10),
                  child: Image(
                    image: AssetImage('assets/homescreen/call.png'),
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
                          color: Colors.white,
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
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 20),
                  child: Text(
                    'Emergency Contacts',
                    style: TextStyle(
                        color: Colorlib.kPink_text,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        fontFamily: 'Georgia Regular font'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 50),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colorlib.kGreen_button,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              child: Container(
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 5,
                          offset: Offset(0, 2))
                    ]),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 18.0, top: 20),
                            child: Text(
                              'Police',
                              style: TextStyle(
                                  color: Colorlib.kPink_text,
                                  fontSize: 18,
                                  fontFamily: 'Georgia Regular font',
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40.0, top: 20),
                            child: Text(
                              'Ambulance',
                              style: TextStyle(
                                  color: Colorlib.kPink_text,
                                  fontSize: 18,
                                  fontFamily: 'Georgia Regular font',
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30.0, top: 20),
                            child: Text(
                              'Fire Brigade',
                              style: TextStyle(
                                  color: Colorlib.kPink_text,
                                  fontSize: 18,
                                  fontFamily: 'Georgia Regular font',
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 20),
                            child: Image(
                              image: AssetImage('assets/homescreen/police.png'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 58.0, top: 20),
                            child: Image(
                              image: AssetImage('assets/homescreen/amb.png'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 68.0, top: 20),
                            child: Image(
                              image: AssetImage('assets/homescreen/fire.png'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 15.0, top: 10),
                            child: CallButton(),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 33.0, top: 10),
                            child: CallButton(),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40.0, top: 10),
                            child: CallButton(),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            const ListTile(
                              leading: Icon(
                                Icons.phone,
                                color: Colorlib.kPink_text,
                                size: 35,
                              ),
                              title: Text(
                                'John',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Georgia Regular font'),
                              ),
                              subtitle: Text('+123456789'),
                              trailing: Icon(
                                Icons.delete,
                                color: Colorlib.kGreen_button,
                                size: 35,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
