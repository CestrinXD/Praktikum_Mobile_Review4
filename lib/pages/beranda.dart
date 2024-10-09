import 'package:flutter/material.dart';
import 'package:pertemuan5/pages/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  void _onItemTap(int index) {
    setState(() {
      _index = index;
    });
  }

  static final List<Widget> _pages = [
    const Icon(
      Icons.home,
      size: 100,
    ),
    const Icon(
      Icons.chat_bubble,
      size: 100,
    ),
    const Icon(
      Icons.call,
      size: 100,
    ),
    const Icon(
      Icons.camera,
      size: 100,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.green, // untuk background color
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              //punya drawer
              currentAccountPicture: CircleAvatar(
                // bentuk gambar bulat
                backgroundImage:
                    NetworkImage('https://picsum.photos/200/300'), // isi assets
              ),
              accountName: Text("Praktikum Mobile"), //nama akun
              accountEmail: Text('mobile@gmail.com'), // nama email
              decoration: BoxDecoration(
                  color:
                      Color.fromARGB(255, 18, 1, 249)), //warna background atas
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera),
              title: const Text('Camera'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Cari'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('avout'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.menu,
        //     size: 30,
        //   ),
        //   onPressed: () {},
        // ),
        title: const Text('halaman beranda'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/account');
            },
            icon: const Icon(
              Icons.person_outline,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
            icon: const Icon(
              Icons.settings,
              size: 30,
            ),
          )
        ],
      ),
      body: Center(
        child: _pages.elementAt(_index),
      ),
      // child: ElevatedButton(
      //   child: const Text('Pindah Screen'),
      //   onPressed: () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) {
      //       return const Settings();
      //     },
      //   ),
      // );
      // Navigator.pushNamed(context, '/settings');
      // Navigator.pushReplacement<void, void>(
      //   context,
      //   MaterialPageRoute<void>(
      //     builder: (BuildContext context) => const HomePage(),
      //   ),
      // );
      //     },
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueAccent,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: _index,
        onTap: _onItemTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Telpon",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined),
            label: "Camera",
          ),
        ],
      ),
    );
  }
}
