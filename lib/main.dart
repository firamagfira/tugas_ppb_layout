// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );

//   }
// }

// class HomePage extends StatelessWidget {

//   @override
//   Widget build(BuildContext context){

//     return Scaffold(

//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("PPB"),
//       ),

//       body: Center(

//         child: Column(

//           mainAxisAlignment: MainAxisAlignment.center,

//           children: [

//             Row(

//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,

//               children: [

//                 ElevatedButton(

//                   onPressed:(){

//                     Navigator.push(

//                       context,

//                       MaterialPageRoute(

//                         builder: (context)=> DetailPage(),

//                       ),

//                     );

//                   },

//                   child: Text("Detail 1"),

//                 ),

//                 ElevatedButton(

//                   onPressed:(){

//                     Navigator.push(

//                       context,

//                       MaterialPageRoute(

//                         builder: (context)=> BintangPage(),

//                       ),

//                     );

//                   },

//                   child: Text("Detail 2"),

//                 ),

//               ],

//             ),

//             SizedBox(height:40),
//             Column(
//               children: [
//                 Text(
//                   "Maghfirah",
//                   style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),
//                 ),

//                 SizedBox(height:10),

//                 Text(
//                   "NIM: 60200124112",
//                   style: TextStyle(fontSize:20),
//                 ),
//               ],
//             ),

//           ],

//         ),

//       ),

//     );

//   }

// }

// class DetailPage extends StatelessWidget{

//   @override
//   Widget build(BuildContext context){

//     return Scaffold(

//       appBar: AppBar(
//         title: Text("Isi Laporan"),
//       ),

//       body: Padding(

//         padding: EdgeInsets.all(20),

//         child: Text(

// '''
// Judul laporan:

// Implementasi Form dan Navigasi pada Flutter.

// Penjelasan:
// Flutter menggunakan widget Form untuk mengatur input data
// pengguna, serta Navigator untuk melakukan perpindahan antar
// halaman. Form digunakan untuk validasi input sebelum data
// dikirim, sedangkan navigasi digunakan untuk mengatur alur
// perpindahan layar dalam aplikasi agar lebih terstruktur.
// ''',

//         style: TextStyle(fontSize:20),

//         ),

//       ),

//     );

//   }

// }
// class BintangPage extends StatelessWidget{

//   @override
//   Widget build(BuildContext context){

//     return Scaffold(

//       appBar: AppBar(
//         title: Text("Bintang"),
//       ),

//       body: Center(

//         child: Text(
//           "★★★",
//           style: TextStyle(fontSize:50),
//         ),

//       ),

//     );

//   }

// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  Widget menuItem(
    BuildContext context,
    IconData icon,
    String text,
    Widget page,
  ) {
    return GestureDetector(

      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },

      child: Column(
        children: [

          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.blue.shade100,

            child: Icon(
              icon,
              size: 30,
              color: Colors.blue,
            ),
          ),

          SizedBox(height: 8),

          Text(
            text,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget infoCard(
    BuildContext context,
    IconData icon,
    String title,
    String subtitle,
  ) {
    return GestureDetector(

      onTap: () {
        showDialog(
          context: context,

          builder: (context) {
            return AlertDialog(

              title: Text(title),

              content: Text(subtitle),

              actions: [

                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },

                  child: Text("OK"),
                ),
              ],
            );
          },
        );
      },

      child: Card(
        elevation: 5,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),

        child: ListTile(

          leading: Icon(
            icon,
            color: Colors.blue,
            size: 35,
          ),

          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          subtitle: Text(subtitle),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Tugas Layout PPB"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(

        child: Column(
          children: [

            SizedBox(height: 30),

            Icon(
              Icons.person,
              size: 100,
              color: Colors.blue,
            ),

            SizedBox(height: 15),

            Text(
              "Maghfirah",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "Teknik Informatika",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 25),

            Padding(
              padding: EdgeInsets.all(12),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [

                  menuItem(
                    context,
                    Icons.home,
                    "Home",
                    HomePageDetail(),
                  ),

                  menuItem(
                    context,
                    Icons.person,
                    "Profile",
                    ProfilePage(),
                  ),

                  menuItem(
                    context,
                    Icons.settings,
                    "Setting",
                    SettingPage(),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.all(12),

              child: Column(
                children: [

                  infoCard(
                    context,
                    Icons.school,
                    "Universitas",
                    "UIN Alauddin Makassar",
                  ),

                  SizedBox(height: 15),

                  infoCard(
                    context,
                    Icons.code,
                    "Mata Kuliah",
                    "Pemrograman Perangkat Bergerak",
                  ),

                  SizedBox(height: 15),

                  infoCard(
                    context,
                    Icons.groups,
                    "Teamwork",
                    "Belajar Flutter Layout",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePageDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Text(
          "Selamat Datang di Aplikasi PPB",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(
              "Nama : Maghfirah",
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 10),

            Text(
              "NIM : 60200124112",
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 10),

            Text(
              "Jurusan : Teknik Informatika",
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 10),

            Text(
              "Fakultas : Sains dan Teknologi",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Setting"),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Text(
          "Halaman Pengaturan",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}