import '../model/Feedback_model.dart';

final List<Feedbacks> _feedbacks = [];

class FeedbackPresenter {
  
  List<Feedbacks> get feedback => _feedbacks;

  //Loading feedback
  Future<void> loadfeedbacks() async {
    final fetched = await Feedbacks.fetchfeedback();
    _feedbacks
      ..clear()
      ..addAll(fetched);
  }
  //Adding feedback
  Future<void> addfeedback(DateTime date, String name, String feedback) async {
    await Feedbacks.addfeedback(name, feedback, date);
    _feedbacks.add(Feedbacks(
      date: date, 
      name : name,
      feedback: feedback,
    ));
  }
  //Deleting a feedback entry
  Future<void> deletefeedback(Feedbacks feedbacks) async {
    await Feedbacks.deletefeedback(feedbacks);
    feedback.remove(feedbacks);
  }
  //Updating a previous feedback
  Future<void> updatefeedback(Feedbacks feedbackedit, String name, String feedbacks, DateTime date) async {
    await Feedbacks.updatefeedback(feedbackedit, Feedbacks(name: name, feedback: feedbacks, date: date));
    Feedbacks? remove;
    for(Feedbacks i in feedback){
      if(i.name == feedbackedit.name){
        remove = i;
      }
    }
    feedback.remove(remove);
    feedback.add(Feedbacks(name: name, feedback: feedbacks, date: date));
  }
}