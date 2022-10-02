import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
             Expanded(
                child: Center(
                  child: Text("welcome", style: TextStyle(fontSize: 20),).tr()
                ),
            ),
            Row(
              children: [
                Expanded(
                    child: FlatButton(
                      height: 45,
                      color: Colors.green,
                      onPressed: (){
                        context.setLocale(Locale('en', 'US'));
                      },
                      child: const Text("English", style: TextStyle(color: Colors.white),),
                    ),
                ),
                const SizedBox(width: 3,),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.blue,
                    onPressed: (){
                      context.setLocale(Locale('ru', 'RU'));
                    },
                    child: const Text("Russian", style: TextStyle(color: Colors.white),),
                  ),
                ),
                const SizedBox(width: 3,),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.pink,
                    onPressed: (){
                      context.setLocale(Locale('uz', 'UZ'));
                    },
                    child: const Text("Uzbek", style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(width: 3,),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.yellow,
                    onPressed: (){
                      context.setLocale(Locale('fr', 'FR'));
                    },
                    child: const Text("French", style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
