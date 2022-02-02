
import 'package:case_23/person.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final messengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  runApp(myApp());
}

void showInSnackBar(BuildContext context, String value) {
final snackBar = SnackBar(content: Text(value),duration: Duration(milliseconds: 300),);
ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter test",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NaviScreen(),
    );
  }

}

class NaviScreen extends StatefulWidget {
  const NaviScreen({Key? key}) : super(key: key);

  @override
  _NaviState createState() => _NaviState();
}

class _NaviState extends State<NaviScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(BuildContext context, int index) {
    showInSnackBar(context, "Страница номер: ${index+1}");
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Кейс 2.3',
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              CircleAvatar(child: Icon(Icons.person, size: 50,), maxRadius:50,)
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.ad_units,
            ),
            title: const Text("Person"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Person()),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.accessibility_outlined),
            title: const Text("О авторе"),
            onTap: () {
              Navigator.pop(context);
              showInSnackBar(context, "Мега кодер 3 тыщи");
            },
          ),
        ]),
      ),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 50,),
            const FlutterLogo(
              style: FlutterLogoStyle.stacked,
              size: 90,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: (){showInSnackBar(context, "Кнопка 1");}, child: Text("Я кнопка 1")),
                    TextButton(onPressed: (){showInSnackBar(context, "Кнопка 2");}, child: Text("Я кнопка 2")),
                    TextButton(onPressed: (){showInSnackBar(context, "Кнопка 3");}, child: Text("Я кнопка 3")),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Домой'),
          BottomNavigationBarItem(
              icon: Icon(Icons.work), label: 'На работу'),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => _onItemTapped(context, index),
      ),
    );
  }


}
