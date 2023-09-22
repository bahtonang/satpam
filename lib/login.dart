import 'package:satpam/model/models.dart';
import 'package:satpam/service/services.dart';
import 'package:satpam/userpage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  BahtonangApiServices? apiServices;
  bool isLogin = false;
  String? errorMsg = "";
  String? errorTgl = "";
  TextEditingController _textNama = TextEditingController();
  TextEditingController _textPass = TextEditingController();
  Person? resultApi;
  String? akses;
  String? nama;
  String? token;

  @override
  void initState() {
    apiServices = BahtonangApiServices();
    super.initState();
  }

  savePref() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      sp.setString("spNama", nama ?? '');
      sp.setString("spToken", token ?? '');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60.0, left: 40.0, right: 40.0),
        color: Colors.green[50],
        child: Form(
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: 10.0,
                height: 100.0,
                child: Image.asset("assets/images/satpam3.png"),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Nama Harus Di isi';
                  }
                  return null;
                },
                controller: _textNama,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Username ",
                  errorText: errorMsg ?? null,
                  labelStyle: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  ),
                ),
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Password Harus Di isi';
                  }
                  return null;
                },
                controller: _textPass,
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Password",
                  errorText: errorTgl ?? null,
                  labelStyle: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  ),
                ),
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(
                height: 40.0,
              ),

              ElevatedButton.icon(
                onPressed: () {
                  apiServices?.login('SF13773', '1234').then((value) {
                    if (value == null) {
                      errorTgl = "Password keliru";
                      setState(() {});
                    } else {
                      resultApi = value;
                      print(value.message);
                      setState(() {});
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => UserPage(),
                          ));
                    }
                  });
                },
                icon: const Icon(Icons.abc),
                label: const Text('button'),
              ),
              // RaisedButton(
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(8.0),
              //       side: BorderSide(color: Colors.white)),
              //   onPressed: () {
              //     apiServices
              //         .login(_textNama.text, _textPass.text)
              //         .then((value) {
              //       if (value.nama == null) {
              //         errorMsg = "Username keliru";
              //         errorTgl = "Password keliru";
              //         setState(() {});
              //       } else {
              //         resultApi = value;

              //         setState(() {
              //           akses = resultApi.akses;
              //           errorMsg = "";
              //           nama = resultApi.nama;
              //           token = resultApi.token;
              //         });
              //         savePref();
              //         if (akses == 'ADMIN') {
              //           Navigator.pushReplacementNamed(context, '/adminpage');
              //         } else {
              //           Navigator.pushReplacement(
              //               context,
              //               MaterialPageRoute(
              //                 builder: (BuildContext context) => UserPage(),
              //               ));
              //         }
              //       }
              //     });
              //   },
              //   color: Colors.blue[900],
              //   textColor: Colors.white,
              //   child: Padding(
              //     padding: const EdgeInsets.all(20.0),
              //     child: Text(
              //       "Login",
              //       style: TextStyle(fontSize: 18.0),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
