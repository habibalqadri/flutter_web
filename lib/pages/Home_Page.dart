import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    navitem({String title, int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedItem = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xff1D1E3C),
                fontWeight:
                    index == selectedItem ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              height: 2,
              width: 66,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedItem
                    ? Color(0xffFE998D)
                    : Colors.transparent,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "background.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 35,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "logo.png",
                  height: 72,
                  width: 40,
                ),
                Row(
                  children: [
                    navitem(
                      title: "Guides",
                      index: 0,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    navitem(
                      title: "Pricing",
                      index: 1,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    navitem(
                      title: "Team",
                      index: 2,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    navitem(
                      title: "Stories",
                      index: 3,
                    ),
                  ],
                ),
                Image.asset(
                  "button_account.png",
                  height: 163,
                  width: 150,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 76,
          ),
          Image.asset(
            "illustration.png",
            width: 550,
          ),
          SizedBox(
            height: 84,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "icon-down.png",
                width: 24,
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                "Scroll to Learn More",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
