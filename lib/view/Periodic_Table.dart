import 'package:flutter/material.dart';
import 'package:periodic_table/presenter/periodic_presenter.dart';
import 'package:periodic_table/Elements.dart';

class PeriodicTable extends StatefulWidget {
  const PeriodicTable({super.key});
    
   @override
  State<PeriodicTable> createState() => _PerodicGameScreenState();
}
  final PeriodicPresenter _presenter = PeriodicPresenter();
  int index = 0;
class _PerodicGameScreenState extends State<PeriodicTable> {
    String elementname = _presenter.getelement(index).getElementname();
    String atomicnum = _presenter.getelement(index).getAtomicnumber().toString();
    String atomicmass = _presenter.getelement(index).getAtomicmass().toString();
    String groupnum = _presenter.getelement(index).getGroupnumber().toString();
    String valelec = _presenter.getelement(index).getvalenceelectrons().toString();
    String periodnum = _presenter.getelement(index).getPeriodnumber().toString();
    String familyname = _presenter.getelement(index).getFamilyname().toString();
    String commonuse = _presenter.getelement(index).getcommonuses().toString();
    String ionicsate = _presenter.getelement(index).getionicstate().toString();
    void _Quizpopup(){
    showDialog(
      context: context, 
      builder: (context){
        return AlertDialog(
          title: const Text('Element Quiz'),
          content: ListView(
            children: [
              TextField(
                autofocus: true,
                decoration: const InputDecoration(hintText: 'What is the Element Name?'),
              ),
              TextField(
                autofocus: true,
                decoration: const InputDecoration(hintText: 'What is the Atomic Number?'),
              ),
              TextField(
                autofocus: true,
                decoration: const InputDecoration(hintText: 'What is the Atomic Mass?'),
              ),
              TextField(
                autofocus: true,
                decoration: const InputDecoration(hintText: 'What is the Group Number?'),
              ),
              TextField(
                autofocus: true,
                decoration: const InputDecoration(hintText: 'What is the Periodic Number'),
              ),
              TextField(
                autofocus: true,
                decoration: const InputDecoration(hintText: 'What is the number of Valence Electrons?'),
              ),
              TextField(
                autofocus: true,
                decoration: const InputDecoration(hintText: 'What is the Family Name?'),
              ),
              TextField(
                autofocus: true,
                decoration: const InputDecoration(hintText: 'What are(if any) the Common Uses?'),
              ),
              TextField(
                autofocus: true,
                decoration: const InputDecoration(hintText: 'What is its Ionic State?'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        );
      }
      );
  }
    void _elementpopup(){
    showDialog(
      context: context, 
      builder: (context){
        return AlertDialog(
          title: const Text('Element Information'),
          content: ListView(
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
      appBar: AppBar(title: const Text('Perodic Table'),),
      body: ListView(
        children: [ 
          ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ag-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Al-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Am-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ar-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/As-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/At-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Au-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/B-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ba-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Be-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Bh-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Bi-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Bk-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Br-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/C-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ca-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Cd-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ce-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Cf-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Cl-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Cm-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Cn-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Co-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Cr-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Cs-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Cu-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Db-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ds-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Dy-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Er-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Es-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Eu-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/F-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Fe-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Fl-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Fm-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Fr-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ga-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Gd-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ge-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/H-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/He-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Hf-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Hg-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ho-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Hs-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/I-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/In-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ir-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/K-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Kr-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/La-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Li-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Lr-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Lu-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Lv-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Mc-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Md-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Mg-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Mn-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Mo-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Mt-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/N-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Na-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Nb-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Nd-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ne-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Nh-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ni-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/No-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Np-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/O-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Og-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Os-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/P-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Pa-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Pb-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Pd-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Pm-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Po-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Pr-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Pt-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Pu-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ra-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Rb-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Re-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Rf-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Rg-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Rh-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Rn-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ru-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/S-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Sb-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Sc-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Se-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Sg-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Si-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Sm-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Sn-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Sr-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ta-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Tb-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Tc-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Te-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Th-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ti-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Tl-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Tm-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Ts-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/U-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/V-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/W-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Xe-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Y-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Yb-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Zn-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            index = 0;
            _elementpopup();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Image.asset(
            'BaseImages/Zr-base.png',
            width: 238,
            height: 150,
            fit: BoxFit.fill,
          ),
        ),
  ],),
    );
  }
}