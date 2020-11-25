import 'choice.dart';

class Engine {
  int _storyNumber = 0;

  List<Choice> _storyData = [
    Choice('I\'ll walk, the town is not so far.',
        'It\'s just a tire, how hard it can be!?'),
    Choice('I\'ll hop in. Thanks for the help!',
        'Better ask him if he\'s a murderer first.'),
    Choice('At least he\'s honest. I\'ll climb in.',
        'Wait a minute... I know how to change a tire!'),
    Choice('Please let me go, or i will scream and the police will come.',
        'It\'s him or me! You take the knife, and think... i wont die here this way.'),
    Choice('Restart', ''),
    Choice('Restart', ''),
    Choice('Restart', '')
  ];

  getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  getIndex() {
    return _storyNumber;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 4;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 3;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (choiceNumber == 1 && _storyNumber == 3) {
      _storyNumber = 6;
    } else if (choiceNumber == 2 && _storyNumber == 3) {
      _storyNumber = 5;
    } else if (_storyNumber == 4 || _storyNumber == 5 || _storyNumber == 6) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 ||
        _storyNumber == 1 ||
        _storyNumber == 2 ||
        _storyNumber == 3) {
      return true;
    } else {
      return false;
    }
  }
}
