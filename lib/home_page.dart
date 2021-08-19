import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _tractController = TextEditingController();

  String username = "";
  String description = "";
  String track = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Form(
                  child: Column(
                    children: [
                      Text(
                        "WELCOME",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      Text(
                        "Fill in the form with your details \nto officially create a profile",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: _usernameController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: 'Enter your Name',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            suffix: Icon(Icons.person),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 42, vertical: 20),
                            labelText: 'Name',
                            enabledBorder: OutlineInputBorder(
                                gapPadding: 10,
                                borderSide: BorderSide(color: Colors.black54),
                                borderRadius: BorderRadius.circular(28)),
                            focusedBorder: OutlineInputBorder(
                                gapPadding: 10,
                                borderSide: BorderSide(color: Colors.black54),
                                borderRadius: BorderRadius.circular(28))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: _tractController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: 'Enter Track',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            suffix: Icon(Icons.track_changes_outlined),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 42, vertical: 20),
                            labelText: 'Track',
                            enabledBorder: OutlineInputBorder(
                                gapPadding: 10,
                                borderSide: BorderSide(color: Colors.black54),
                                borderRadius: BorderRadius.circular(28)),
                            focusedBorder: OutlineInputBorder(
                                gapPadding: 10,
                                borderSide: BorderSide(color: Colors.black54),
                                borderRadius: BorderRadius.circular(28))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: _descriptionController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Description',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            suffix: Icon(Icons.description),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 42, vertical: 20),
                            labelText: 'Description',
                            enabledBorder: OutlineInputBorder(
                                gapPadding: 10,
                                borderSide: BorderSide(color: Colors.black54),
                                borderRadius: BorderRadius.circular(28)),
                            focusedBorder: OutlineInputBorder(
                                gapPadding: 10,
                                borderSide: BorderSide(color: Colors.black54),
                                borderRadius: BorderRadius.circular(28))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        width: double.infinity,
                        height: 240,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(TextSpan(
                                  text: 'Name: ',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      letterSpacing: 2.0,
                                      fontSize: 20),
                                  children: <InlineSpan>[
                                    TextSpan(
                                        text: '$username',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold))
                                  ])),
                              SizedBox(
                                height: 30,
                              ),
                              Text.rich(
                                TextSpan(
                                    text: 'Track: ',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        letterSpacing: 2.0,
                                        fontSize: 20),
                                    children: <InlineSpan>[
                                      TextSpan(
                                          text: '$track',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))
                                    ]),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text.rich(
                                TextSpan(
                                    text: 'Description: ',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        letterSpacing: 2.0,
                                        fontSize: 20),
                                    children: <InlineSpan>[
                                      TextSpan(
                                          text: '$description',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))
                                    ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 13,
                        child: TextButton(
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                textStyle: TextStyle(
                                    color: Colors.white, fontSize: 14),
                                backgroundColor: Colors.blue),
                            onPressed: () {
                              setState(() {
                                username = _usernameController.text;
                                description = _descriptionController.text;
                                track = _tractController.text;
                              });
                            },
                            child: Text(
                              "Create Profile,",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 18),
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Visit Zuri team at: '),
                          SizedBox(
                            width: 3,
                          ),
                          GestureDetector(
                            onTap: () async {
                              var url = 'https://internship.zuri.team';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'could not lunch $url';
                              }
                            },
                            child: SvgPicture.asset(
                              'assets/images/ZuriLogo.svg',
                            ),
                          ),
                        ],
                      )
                    ],
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
