import 'package:flutter/material.dart';
import 'package:periodic_table/Elements.dart';
import 'package:periodic_table/presenter/periodic_presenter.dart';
// this is the file for the game where people can try and find out the numbers of electrons in each shell
class PeriodicGame extends StatefulWidget{
  const PeriodicGame({super.key});

  @override
  State<PeriodicGame> createState() => _PeriodicGameScreenState();
}
final PeriodicPresenter _presenter = PeriodicPresenter();

String? _selectedElement;
final List<Elements> elementlist = _presenter.getlist();
String checkstring = " ";

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

  // Each one of these is used to update how many button presses for each shell
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

  // This is used to reset the shell
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
     checkstring = " ";
  });
  }

  // this is used to check if the shell totals are correct
  void check(){
    Map<String, int> shell = new Map<String, int>();
    for(Elements i in elementlist){
      if(i.getElementname() == _selectedElement){
        shell = i.getshelltotals();}}
        if(shell["1s"] == ones && shell["2s"] == twos && shell["2p"] == twop && shell["3s"] == threes && shell["3p"] == threep &&
          shell["3d"] == threed && shell["4s"] == fours && shell["4p"] == fourp && shell["4d"] == fourd && shell["4f"] == fourf &&
          shell["5s"] == fives && shell["5p"] == fivep && shell["5d"] == fived && shell["5f"] == fivef && shell["6s"] == sixs &&
          shell["6p"] == sixp && shell["6d"] == sixd && shell["7s"] == sevens && shell["7p"] == sevenp){
          setState(() {
            checkstring = "yes";
          });
        }
        else{setState(() {checkstring = "no";});}
      }
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Correct?: ' + checkstring),
        actions: [
          SizedBox(
          height: 30,
          width: 75,
          child : DropdownButton<String>(
            hint: const Text(
              'Select Element',
              style: TextStyle(color: Colors.white),
            ),
            dropdownColor: Colors.blue[100],
            isDense: true,
            isExpanded: true,
            value: _selectedElement,
            onChanged: (value){
              setState(() {
                _selectedElement = value;
              });
            },
            items: [
              const DropdownMenuItem<String>(
                value: null,
                child: Text('No Element Selected'),
              ),
              ...elementlist.map(
                (name) => DropdownMenuItem(value: name.getElementname(), child: Text(name.getElementname())),
              ),
            ],
          ),),
          IconButton(
          icon: const Icon(
            Icons.delete
          ),
          onPressed: clear,
          ),
          IconButton(
          icon: const Icon(
            Icons.check
          ),
          onPressed: check,
          ),
        ],),
      body: ListView(
        children: [ 
        Text('Current Totals:'),
        Text('1s: $ones'),
        Text('2s: $twos'),
        Text('2p: $twop'),
        Text('3s: $threes'),
        Text('3p: $threep'),
        Text('3d: $threed'),
        Text('4s: $fours'),
        Text('4p: $fourp'),
        Text('4d: $fourd'),
        Text('4f: $fourf'),
        Text('5s: $fives'),
        Text('5p: $fivep'),
        Text('5d: $fived'),
        Text('5f: $fivef'),
        Text('6s: $sixs'),
        Text('6p: $sixp'),
        Text('6d: $sixd'),
        Text('7s: $sevens'),
        Text('7p: $sevenp'),
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
          ElevatedButton(
          onPressed: () {update2p(1);},
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
          child: const Text('2p'),
          ),
          ElevatedButton(
          onPressed: () {update3s(1);},
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
          child: const Text('3s'),
          ),
          ElevatedButton(
          onPressed: () {update3p(1);},
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
          child: const Text('3p'),
          ),
          ElevatedButton(
          onPressed: () {update3d(1);},
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
          child: const Text('3d'),
          ),
          ElevatedButton(
          onPressed: () {update4s(1);},
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
          child: const Text('4s'),
          ),
          ElevatedButton(
          onPressed: () {update4p(1);},
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
          child: const Text('4p'),
          ),
          ElevatedButton(
          onPressed: () {update4d(1);},
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
          child: const Text('4d'),
          ),
          ElevatedButton(
          onPressed: () {update4f(1);},
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
          child: const Text('4f'),
          ),
          ElevatedButton(
          onPressed: () {update5s(1);},
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
          child: const Text('5s'),
          ),
          ElevatedButton(
          onPressed: () {update5p(1);},
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
          child: const Text('5p'),
          ),
          ElevatedButton(
          onPressed: () {update5d(1);},
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
          child: const Text('5d'),
          ),
          ElevatedButton(
          onPressed: () {update5f(1);},
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
          child: const Text('5f'),
          ),
          ElevatedButton(
          onPressed: () {update6s(1);},
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
          child: const Text('6s'),
          ),
          ElevatedButton(
          onPressed: () {update6p(1);},
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
          child: const Text('6p'),
          ),
          ElevatedButton(
          onPressed: () {update6d(1);},
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
          child: const Text('6d'),
          ),
          ElevatedButton(
          onPressed: () {update7s(1);},
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
          child: const Text('7s'),
          ),
          ElevatedButton(
          onPressed: () {update7p(1);},
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
          child: const Text('7p'),
          ),
        ]
    )
  );
  }
}