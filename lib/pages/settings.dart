import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child:
            // OutlinedButton(
            //   child: const Text('Kembali'),
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            // ),
            Text("kembali"),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: Colors.blueAccent,
      //   unselectedItemColor: Colors.white,
      //   selectedItemColor: Colors.black,
      //   currentIndex: _index,
      //   onTap: _onItemTap,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.chat_bubble),
      //       label: "Chat",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.call),
      //       label: "Telpon",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.camera_alt_outlined),
      //       label: "Camera",
      //     ),
      //   ],
      // ),
      // );
    );
  }
}
