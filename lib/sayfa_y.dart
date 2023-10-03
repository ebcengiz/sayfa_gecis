import 'package:flutter/material.dart';

class SayfaY extends StatefulWidget {
  const SayfaY({super.key});

  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {
  Future<bool> geriDon(BuildContext context) async{
    print("Navigation geri tuşu seçildi");
    return true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Y Sayfası",style: TextStyle(color: Colors.white),),
        leading: IconButton(onPressed: () {
          print("Appbar geri tuşu seçildi");
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.white,),
        backgroundColor: Colors.yellow,
      ),
      body: WillPopScope(
        onWillPop: () => geriDon(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              }, child: const Text("Anasayfaya Dön",style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
