class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> shuffledList() {
    // List<String> tempList = answers;

// list.of(answers) returns a new copied list

// here we are doing chainning basically calling
// list.of(answers) and then applying .shuffle() on its results

    final shuffledlist = List.of(answers);

/*
 Note :- here we can have a question that how a final 
 shuffledlist can be shuffled or changed
 But Note Here final only ensures that you can't reassign
 the variable. 
 we are just Editing The List Items.

  
 */

    shuffledlist.shuffle();

    return shuffledlist;
  }
}
