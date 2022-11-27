import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop/pages/home_page.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:const  BoxDecoration(
        image: DecorationImage(
        image: AssetImage('lib/images/bg2.jpg'),
          fit: BoxFit.cover,
          opacity: 0.3,
        ),
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
            children: [
              const SizedBox(height: 220),
              //Logo
          Container(
            decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.6),
                borderRadius: BorderRadius.circular(12)),
            child: const Padding(
              padding: EdgeInsets.all(21.0),
              child:// Image.asset('lib/images/avocado.png'),
              Text('Shop Point',style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
              ),
            ),
          ),
          // Quotes
         const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              'We deliver at your doorstep',
              textAlign: TextAlign.center,
              style:TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.w300
              ),
            ),
          ),
          const Spacer(),
          const Spacer(),

          //Get Start
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder:(context){
              return const HomePage();
            }
            )),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green[700],
                  borderRadius: BorderRadius.circular(30)),
              padding: const EdgeInsets.all(20),
              child:const  Text(
                'Store open',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const Spacer(),
        ]),
      ),
    );
  }
}
