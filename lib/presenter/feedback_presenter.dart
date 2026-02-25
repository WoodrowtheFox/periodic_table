import '../model/Feedback_model.dart';
// This is the presenter for feedback
class FeedbackPresenter {
  final List<Feedback> _feedback = [];

  List<Feedback> get feedbacks => _feedback;

  // Used for loading previous feedbacks
  Future<void> loadfeedback() async {
    final fetched = await Feedback.fetchfeedback();
    _feedback
      ..clear()
      ..addAll(fetched);
  }

  // This is used for adding new feedback to a database
  Future<void> addfeedback(String name, String feedback) async {
    await Feedback.addfeedback(name, feedback);
    _feedback.add(Feedback(name: name, feedback: feedback));
  }
   // This is used to edit previous feedbacks
  void editfeedback(int index, String name, String feedback){
    _feedback[index].name = name;
    _feedback[index].feedback = feedback;
  }
}