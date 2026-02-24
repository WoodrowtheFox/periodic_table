import 'package:flutter/material.dart';
import 'package:periodic_table/model/Feedback_model.dart';
import 'package:periodic_table/model/Feedback_model.dart' as feedbackclass;
import '../presenter/feedback_presenter.dart';
import '../widgets/add_fab.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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

  @override
  void initState() {
    super.initState();
    _loadfeedback();
  }

  Future<void> _loadfeedback() async {
    await feedbackpresenter.loadfeedback();
    setState(() => _isLoading = false);
  }

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
            TextButton(
              onPressed: () async{
                if(editedfeedbackname.trim().isNotEmpty){
                  try{ 
                          await FirebaseFirestore.instance
                          .collection('feedback')
                          .doc(user?.uid)
                          .update({'name': newfeedback,
                                    'description': _editedfeedback});
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
  void clear(){
    setState(() {
      feedbackpresenter.feedbacks.clear();
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
        IconButton(
          icon: const Icon(
            Icons.search
          ),
          onPressed: () {
            showSearch( 
              context: context,
              delegate: forsearch(),
              );
            },
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
class forsearch extends SearchDelegate {

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }
  @override
  Widget buildResults(BuildContext context) {
    List<String> courselist = [];
    for (var Feedback in feedbackpresenter.feedbacks) {
      if (Feedback.name.toLowerCase().contains(query.toLowerCase())) {
        courselist.add(Feedback.name);
      }
    }
     return ListView.builder(
      itemCount: courselist.length,
      itemBuilder: (context, index) {
        var result = courselist[index];
        return ListTile(title: Text(result));
      },
    );
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> courselist = [];
    for (var Feedback in feedbackpresenter.feedbacks) {
      if (Feedback.name.toLowerCase().contains(query.toLowerCase())) {
        courselist.add(Feedback.name);
      }
    }
     return ListView.builder(
      itemCount: courselist.length,
      itemBuilder: (context, index) {
        var result = courselist[index];
        return ListTile(title: Text(result));
      },
    );
  }
}