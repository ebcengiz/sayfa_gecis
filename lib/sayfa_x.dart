import 'package:flutter/material.dart';
import 'package:sayfa_gecis/sayfa_y.dart';

class SayfaX extends StatefulWidget {
  const SayfaX({super.key});

  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  
  Future<bool> geriDonusAnasayfa(BuildContext context) async{
    print("Navigation geri tuşu seçildi");
    return true;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("X Sayfası",style: TextStyle(color: Colors.white),),
        leading: IconButton(onPressed: () {
          print("Appbar geri tuşu seçildi");
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.white,
        ),
        backgroundColor: Colors.red,
      ),
      body: WillPopScope(
        onWillPop: () => geriDonusAnasayfa(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaY()));
              }, child: const Text("Y Sayfası",style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
