int whoWins(Map<String, int> team1, Map<String, int> team2) {
  int team1Points = 0;
  int team2Points = 0;

  team1.forEach((key, value) {
    if (key == 'Free throws') {
      team1Points += value;
    } else if (key == '2 pointers') {
      team1Points += value * 2;
    } else if (key == '3 pointers') {
      team1Points += value * 3;
    }
  });

  team2.forEach((key, value) {
    if (key == 'Free throws') {
      team2Points += value;
    } else if (key == '2 pointers') {
      team2Points += value * 2;
    } else if (key == '3 pointers') {
      team2Points += value * 3;
    }
  });

  if (team1Points > team2Points) {
    return 1;
  } else if (team1Points < team2Points) {
    return 2;
  } else {
    return 0;
  }
}
main() {
  var teamA = {'Free throws' : 23, '2 pointers' : 32, '3 pointers': 16};
  var teamB = {'Free throws' : 31, '2 pointers' : 27, '3 pointers': 13};

  print(whoWins(teamA, teamB));
}
