void addNewScore(int score) {
  for (int i=0; i<scores.length; i++) {
    if (score<=scores[i]) {
      for (int j=scores.length-1; j>=max(i,1); j--) {
        scores[j] = scores[j-1];
      }
      scores[i] = score;
      break;
    }
  }
}
