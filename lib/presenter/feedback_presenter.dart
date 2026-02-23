import '../model/Feedback_model.dart';

class FeedbackPresenter {
  final List<Feedback> _feedback = [];

  List<Feedback> get feedbacks => _feedback;

  Future<void> loadfeedback() async {
    final fetched = await Feedback.fetchfeedback();
    _feedback
      ..clear()
      ..addAll(fetched);
  }

  Future<void> addfeedback(String name, String feedback) async {
    await Feedback.addfeedback(name, feedback);
    _feedback.add(Feedback(name: name, feedback: feedback));
  }

  void editfeedback(int index, String name, String feedback){
    _feedback[index].name = name;
    _feedback[index].feedback = feedback;
  }
}