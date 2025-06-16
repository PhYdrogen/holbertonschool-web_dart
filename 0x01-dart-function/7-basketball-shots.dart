int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamA_total_score = 0;
  int teamB_total_score = 0;
  teamA.entries.forEach((entry) {
    if ((entry.key) == "Free throws") {
      teamA_total_score += entry.value;
    } else if ((entry.key) == "") {
      teamA_total_score += entry.value * 2;
    } else {
      teamA_total_score += entry.value * 3;
    }
  });
  teamB.entries.forEach((entry) {
    if ((entry.key) == "Free throws") {
      teamB_total_score += entry.value;
    } else if ((entry.key) == "") {
      teamB_total_score += entry.value * 2;
    } else {
      teamB_total_score += entry.value * 3;
    };
  });
  if (teamA_total_score > teamB_total_score) return 1;
  if (teamA_total_score < teamB_total_score) return 2;
  if (teamA_total_score == teamB_total_score) return 0;
  return 0;
}