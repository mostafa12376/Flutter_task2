import 'package:flutter/material.dart';

import 'ChoiceButton.dart';

class Home extends StatelessWidget {

  final String photo;
  final Color c;
  const Home(this.photo, this.c);

  // const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(42, 19, 1, 1.0),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              // Background   Color
              // 5.jpg        Color.fromRGBO(255, 220, 14, 1.0)
              // 4.jpg        Colors.amberAccent

              image: AssetImage(photo),
            ),
          ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
              children: [
        Padding(
        padding: EdgeInsets.only(top: 40, left: 10, right: 10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                        // IconButton(iconSize: 30, icon: Icon(Icons.arrow_back, color: Colors.white), onPressed: () {  }, ),
                      child: IconButton(iconSize: 25, icon: Icon(Icons.arrow_back, color: Colors.white), onPressed: () {  }, ),
                    ),
                    Expanded(
                      flex: 6,
                      child:  Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Column(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('me.jpg'),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 88, left: 88),

                              child: Icon(Icons.edit_location_rounded, color: c,size: 35),
                          ),
                          ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 5),
                         child: Text(
                            "Mostafa Abd-Elbaky",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                      ),
                          Text(
                            "mostafa.abdo12376@gmail.com",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 40),
                          child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(c),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                      )
                                  )
                              ),
                            onPressed: () { },
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
                              child: Text('Upgrade to PRO', style: TextStyle(
                              color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                            ),),
                            )
                          )
                        )
                        ],
                      ),
                    ),
                    ),
                    Expanded(
                      flex: 1,
                      // IconButton(iconSize: 20, icon: Icon(Icons.wb_sunny_outlined, color: Colors.white,), onPressed: () {  }, ),
                      child: IconButton(iconSize: 25, icon: Icon(Icons.wb_sunny_outlined, color: Colors.white,), onPressed: () {  }, ),
                    )
                    ,


                    ]
                  )
        ),
                ChoiceButton(Icons.admin_panel_settings_outlined, "Privacy", Icons.arrow_forward_ios_outlined),
                ChoiceButton(Icons.history, "Purchase History", Icons.arrow_forward_ios_outlined),
                ChoiceButton(Icons.help_outline, "Help & Support", Icons.arrow_forward_ios_outlined),
                ChoiceButton(Icons.settings, "Settings", Icons.arrow_forward_ios_outlined),
                ChoiceButton(Icons.add_circle_outline, "Invite a Friend", Icons.arrow_forward_ios_outlined),
                ChoiceButton(Icons.logout, "Logout", Icons.abc),
            ]

          ),
        )
    );
  }
}
