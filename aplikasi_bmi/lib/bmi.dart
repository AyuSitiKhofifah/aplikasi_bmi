import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tb = 0;
  int bb = 0;
  int tahun = 0;
  int tgl = 0;

  String jk = "";
  void _opsiJk(String value) {
    setState(() {
      jk = value;
    });
  }

  var nama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text(
          'APLIKASI MENGHITUNG BMI',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontStyle: FontStyle.italic,
              color: Colors.white),
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              })
        ],
        backgroundColor: Colors.pink[200],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset(
                'images/gambar.jpg',
                height: 160,
                width: 100,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            Container(
              child: TextField(
                controller: nama,
                decoration: InputDecoration(
                  hintText: 'Masukkan Nama',
                  labelText: 'Nama',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.0)),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            Container(
              child: TextField(
                onChanged: (txt) {
                  setState(() {
                    tgl = int.parse(txt);
                  });
                },
                keyboardType: TextInputType.number,
                maxLength: 2,
                decoration: InputDecoration(
                    hintText: 'Masukkan Tanggal Lahir',
                    labelText: 'Tanggal Lahir',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3.0))),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            Container(
              child: TextField(
                onChanged: (txt) {
                  setState(() {
                    tahun = int.parse(txt);
                  });
                },
                keyboardType: TextInputType.number,
                maxLength: 4,
                decoration: InputDecoration(
                    hintText: "Masukkan Tahun Lahir",
                    labelText: "Tahun Lahir",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3.0))),
              ),
            ),
            RadioListTile(
              value: "Pria",
              groupValue: jk,
              title: Text("Pria"),
              onChanged: (String value) {
                _opsiJk(value);
              },
            ),
            RadioListTile(
              value: "Wanita",
              groupValue: jk,
              title: Text("Wanita"),
              onChanged: (String value) {
                _opsiJk(value);
              },
            ),
            Container(
                margin: EdgeInsets.only(top: 5.0),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tb = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                            suffix: Text('cm'),
                            filled: true,
                            hintText: 'Tinggi'),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            bb = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                            suffix: Text('kg'),
                            filled: true,
                            hintText: 'Berat'),
                      ),
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BMIResult(
                            namaLengkap: nama.text,
                            tgl: tgl,
                            tinggiBadan: tb,
                            beratBadan: bb,
                            tahunLahir: tahun,
                            jenisKelamin: jk),
                      ));
                },
                padding: EdgeInsets.only(top: 5.0, bottom: 10),
                color: Colors.pink[200],
                child: Text(
                  'HITUNG BMI',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Container(
          height: 20,
          color: Colors.black,
          alignment: Alignment.center,
          child: Text(
            'Developed by Ayu Siti',
            style: TextStyle(
              fontFamily: 'fantasy',
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
