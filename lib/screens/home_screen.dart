import 'package:flutter/material.dart';
import 'package:hngx_project1/constants/assets.dart';
import 'package:hngx_project1/screens/profile_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding:  const EdgeInsets.all(25),
          child: Column(
            children: [
              Container(
                height: height/2.5,
                width: width/1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage(Assets.profileImage,), fit: BoxFit.fitWidth),
                ),
              ),
              const SizedBox(height: 20,),
              const Text("Prudent migabo", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              const SizedBox(height: 35,),
              SizedBox(
                height: 45,
                width: width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfileScreen()));
                }, child: const Text("Open GitHub", style: TextStyle(fontWeight: FontWeight.bold),),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
