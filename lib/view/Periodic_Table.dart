import 'package:flutter/material.dart';
import 'package:periodic_table/presenter/periodic_presenter.dart';
import 'package:periodic_table/Elements.dart';
// This is the file for displaying all the elements of the periodic table
class PeriodicTable extends StatefulWidget {
  const PeriodicTable({super.key});
    
   @override
  State<PeriodicTable> createState() => _PerodicGameScreenState();
}
  final PeriodicPresenter _presenter = PeriodicPresenter();
  int currentIndex = 0;
  int index = 0;
  TextEditingController atomicnum_masscont = new TextEditingController();
  TextEditingController Period_groupcont = new TextEditingController();
  TextEditingController valeleccont = new TextEditingController();
  TextEditingController family_namecont = new TextEditingController();
  TextEditingController commoncont = new TextEditingController();
  TextEditingController ioniccont = new TextEditingController();

  bool atomicnum_massanswer = false;
  bool Period_groupanswer = false;
  bool valelecanswer = false;
  bool family_nameanswer = false;
  bool commonuseanswer = false;
  bool ionicanswer = false;

  String elementname = '';
  String atomicnum = '';
  String atomicmass = '';
  String groupnum = '';
  String valelec = '';
  String periodnum = '';
  String familyname = '';
  String commonuse = '';
  String ionicsate = '';
class _PerodicGameScreenState extends State<PeriodicTable> {
    // this is used to change the data in the pop-up menu for the element button that was pressed
    void updateElementData(int index){
      var element = _presenter.getelement(index);

      setState(() {
        currentIndex = index;
        elementname = element.getElementname();
        atomicnum = element.getAtomicnumber().toString();
        atomicmass = element.getAtomicmass().toString();
        groupnum = element.getGroupnumber().toString();
        valelec = element.getvalenceelectrons().toString();
        periodnum = element.getPeriodnumber().toString();
        familyname = element.getFamilyname().toString();
        commonuse = element.getcommonuses().toString();
        ionicsate = element.getionicstate().toString();
      });
    }
    // This is used to check the users answer in the quiz
    void _checkanswer(){
      if(atomicnum_masscont.toString().trim() == (atomicnum + atomicmass) ||atomicnum_masscont.toString().trim() == (atomicmass+ atomicnum)){
        setState(() {
          atomicnum_massanswer = true;
        });
      }
      if(Period_groupcont.toString().trim() == (groupnum + periodnum) ||Period_groupcont.toString().trim() == (periodnum + groupnum)){
        setState(() {
          Period_groupanswer = true;
        });
      }
      if(valeleccont.toString().trim() == (valelec)){
        setState(() {
          valelecanswer = true;
        });
      }
      if(family_namecont.toString().trim() == (familyname)){
        setState(() {
          family_nameanswer = true;
        });
      }
      if(commoncont.toString().trim() == (commonuse)){
        setState(() {
          commonuseanswer = true;
        });
      }
      if(ioniccont.toString().trim() == (ionicsate)){
        setState(() {
          ionicanswer = true;
        });
      }
    }
    // This is to display a quiz that users can take about an element
    void _Quizpopup(){
    showDialog(
      context: context, 
      builder: (context){
        return AlertDialog(
          title: const Text('Element Quiz'),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: atomicnum_masscont,
                autofocus: true,
                decoration: const InputDecoration(hintText: 'What is the Atomic Number and Mass?'),
                style: TextStyle(
                decoration: atomicnum_massanswer
                ? TextDecoration.lineThrough
                : TextDecoration.none,
              ),
              ),
              TextField(
                controller: Period_groupcont,
                autofocus: true,
                decoration: const InputDecoration(hintText: 'What is the Period and Group Number?'),
                style: TextStyle(
                decoration: Period_groupanswer
                ? TextDecoration.lineThrough
                : TextDecoration.none,
              ),
              ),
              TextField(
                controller: valeleccont,
                autofocus: true,
                decoration: const InputDecoration(hintText: 'What is the number of Valence Electrons?'),
                style: TextStyle(
                decoration: valelecanswer
                ? TextDecoration.lineThrough
                : TextDecoration.none,
              ),
              ),
              TextField(
                controller: family_namecont,
                autofocus: true,
                decoration: const InputDecoration(hintText: 'What is the Family Name?'),
                style: TextStyle(
                decoration: family_nameanswer
                ? TextDecoration.lineThrough
                : TextDecoration.none,
              ),
              ),
              TextField(
                controller: commoncont,
                autofocus: true,
                decoration: const InputDecoration(hintText: 'What are(if any) the Common Uses?'),
                style: TextStyle(
                decoration: commonuseanswer
                ? TextDecoration.lineThrough
                : TextDecoration.none,
              ),
              ),
              TextField(
                controller: ioniccont,
                autofocus: true,
                decoration: const InputDecoration(hintText: 'What is its Ionic State?'),
                style: TextStyle(
                decoration: ionicanswer
                ? TextDecoration.lineThrough
                : TextDecoration.none,
              ),
          )],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
            TextButton(
              onPressed: () async{
                _checkanswer();
              },
              child: const Text('Check'),
        )],
        );
      }
      );
  }
    // this is used to display data about an element after the button is pressed
    void _elementpopup(){
    showDialog(
      context: context, 
      builder: (context){
        return AlertDialog(
          title: const Text('Element Information'),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Element Name: ' + elementname),
              Text('Atomic Number: ' + atomicnum),
              Text('Atomic Mass: ' + atomicmass),
              Text('Group Number: ' + atomicmass),
              Text('Periodic Number: ' + periodnum),
              Text('Valance Electrons: ' + valelec),
              Text('Family Name: ' + familyname),
              Text('Common Uses: ' + commonuse),
              Text( 'Ionic State: ' + ionicsate),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
            TextButton(
              onPressed: () async{
                _Quizpopup();
              },
              child: const Text('Quiz'),
            ),
          ],
        );
      }
      );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perodic Table'),),
      body: ListView(
        children: [ 
        ElevatedButton(
          onPressed: () {
            updateElementData(0);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/H-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(1);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/He-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(2);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Li-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(3);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Be-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(4);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/B-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(5);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/C-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(6);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/N-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(7);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/O-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(8);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/F-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(9);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ne-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(10);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Na-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(11);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Mg-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(12);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Al-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(13);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Si-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(14);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/P-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(15);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/S-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(16);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Cl-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(17);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ar-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(18);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/K-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(19);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ca-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(20);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Sc-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(21);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ti-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(22);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/V-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(23);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Cr-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(24);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Mn-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(25);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Fe-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(26);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Co-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(27);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ni-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(28);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Cu-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(29);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Zn-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(30);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ga-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(31);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ge-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(32);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/As-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(33);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Se-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(34);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Br-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(35);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Kr-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(36);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Rb-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(37);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Sr-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(38);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Y-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(39);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Zr-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(40);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Nb-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(41);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Mo-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(42);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Tc-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(43);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ru-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(44);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Rh-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(45);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Pd-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(46);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ag-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(47);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Cd-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(48);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/In-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(49);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Sn-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(50);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Sb-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(51);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Te-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(52);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/I-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(53);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Xe-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(54);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Cs-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(55);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ba-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(56);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/La-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(57);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ce-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(58);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Pr-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(59);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Nd-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(60);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Pm-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(61);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Sm-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(62);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Eu-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(63);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Gd-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(64);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Tb-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(65);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Dy-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(66);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ho-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(67);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Er-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(68);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Tm-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(69);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Yb-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(70);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Lu-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(71);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Hf-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(72);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ta-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(73);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/W-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(74);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Re-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(75);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Os-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(76);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ir-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(77);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Pt-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(78);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Au-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(79);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Hg-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(80);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Tl-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(81);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Pb-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(82);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Bi-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(83);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Po-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(84);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/At-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(85);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Rn-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(86);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Fr-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(87);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ra-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(88);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ac-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(89);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Th-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(90);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Pa-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(91);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/U-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(92);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Np-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(93);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Pu-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(94);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Am-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(95);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Cm-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(96);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Bk-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(97);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Cf-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(98);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Es-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(99);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Fm-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(100);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Md-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(101);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/No-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(102);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Lr-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(103);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Rf-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(104);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Db-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(105);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Sg-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(106);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Bh-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(107);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Hs-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(108);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Mt-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(109);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ds-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updateElementData(110);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Rg-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ), 
        ElevatedButton(
          onPressed: () {
            updateElementData(111);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Cn-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
         ElevatedButton(
          onPressed: () {
            updateElementData(112);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Nh-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
         ElevatedButton(
          onPressed: () {
            updateElementData(113);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Fl-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
         ElevatedButton(
          onPressed: () {
            updateElementData(114);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Mc-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
         ElevatedButton(
          onPressed: () {
            updateElementData(115);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Lv-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
         ElevatedButton(
          onPressed: () {
            updateElementData(116);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ts-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
         ElevatedButton(
          onPressed: () {
            updateElementData(117);
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Og-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
  ],),
    );
  }
}