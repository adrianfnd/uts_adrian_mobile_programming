import 'package:flutter/material.dart';

class Diary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Diary',
        ),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 575,
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  title: const Text('Hari Pertama Kuliah Di AMIK',
                      style: TextStyle(color: Colors.black,  fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.center),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  child: Text(
                      '    Dear diary hari ini aku sangat senang karna dapat lanjut kuliah lagi, dan masuk ke salah satu kampus'
                          'di Bandung yang bernama STMIK AMIK, waktu awal masuk aku merasa gugup karna masih membaca situasi sekitar dulu, lalu'
                          'aku memulai pembicaraan dengan salah satu mahasiswa baru juga di koridor kampus, syukurlah karna dia orangnya bisa di'
                          'ajak ngobrol sehingga aku tidak merasa kesepian lagi, lalu setelah itu kita ada pertemuan buat Tech MID tentang bagaimana'
                          'tatacara dan peraturan MID 2020, setelah itu kita di perbolehkan pulang karna MID nya di adakan secara online.',
                      style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 14),textAlign: TextAlign.justify),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 0.0),
                  child: Image.asset('assets/images/diary-image-1.jpg'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}