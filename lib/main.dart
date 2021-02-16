import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 200,
            child: Image.asset(
              "assets/img.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Text("Urban sketching | lorem ipsum lorem ipsum",
                      style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.bold, fontSize: 17)),
                ),
                Container(
                  child: Text("\$25",
                      style: GoogleFonts.openSans(
                          fontSize: 17, fontWeight: FontWeight.w400)),
                )
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://img.icons8.com/bubbles/452/man-in-blue-jacket.png"),
            ),
            title: Text("Hosted by",
                style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400)),
            subtitle: Text(
              "Jhon doe",
              style: GoogleFonts.sourceSansPro(
                  fontSize: 17, fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text(
              "2nd December",
              style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "10:30-11:30 am",
              style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: Icon(Icons.video_call),
            title: ListTile(
              leading: Icon(
                Icons.lock,
                color: Colors.black54,
              ),
              title: Text("Event Link",
                  style:
                      GoogleFonts.sourceSansPro(fontWeight: FontWeight.bold)),
              subtitle: Text("Link visible for attendes",
                  style:
                      GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text("Languages",
                style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.bold)),
            subtitle: Text(
              "English",
              style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: Icon(Icons.text_fields),
            title: Text("Ages",
                style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.bold)),
            subtitle: Text("Seniors",
                style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400)),
          ),
          Divider(
            height: 4,
            color: Colors.black,
          ),
          Container(
            padding: EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Description",
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Requirements",
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Lorem Ipsum is simply dummy and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style:
                        GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("What you will learn",
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Lorem Ipsum is simply specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style:
                        GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400)),
                Container(
                  margin: EdgeInsets.fromLTRB(18, 25, 18, 12),
                  width: 400,
                  color: Colors.pink[600],
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "Buy Now",
                      style: GoogleFonts.sourceSansPro(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
