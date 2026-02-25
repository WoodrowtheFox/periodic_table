import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// This is the model for the feedback seciton of the app
class Feedback {
  String name;
  String feedback;

  Feedback({required this.name, required this.feedback});

  static final _firestore = FirebaseFirestore.instance;
  static final _auth = FirebaseAuth.instance;

  // This is used to get the previous feedback that a user had given from a database
  static Future<List<Feedback>> fetchfeedback() async {
    final userID = _auth.currentUser?.uid;
    if(userID == null) return [];

    final snapshot = await _firestore
      .collection('feedback')
      .where('userId', isEqualTo: userID)
      .get();

    return snapshot.docs.map((doc) {
      final data = doc.data();
      return Feedback(
        name: data['name'],
        feedback: data['description'],
      );
    }).toList();
  }

  // This is used to add a users feedback to the database
  static Future<void> addfeedback(String name, String? feedback) async {
    final userID = _auth.currentUser?.uid;
    if(userID == null) return;

    await _firestore.collection('feedback').add({
      'name': name,
      'description': feedback,
      'userId': userID,
    });
  }
}