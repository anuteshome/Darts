// import "package:flutter/material.dart";
// import "../Components/AppDrawer.dart";
// // import "../Components/BottomNavigator.dart";
// import 'First.dart';
// import 'Setting.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//    int _selectedIndex = 0;
//   void _NavBarState(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   final List<Widget> _pages = [ First(), Setting()];


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(title: Text("Home Page")),
//       body:_pages[_selectedIndex],
//       // drawer:  AppDrawer(),
//       //Bottom Navigation Bar
//    bottomNavigationBar: BottomNavigationBar(
//         items: [
//           // BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: "Settings",
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         onTap: _NavBarState,
//       ),
     
//     );
//   }
// }
