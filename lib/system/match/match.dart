class Match {
  //General Data
  String? number;
  String? name;
  String? matchnum;
  String? matchtype;
  String? alliance;

  //Autonomus Period
  String? tarmacauto;
  String? lowerauto;
  String? upperauto;

  //Teleoperated Period
  String? lowerteleop;
  String? upperteleop;
  String? defended;
  String? gotdefended;

  //Endgame
  String? rung;

  //Fouls
  String? fouls;
  String? techfouls;

  //Match results
  String? alliancescore;
  String? rp;
  String? won;

  String? comments;

  Match({
    required this.number,
    required this.name,
    required this.matchnum,
    required this.matchtype,
    required this.alliance,
    required this.tarmacauto,
    required this.lowerauto,
    required this.upperauto,
    required this.lowerteleop,
    required this.upperteleop,
    required this.defended,
    required this.gotdefended,
    required this.rung,
    required this.fouls,
    required this.techfouls,
    required this.alliancescore,
    required this.rp,
    required this.won,
    required this.comments,
  });

  @override
  String toString() =>
      'Match{number: $number, name: $name, matchnum: $matchnum, matchtype: $matchtype, alliance: $alliance, tarmacauto: $tarmacauto, lowerauto: $lowerauto, upperauto: $upperauto, lowerteleop: $lowerteleop, upperteleop: $upperteleop, defended: $defended, gotdefended: $gotdefended, -- rung: $rung, fouls: $fouls, techfouls: $techfouls, alliancescore: $alliancescore, rp: $rp, won: $won, comments: $comments}';

  factory Match.fromGsheets(dynamic json) {
    return Match(
      number: json["Number"],
      name: json['Name'],
      matchnum: json['Match number'],
      matchtype: json['Match type'],
      alliance: json['Alliance'],
      tarmacauto: json['Left tarmac'],
      lowerauto: json['Lower hub auto'],
      upperauto: json['Upper hub auto'],
      lowerteleop: json['Lower hub teleop'],
      upperteleop: json['Upper hub teleop'],
      defended: json['Defended'],
      gotdefended: json['Got defended'],
      rung: json['Rung'],
      fouls: json['Fouls'],
      techfouls: json['Tech fouls'],
      alliancescore: json['Alliance score'],
      rp: json['Rp'],
      won: json['Won'],
      comments: json['Comments'],
    );
  }

  Map<String, dynamic> toGsheets() {
    return {
      'Number': number,
      'Name': name,
      'Match number': matchnum,
      'Match type': matchtype,
      'Alliance': alliance,
      'Left tarmac': tarmacauto,
      'Lower hub auto': lowerauto,
      'Upper hub auto': upperauto,
      'Lower hub teleop': lowerteleop,
      'Upper hub teleop': upperteleop,
      'Defended': defended,
      'Got defended': gotdefended,
      'Rung': rung,
      'Fouls': fouls,
      'Tech fouls': techfouls,
      'Alliance score': alliancescore,
      'Rp': rp,
      'Won': won,
      'Comments': comments,
    };
  }

  Map<String, dynamic> toList(){
    return {
      'Number' : number,
      'Name' : name,
      'Image' : "https://4.bp.blogspot.com/-3uyUTVhvMuo/WjAGEF31DhI/AAAAAAAAAEU/6EurwWD_ebc8o5bFfWoclQuhjSm1Aj5sQCK4BGAYYCw/s1600/FRC_Logo.svgS.jpg",
    };
  }
}
