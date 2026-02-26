import 'package:flutter/material.dart';
import 'package:periodic_table/model/Feedback_model.dart';
import 'package:periodic_table/model/Feedback_model.dart' as feedbackclass;
import '../presenter/feedback_presenter.dart';
import '../widgets/add_fab.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// This is the file for the display of the feedback
class FeedbackListScreen extends StatefulWidget{
  const FeedbackListScreen({super.key});

  @override
  State<FeedbackListScreen> createState() => _FeedbackListScreenState();
}
final User? user = FirebaseAuth.instance.currentUser;
final FeedbackPresenter feedbackpresenter = FeedbackPresenter();
class _FeedbackListScreenState extends State<FeedbackListScreen> {
  bool _isLoading = true;

  String editedfeedbackname = ' ';
  String newfeedback = ' ';
  String _editedfeedback = ' ';

  // Used to load any previous feedback
  @override
  void initState() {
    super.initState();
    _loadfeedback();
  }

  // Used to load any previous feedback
  Future<void> _loadfeedback() async {
    await feedbackpresenter.loadfeedback();
  }

  // This is for the pop-up window to add any new feedback
  void _showAddFeedbackDialog(){
    String name = '';
    String feedback = '';

    showDialog(
      context: context, 
      builder: (context){
        return AlertDialog(
          title: const Text('Add Feedback'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Name on Feedback'),
                onChanged: (value) => name = value,

              ),
              TextField(
                decoration: const InputDecoration(labelText: 'What Feedback would you like to give?'),
                onChanged: (value) => feedback = value,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () async{
                if (name.trim().isNotEmpty){
                  await feedbackpresenter.addfeedback(name.trim(), feedback);
                  setState(() {});
                  Navigator.pop(context);
                }
              },
              child: const Text('Add'),
            ),
          ],
        );
      }
      );
  }
  int getindex(){
    int index = -1;
    for(feedbackclass.Feedback i in feedbackpresenter.feedbacks){
                      if(i.name == editedfeedbackname){
                        index = feedbackpresenter.feedbacks.indexOf(i);
                      }
                    }
                    return index;
  }
  int getindexnodesc(){
    int index = -1;
    for(feedbackclass.Feedback i in feedbackpresenter.feedbacks){
                      if(i.name == editedfeedbackname){
                        _editedfeedback = i.feedback.toString();
                        index = feedbackpresenter.feedbacks.indexOf(i);
                      }
                    }
                    return index;
  }

  // This is the pop-up that will be used if a person wishes to edit there feedback
  void editFeedback() {

  final TextEditingController _editedFeedbackController = TextEditingController();

  final TextEditingController newFeedbackame = TextEditingController();

  final TextEditingController _editedFeedbackDescriptonController = TextEditingController();
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Feedback'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                controller: _editedFeedbackController,
                autofocus: true,
                decoration: const InputDecoration(hintText: 'Whatis the name of the Feedback to be changed?'),
                onChanged: (value){
                editedfeedbackname = value;
            },),
            TextField(
                controller: newFeedbackame,
                autofocus: true,
                decoration: const InputDecoration(hintText: 'What is the new Feedback name?'),
                onChanged: (value){
                newfeedback = value;
            },),
              TextField(
            controller: _editedFeedbackDescriptonController,
            autofocus:  true,
            decoration: const InputDecoration(hintText: 'What is the new Feedback description?'),
            onChanged: (value){
              _editedfeedback = value;
            }
          ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), //Cancel Button
              child: const Text('Cancel'),
            ),
            // Edits the database with the new feedback
            TextButton(
              onPressed: () async{
                if(editedfeedbackname.trim().isNotEmpty){
                  try{ 
                          await FirebaseFirestore.instance
                          .collection('feedback')
                          .doc(user?.uid)
                          .update({'name': newfeedback.trim(),
                                    'description': _editedfeedback.trim()});
                          }catch (e) {print("Error updating: $e");}
                    setState(() {
                        feedbackpresenter.editfeedback(getindex(), newfeedback.trim(), _editedfeedback.trim());});}
                Navigator.pop(context); //Close Dialog
              },
              child: const Text('Edit'),
            ),
          ],
        );
      },
    );
  }
  //Clears all of the feedback in the app and in the data base
  void clear(){
    setState(() async{
      feedbackpresenter.feedbacks.clear();
      final feedbackcollection = FirebaseFirestore.instance.collection('feeback');
      final snapshots = await feedbackcollection.get();

      for(var doc in snapshots.docs){
        await doc.reference.delete();
      }
    });
  }
  @override
  Widget build(BuildContext context){
    final feedbacks = feedbackpresenter.feedbacks;

    return Scaffold(
      appBar: AppBar(title: const Text('Give Feedback'),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.delete
          ),
          onPressed: clear,
          ),
          IconButton(
            onPressed: editFeedback, 
            icon: const Icon(
              Icons.edit)
          ),
          ],
        ),
      body: 
        _isLoading
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
        itemCount: feedbacks.length,
        itemBuilder: (context, index){
          final feedback = feedbacks[index];
          return ListTile(
            title: Text(feedback.name),
            subtitle: 
              feedback.feedback != null 
              ? Text(feedback.feedback!) 
              : null,
          );
        },
      ),
      floatingActionButton: AddFAB(onPressed: _showAddFeedbackDialog),
    );
  }
}