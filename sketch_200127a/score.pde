void addNewScore() {
  if (run==0) {
    for (int i=0; i<scores.length; i++) {
      if (score<=scores[i]) {    
        for (int j=scores.length-1; j>=max(i, 1); j--) {
          scores[j] = scores[j-1];
        }
        scores[i] = score;


        break;
      }
    }
  }

  if (run==1) {
    for (int i=0; i<scores2.length; i++) {
      if (score2<=scores2[i]) {
        for (int j=scores2.length-1; j>=max(i, 1); j--) {
          scores2[j] = scores2[j-1];
        }
        scores2[i] = score2;


        break;
      }
    }
  }
  int i=0;
  while (i < scores.length) {

  sScores[i] = scores[i]+"";
  i++;
}
i=0;
  while (i < scores2.length) {

  sScores2[i] = scores2[i]+"";
  i++;
}
  //-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= 
  saveStrings("list.txt", sScores);
  saveStrings("list2.txt", sScores2);
  //-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
}
