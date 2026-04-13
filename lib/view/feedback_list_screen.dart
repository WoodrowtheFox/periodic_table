import 'package:flutter/material.dart';
import '../presenter/feedback_presenter.dart';
import '../widgets/add_fab.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../model/Feedback_model.dart';

// This is the file for the display of the feedback
class FeedbackListScreen extends StatefulWidget{
  const FeedbackListScreen({super.key});

  @override
  State<FeedbackListScreen> createState() => _FeedbackListScreenState();
}

class _FeedbackListScreenState extends State<FeedbackListScreen> {
  final User? user = FirebaseAuth.instance.currentUser;
  final FeedbackPresenter feedbackpresenter = FeedbackPresenter();
  bool _isLoading = true;

  String newfeedback = '';
  String _editedfeedback = '';
  Feedbacks? delete_index;
  Feedbacks? edit_index;

  // Used to load any previous feedback
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().firstWhere((user) => user != null).then((_) => _loadfeedback());
  }

  // Used to load any previous feedback
  Future<void> _loadfeedback() async {
    try {
    await feedbackpresenter.loadfeedbacks();
  } finally {
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }
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
                  await feedbackpresenter.addfeedback(DateTime.now(), name.trim(), feedback);
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
  void editFeedback() {

  final TextEditingController newFeedbackame = TextEditingController();

  final TextEditingController _editedFeedbackDescriptonController = TextEditingController();
  showDialog(
      context: context,
      builder: (context) {
      return StatefulBuilder(
          builder: (context, setDialogState) {
        return AlertDialog(
          title: const Text('Edit Feedback'),
          content: SizedBox(
            height: 200,
            width: 100, 
            child:ListView(
            children: <Widget>[
            Text("Which entry should be edited?", style: TextStyle(fontSize: 18)),
              SizedBox(
                height: 40,
                width: 75,
                child : DropdownButton<Feedbacks>(
                hint: const Text(
                  'Please select one to edit',
                  ),
                  isDense: true,
                  isExpanded: true,
                  value: edit_index,
                  onChanged: (value){
                    setDialogState(() {
                      edit_index = value;
                    });
                  },
                  items: [
                    ...feedbackpresenter.feedback.map(
                      (Feedback) => DropdownMenuItem(value: Feedback, child: Text(Feedback.feedback))),
                  ],
                ),),
            TextField(
                controller: newFeedbackame,
                decoration: const InputDecoration(hintText: 'What is the new Feedback name?'),
                onChanged: (value){
                newfeedback = value;
            },),
              TextField(
            controller: _editedFeedbackDescriptonController,
            decoration: const InputDecoration(hintText: 'What is the new Feedback description?'),
            onChanged: (value){
              _editedfeedback = value;
            }
          ),
            ],
          )),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), //Cancel Button
              child: const Text('Cancel'),
            ),
            // Edits the database with the new feedback
            TextButton(
              onPressed: () async {
                if (edit_index == null) return;
                await feedbackpresenter.updatefeedback(
                edit_index!,
                newfeedback.trim(),
                _editedfeedback.trim(),
                DateTime.now(),
                );
                setState(() {
                  edit_index = null;
                });
                Navigator.pop(context); //Close Dialog
              },
              child: const Text('Edit'),
            ),
          ],
        );
      },);},
    );
  }
  //Clears all of the feedback in the app and in the data base
  void clear(){
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setDialogState) {
        return AlertDialog(
          title: const Text('Delete Feedback'),
          content: SizedBox(
            height: 200,
            width: 100, 
            child: ListView(
            children: <Widget>[
              Text("Which entry should be deleted?", style: TextStyle(fontSize: 18)),
              SizedBox(
                height: 40,
                width: 75,
                child : DropdownButton<Feedbacks>(
                hint: const Text(
                  'Please select one to delete',
                  ),
                  isDense: true,
                  isExpanded: true,
                  value: delete_index,
                  onChanged: (value){
                    setDialogState(() {
                      delete_index = value;
                    });
                  },
                  items: [
                    ...feedbackpresenter.feedback.map(
                      (Feedback) => DropdownMenuItem(value: Feedback, child: Text(Feedback.feedback))),
                  ],
                ),),
              TextButton(
              onPressed: () async{
                if (delete_index == null) return;
                await feedbackpresenter.deletefeedback(delete_index!);
                setState(() {
                delete_index = null;
                _isLoading = true;
                });
                await _loadfeedback();
                  Navigator.pop(context);
              },
              child: const Text('Delete Entry'),
        ),
        ])));});});}
  @override
  Widget build(BuildContext context){
    final feedbacks = feedbackpresenter.feedback;

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
            subtitle: Text(feedback.feedback)
          );
        },
      ),
      floatingActionButton: AddFAB(onPressed: _showAddFeedbackDialog),
    );
  }
}