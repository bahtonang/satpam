import 'package:flutter/material.dart';
import 'package:satpam/coba.dart';
// import 'package:satpam/patrolidtp.dart';
// import 'package:satpam/scan.dart';
// import 'package:satpam/today.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[dashBg, content],
      ),
    );
  }

  get dashBg => Column(
        children: <Widget>[
          Expanded(
            child: Container(color: Colors.blue),
            flex: 2,
          ),
          Expanded(
            child: Container(color: Colors.lime),
            flex: 5,
          ),
        ],
      );

  get content => Container(
        child: Column(
          children: <Widget>[
            header,
            // grid,
            dashboard,
          ],
        ),
      );

  get header => ListTile(
        contentPadding: EdgeInsets.only(left: 20, right: 20, top: 30),
        title: Text(
          'Selamat Datang',
          style: TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        subtitle: Text('Aplikasi Satpam Makalot',
            style: TextStyle(color: Colors.white70, fontSize: 18.0)),
        trailing: CircleAvatar(
          backgroundImage: AssetImage("assets/images/satpam3.png"),
        ),
      );

  get dashboard => Expanded(
        child: Container(
          child: GridView.count(
            crossAxisCount: 3,
            children: [
              MyMenu(
                title: "Patroli",
                icon: Icons.access_time_outlined,
                warna: Colors.green,
                onpress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyWidget()),
                  );
                },
              ),
              MyMenu(
                  title: "Patroli Today",
                  icon: Icons.app_registration,
                  warna: Colors.red,
                  onpress: () {
                    print('Patroli today');
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Hariini()),
                    // );
                  }),
              MyMenu(
                  title: "Data Patroli",
                  icon: Icons.computer_sharp,
                  warna: Colors.indigo,
                  onpress: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Dtp()),
                    // );
                  }),
              MyMenu(
                title: "Logout",
                icon: Icons.directions_sharp,
                warna: Colors.purple,
                onpress: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => Login()),
                  //   );
                },
              ),
              MyMenu(
                title: "Logout",
                icon: Icons.directions_sharp,
                warna: Colors.purple,
                onpress: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => Login()),
                  //   );
                },
              ),
              MyMenu(
                title: "Logout",
                icon: Icons.directions_sharp,
                warna: Colors.purple,
                onpress: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => Login()),
                  //   );
                },
              ),
              MyMenu(
                title: "Logout",
                icon: Icons.directions_sharp,
                warna: Colors.purple,
                onpress: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => Login()),
                  //   );
                },
              ),
            ],
          ),
        ),
      );
}

class MyMenu extends StatelessWidget {
  MyMenu(
      {required this.title,
      required this.icon,
      required this.warna,
      required this.onpress});
  final String title;
  final IconData icon;
  final MaterialColor warna;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.white,
      margin: EdgeInsets.all(20.0),
      child: InkWell(
        onTap: onpress,
        splashColor: Colors.green,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 60.0,
                color: warna,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
