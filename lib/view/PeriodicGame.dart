import 'package:flutter/material.dart';

class PeriodicGame extends StatefulWidget{
  const PeriodicGame({super.key});

  @override
  State<PeriodicGame> createState() => _PeriodicGameScreenState();
}
int ones = 0;
int twos = 0;
int twop = 0;
int threes = 0;
int threep = 0;
int threed = 0;
int fours = 0;
int fourp = 0;
int fourd = 0;
int fourf = 0;
int fives = 0;
int fivep = 0;
int fived = 0;
int fivef = 0;
int sixs = 0;
int sixp = 0;
int sixd = 0;
int sevens = 0;
int sevenp = 0;
class _PeriodicGameScreenState extends State<PeriodicGame> {

  void update1s(int onesadd){setState(() {ones += onesadd;});}

  void update2s(int twosadd){setState(() {twos += twosadd;});}

  void update2p(int twopadd){setState(() {twop += twopadd;});}

  void update3s(int threesadd){setState(() {threes += threesadd;});}

  void update3p(int threepadd){setState(() {threep += threepadd;});}

  void update3d(int threedadd){setState(() {threed += threedadd;});}

  void update4s(int foursadd){setState(() {fours += foursadd;});}

  void update4p(int fourpadd){setState(() {fourp += fourpadd;});}

  void update4d(int fourdadd){setState(() {fourd += fourdadd;});}

  void update4f(int fourfadd){setState(() {fourf += fourfadd;});}

  void update5s(int fivesadd){setState(() {fives += fivesadd;});}

  void update5p(int fivepadd){setState(() {fivep += fivepadd;});}

  void update5d(int fivedadd){setState(() {fived += fivedadd;});}

  void update5f(int fivefadd){setState(() {fivef += fivefadd;});}

  void update6s(int sixsadd){setState(() {sixs += sixsadd;});}

  void update6p(int sixpadd){setState(() {sixp += sixpadd;});}

  void update6d(int sixdadd){setState(() {sixd += sixdadd;});}

  void update7s(int sevensadd){setState(() {sevens += sevensadd;});}

  void update7p(int sevenpadd){setState(() {sevenp += sevenpadd;});}

  void clear(){
    setState(() {
     ones = 0;
     twos = 0;
     twop = 0;
     threes = 0;
     threep = 0;
     threed = 0;
     fours = 0;
     fourp = 0;
     fourd = 0;
     fourf = 0;
     fives = 0;
     fivep = 0;
     fived = 0;
     fivef = 0;
     sixs = 0;
     sixp = 0;
     sixd = 0;
     sevens = 0;
     sevenp = 0;
  });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perodic Table'),
        actions: [
          IconButton(
          icon: const Icon(
            Icons.delete
          ),
          onPressed: clear,
          ),
        ],),
      body: ListView(
        children: [ 
        ElevatedButton(
          onPressed: () {update1s(1);},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.black,
            elevation: 10,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text('1s'),
          ),
          ElevatedButton(
          onPressed: () {update2s(1);},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.black,
            elevation: 10,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text('2s'),
          ),
        ]
    )
  );
  }
}