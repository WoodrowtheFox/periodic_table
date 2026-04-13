import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// This is the model for the feedback seciton of the app
class Feedbacks {
  String name;
  String feedback;
  DateTime? date;

  Feedbacks({required this.name, required this.feedback, required this.date});

  static final _firestore = FirebaseFirestore.instance;
  static final _auth = FirebaseAuth.instance;

  // This is used to get the previous feedback that a user had given from a database
  static Future<List<Feedbacks>> fetchfeedback() async {
    final userID = _auth.currentUser?.uid;
    if(userID == null) return [];

    final snapshot = await _firestore
      .collection('feedback')
      .where('userId', isEqualTo: userID)
      .get();

    return snapshot.docs.map((doc) {
      final data = doc.data();
      return Feedbacks(
        name: data['name'],
        feedback: data['description'],
        date: (data['date']as Timestamp?)?.toDate(),
      );
    }).toList();
  }

  // This is used to add a users feedback to the database
  static Future<void> addfeedback(String name, String? feedback, DateTime date) async {
    final userID = _auth.currentUser?.uid;
    if(userID == null) return;

    await _firestore.collection('feedback').add({
      'name': name,
      'description': feedback,
      'userId': userID,
      'date' : date
    });
  }
  //This is used for deleting someones feedback
  static Future<void> deletefeedback(Feedbacks feedback) async {
    final userID = _auth.currentUser?.uid;
    if (userID == null ) return;

    var result = await _firestore
    .collection('feedback')
    .where('userId', isEqualTo: userID)
    .where('description', isEqualTo: feedback.feedback)
    .limit(1)
    .get();

    for (var doc in result.docs) {
      await doc.reference.delete();
    }
  }
  //This is used for updating someones feedback
  static Future<void> updatefeedback(Feedbacks edit, Feedbacks feedback) async {
    final userID = _auth.currentUser?.uid;
    if (userID == null ) return;
    

    final QuerySnapshot snapshot = await _firestore
    .collection('feedback')
    .where('userId', isEqualTo: userID)
    .where('date', isEqualTo: Timestamp.fromDate(edit.date!))
    .limit(1)
    .get();

    if (snapshot.docs.isEmpty) return;
    final docRef = snapshot.docs.first.reference;
    
    await docRef.update({
      'description' : feedback.feedback,
      'name' : feedback.name,
    });
  }
}