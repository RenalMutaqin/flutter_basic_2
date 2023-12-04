// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: homapage(),
//     );
//   }
// }

// class homapage extends StatelessWidget {
//   const homapage({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dialog'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             showDialog(
//               context: context,
//               builder: (context) => AlertDialog(
//                 title: Center(child: Text("Ini Allert")),
//                 content: Text("Apakah anda yakin untuk menghapus data ini?"),
//                 actions: [
//                   ElevatedButton(onPressed: () {}, child: Text('Okay')),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: Text('Cancel'),
//                   ),
//                 ],
//               ),
//             );
//           },
//           child: Text('Show Dialog'),
//         ),
//       ),
//     );
//   }
// }

//SnackBar
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Snack Bar'),
//       ),
//       body: Center(
//           child: ElevatedButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text(
//                       "Delete Produck Berhasil",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     action: SnackBarAction(
//                       label: "Cancel",
//                       onPressed: () {
//                         print("Tidak jadi hapus data");
//                         //Bisa diisi perintah apapun
//                       },
//                       textColor: Colors.blueAccent,
//                     ),
//                     backgroundColor: Colors.grey,
//                     duration: Duration(seconds: 2),
//                     margin: EdgeInsets.all(15),
//                     behavior: SnackBarBehavior.floating,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10)),
//                   ),
//                 );
//               },
//               child: Text('Show Snackbar'))),
//     );
//   }
// }

//Text Field
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   bool ishiden = true;
//   TextEditingController emailC = TextEditingController();
//   TextEditingController passC = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Materi Text Field'),
//       ),
//       body: ListView(
//         padding: EdgeInsets.all(20),
//         children: [
//           TextField(
//             controller: emailC,
//             autocorrect: false,
//             keyboardType: TextInputType.emailAddress,
//             textInputAction: TextInputAction.next,
//             decoration: InputDecoration(
//               contentPadding:
//                   EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               label: Text('Email'),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               prefixIcon: Icon(Icons.email),
//             ),
//           ),
//           SizedBox(height: 15),
//           TextField(
//             controller: passC,
//             autocorrect: false,
//             obscureText: ishiden,
//             textInputAction: TextInputAction.done,
//             decoration: InputDecoration(
//               contentPadding:
//                   EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               label: Text('Password'),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               prefixIcon: Icon(Icons.key),
//               suffixIcon: IconButton(
//                 onPressed: () {
//                   if (ishiden == true) {
//                     ishiden = false;
//                   } else {
//                     ishiden = true;
//                   }
//                   setState(() {});
//                 },
//                 icon: Icon(Icons.remove_red_eye),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           ElevatedButton(
//             onPressed: () {
//               SnackBar(
//                 content: Text('Selamat Datang ${emailC}'),
//               );
//             },
//             child: Text("Login"),
//             style: ElevatedButton.styleFrom(
//                 padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 backgroundColor: Colors.lightBlue),
//           )
//         ],
//       ),
//     );
//   }
// }

//Tab Bar

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.teal,
//           title: Text('Whatsapp'),
//           bottom: TabBar(
//             tabs: [
//               Tab(
//                 icon: Icon(Icons.camera_alt),
//               ),
//               Tab(
//                 text: "Chats",
//               ),
//               Tab(
//                 text: "Status",
//               ),
//               Tab(
//                 text: "Calls",
//               )
//             ],
//           ),
//         ),
//         body: TabBarView(children: [
//           Center(
//               child: Text(
//             "Camera",
//             style: TextStyle(fontSize: 24),
//           )),
//           Center(
//               child: Text(
//             "Chats",
//             style: TextStyle(fontSize: 24),
//           )),
//           Center(
//               child: Text(
//             "Status",
//             style: TextStyle(fontSize: 24),
//           )),
//           Center(
//               child: Text(
//             "Calls",
//             style: TextStyle(fontSize: 24),
//           ))
//         ]),
//       ),
//     );
//   }
// }

//Dropdown
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final List data = [
//     {
//       "judul": "Pilihan ke 1",
//       "data": "1",
//     },
//     {
//       "judul": "Pilihan ke 2",
//       "data": "2",
//     },
//     {
//       "judul": "Pilihan ke 3",
//       "data": "3",
//     },
//   ];

//   late String dataAwal;
//   @override
//   void initState() {
//     dataAwal = data[0]["data"];
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dropdown'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.all(20),
//           child: DropdownButton<String>(
//             value: dataAwal,
//             items: data
//                 .map(
//                   (e) => DropdownMenuItem(
//                     child: Text("${e['judul']}"),
//                     value: "${e['data']}",
//                   ),
//                 )
//                 .toList(),
//             onChanged: (value) {
//               setState(() {
//                 dataAwal = "value";
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

//Bottom Navigation Bar
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   late int index;

//   List showWidget = [
//     Center(
//       child: Text("Home"),
//     ),
//     Center(
//       child: Text("User"),
//     ),
//     Center(
//       child: Text("Camera"),
//     ),
//   ];
//   @override
//   void initState() {
//     index = 0;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Whatsapp Flutter"),
//         backgroundColor: Colors.teal,
//       ),
//       body: showWidget[index],
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.teal,
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.black45,
//         currentIndex: index,
//         onTap: (value) {
//           setState(() {
//             index = value;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "User",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.camera_alt),
//             label: "Camera",
//           ),
//         ],
//       ),
//     );
//   }
// }

//Bottom Sheets
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan Bottom Sheets"),
//           backgroundColor: Colors.teal,
//         ),
//         body: Center(
//           child: Padding(
//             padding: EdgeInsets.all(30),
//             child: ElevatedButton(
//                 style: ButtonStyle(
//                   backgroundColor:
//                       MaterialStateProperty.all<Color>(Colors.teal),
//                 ),
//                 onPressed: () {
//                   showModalBottomSheet(
//                     isDismissible: false,
//                     context: context,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                     builder: (context) => Container(
//                         height: 300,
//                         child: ListView(
//                           children: [
//                             ListTile(
//                               onTap: () => print("Klik Foto"),
//                               leading: Icon(Icons.photo),
//                               title: Text("Photo"),
//                             ),
//                             ListTile(
//                               onTap: () => print("Klik Music"),
//                               leading: Icon(Icons.music_note_rounded),
//                               title: Text("Music"),
//                             ),
//                             ListTile(
//                               onTap: () => print("Klik Video"),
//                               leading: Icon(Icons.video_camera_back_rounded),
//                               title: Text("Video"),
//                             ),
//                             ListTile(
//                               onTap: () => print("Klik Share"),
//                               leading: Icon(Icons.share),
//                               title: Text("Share"),
//                             ),
//                             ListTile(
//                               onTap: () => Navigator.pop(context),
//                               leading: Icon(Icons.cancel),
//                               title: Text("Cancel"),
//                             ),
//                           ],
//                         )),
//                   );
//                 },
//                 child: Text("Show Button Sheets")),
//           ),
//         ));
//   }
// }

//Drawer
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: Text("Drawer"),
//       ),
//       drawer: Drawer(
//           child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             alignment: Alignment.center,
//             padding: EdgeInsets.all(20),
//             width: double.infinity,
//             height: 150,
//             color: Colors.teal,
//             child: Text(
//               "Home",
//               style: TextStyle(fontSize: 20, color: Colors.white),
//             ),
//           ),
//           Expanded(
//             child: ListView(
//               padding: EdgeInsets.zero,
//               children: [
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Home"),
//                   leading: Icon(Icons.home),
//                   title: Text("Home"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Product"),
//                   leading: Icon(Icons.shopping_cart),
//                   title: Text("Product"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Tagihan"),
//                   leading: Icon(Icons.money_rounded),
//                   title: Text("Tagihan"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Home"),
//                   leading: Icon(Icons.home),
//                   title: Text("Home"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Product"),
//                   leading: Icon(Icons.shopping_cart),
//                   title: Text("Product"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Tagihan"),
//                   leading: Icon(Icons.money_rounded),
//                   title: Text("Tagihan"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Home"),
//                   leading: Icon(Icons.home),
//                   title: Text("Home"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Product"),
//                   leading: Icon(Icons.shopping_cart),
//                   title: Text("Product"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Tagihan"),
//                   leading: Icon(Icons.money_rounded),
//                   title: Text("Tagihan"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Home"),
//                   leading: Icon(Icons.home),
//                   title: Text("Home"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Product"),
//                   leading: Icon(Icons.shopping_cart),
//                   title: Text("Product"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Tagihan"),
//                   leading: Icon(Icons.money_rounded),
//                   title: Text("Tagihan"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Home"),
//                   leading: Icon(Icons.home),
//                   title: Text("Home"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Product"),
//                   leading: Icon(Icons.shopping_cart),
//                   title: Text("Product"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Tagihan"),
//                   leading: Icon(Icons.money_rounded),
//                   title: Text("Tagihan"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Home"),
//                   leading: Icon(Icons.home),
//                   title: Text("Home"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Product"),
//                   leading: Icon(Icons.shopping_cart),
//                   title: Text("Product"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Tagihan"),
//                   leading: Icon(Icons.money_rounded),
//                   title: Text("Tagihan"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Home"),
//                   leading: Icon(Icons.home),
//                   title: Text("Home"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Product"),
//                   leading: Icon(Icons.shopping_cart),
//                   title: Text("Product"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Tagihan"),
//                   leading: Icon(Icons.money_rounded),
//                   title: Text("Tagihan"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Home"),
//                   leading: Icon(Icons.home),
//                   title: Text("Home"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Product"),
//                   leading: Icon(Icons.shopping_cart),
//                   title: Text("Product"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Tagihan"),
//                   leading: Icon(Icons.money_rounded),
//                   title: Text("Tagihan"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Home"),
//                   leading: Icon(Icons.home),
//                   title: Text("Home"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Product"),
//                   leading: Icon(Icons.shopping_cart),
//                   title: Text("Product"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//                 ListTile(
//                   onTap: () => print("Pindah ke Page Tagihan"),
//                   leading: Icon(Icons.money_rounded),
//                   title: Text("Tagihan"),
//                   // trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//               ],
//             ),
//           )
//         ],
//       )),
//     );
//   }
// }

//Navigation
import 'package:flutter/material.dart';
import './pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
