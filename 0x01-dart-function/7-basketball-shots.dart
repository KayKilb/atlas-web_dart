int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int calculatePoints(Map<String, int> team) {
    return team['Free throws']! * 1 +
        team['2 pointers']! * 2 +
        team['3 pointers']! * 3;
  }

  int pointsA = calculatePoints(teamA);
  int pointsB = calculatePoints(teamB);
  if (pointsA > pointsB) return 1;
  if (pointsA < pointsB) return 2;
  return 0;
}

void main() {
  var teamA = {'Free throws': 23, '2 pointers': 32, '3 pointers': 16};
  var teamB = {'Free throws': 31, '2 pointers': 27, '3 pointers': 13};
  print(whoWins(teamA, teamB));
}
