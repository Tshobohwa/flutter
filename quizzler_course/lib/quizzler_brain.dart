class Question {
  String question;
  bool answer;

  Question({required this.question, required this.answer});
}

class QuizzlerBrain {
  final List<Question> _questions = [
    Question(
        question: 'The Great Wall of China is visible from space.',
        answer: false),
    Question(
        question:
            'The Eiffel Tower was originally intended to be a temporary structure.',
        answer: true),
    Question(
        question: 'Australia is both a country and a continent.', answer: true),
    Question(
        question: 'Mount Everest is the highest mountain above sea level.',
        answer: true),
    Question(question: 'The currency of Japan is the Yuan.', answer: false),
    Question(
        question: 'The Amazon River is the longest river in the world.',
        answer: false),
    Question(
        question: 'The Mona Lisa is displayed in the Louvre Museum in Paris.',
        answer: true),
    Question(
        question:
            'Vincent van Gogh only sold one painting during his lifetime.',
        answer: true),
    Question(question: 'The moon is larger than Pluto.', answer: true),
    Question(
        question: 'The Sahara Desert is the largest hot desert in the world.',
        answer: true),
  ];

  String getCurrentQuestion(int questionIndex) {
    return _questions[questionIndex].question;
  }

  bool getCurrentAnswer(int questionIndex) {
    return _questions[questionIndex].answer;
  }
}
