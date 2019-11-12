import 'package:flutter/material.dart';

class profs extends StatefulWidget {
  @override
  _profsState createState() => _profsState();
}

class _profsState extends State<profs> {

  List<ListTile> profs = [
    makeProf("Milde",
        "https://www.hs-fulda.de/fileadmin/_processed_/7/f/csm_Milde_web_02_8347c852f5.jpg"),
    makeProf("Kreiker", "https://www.hs-fulda.de/fileadmin/_processed_/e/b/csm_Kreiker_454b6a5950.jpg")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: profs.length,
          itemBuilder: (context, index) {
            return profs[index];
          }),
    );
  }
}

ListTile makeProf(name, bild) {
  return ListTile(
    leading: Image.network(bild),
    title: Text(name),
  );
}
