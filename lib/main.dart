import 'dart:ui';

import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {  
  @override
  _MyAppState createState() => new _MyAppState();
  
}




class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 14,
      navigateAfterSeconds: new AfterSplash(),
             
      image: Image.asset('images/logo.png'),
      imageBackground: AssetImage("images/splash.png"),
      backgroundColor: Colors.white,
      loaderColor: Colors.red,
    );
  }
}
int _currentPage = 0;
final _pageController = PageController();

// class AfterSplash2 extends StatelessWidget {  
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: Image.asset("images/logo.png"),
//         automaticallyImplyLeading: false,
//       ),
//       body: PageView(
//         controller: _pageController,
//         children: [
//           Container(color: Colors.blue),
//           Container(color: Colors.red),
//           Container(color: Colors.greenAccent.shade700),
//           Container(color: Colors.orange),
//         ],
//         onPageChanged: (index) {
//           // Use a better state management solution
//           // setState is used for simplicity
//           setState(() => _currentPage = index);
//         },
//       ),
//       bottomNavigationBar: BottomBar(
//         selectedIndex: _currentPage,
//         onTap: (int index) {
//           _pageController.jumpToPage(index);
//           setState(() => _currentPage = index);
//         },
//         items: <BottomBarItem>[
//           BottomBarItem(
//             icon: Icon(Icons.home),
//             title: Text('Home'),
//             activeColor: Colors.blue,
//           ),
//           BottomBarItem(
//             icon: Icon(Icons.favorite),
//             title: Text('Favorites'),
//             activeColor: Colors.red,
//             darkActiveColor: Colors.red.shade400, // Optional
//           ),
//           BottomBarItem(
//             icon: Icon(Icons.person),
//             title: Text('Account'),
//             activeColor: Colors.greenAccent.shade700,
//             darkActiveColor: Colors.greenAccent.shade400, // Optional
//           ),
//           BottomBarItem(
//             icon: Icon(Icons.settings),
//             title: Text('Settings'),
//             activeColor: Colors.orange,
//           ),
//         ],
//       ),
//     );
//   }
// }

class AfterSplash extends StatefulWidget {
  const AfterSplash({ Key? key }) : super(key: key);

  @override
  _AfterSplashState createState() => _AfterSplashState();
}

class _AfterSplashState extends State<AfterSplash> {
  @override
  Widget build(BuildContext context) {
     return new Scaffold(
      appBar: new AppBar(
        title: Image.asset("images/logo.png"),
        centerTitle: true,
         elevation: 0.0,
         actions: [
           ElevatedButton(onPressed: (){}, 
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [               
               Icon(Icons.shopping_cart,),
               SizedBox(width: 10,),
               Text("Empty") 
             ],
           ),
           
           ),
         ],
       
        automaticallyImplyLeading: false,
      ),
      body: PageView(
        controller: _pageController,
        children: [
          Container(color: Colors.white),
          Container(color: Colors.white),
          Container(color: Colors.white),
          Container(color: Colors.white),
        ],
        onPageChanged: (index) {
          // Use a better state management solution
          // setState is used for simplicity
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Home'),
            activeColor: Colors.blue,
          ),
          BottomBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorites'),
            activeColor: Colors.red,
            darkActiveColor: Colors.red.shade400, // Optional
          ),
          BottomBarItem(
            icon: Icon(Icons.person),
            title: Text('Account'),
            activeColor: Colors.greenAccent.shade700,
            darkActiveColor: Colors.greenAccent.shade400, // Optional
          ),
          BottomBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}

// actions: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Icon(Icons.shopping_cart),
//             Text('Empty')
//           ],
//         ),
       
//     ],