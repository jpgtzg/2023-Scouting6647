class FeedbackMatch {
  //General Data
  String _numteam;
  String _nameteam;
  String _matchnum;
  String _matchtype;
  String _alliance;

  //Autonomus Period
  String _tarmacauto;
  String _lowerauto;
  String _upperauto;

  //Teleoperated Period
  String _lowerteleop;
  String _upperteleop;
  String _defended;
  String _gotdefended;

  //Endgame
  String _rung;

  //Fouls
  String _fouls;
  String _techfouls;

  //Match results
  String _alliancescore;
  String _rp;
  String _won;

  String _comment;

  FeedbackMatch(
    this._numteam,
    this._nameteam,
    this._matchnum,
    this._matchtype,
    this._alliance,
    this._tarmacauto,
    this._lowerauto,
    this._upperauto,
    this._lowerteleop,
    this._upperteleop,
    this._defended,
    this._gotdefended,
    this._rung,
    this._fouls,
    this._techfouls,
    this._alliancescore,
    this._rp,
    this._won,
    this._comment,
  );

  String toParams() =>
      "?numteam=$_numteam&nameteam=$_nameteam&matchnum=$_matchnum&matchtype=$_matchtype&alliance=$_alliance&tarmacauto=$_tarmacauto&lowerauto=$_lowerauto&upperauto=$_upperauto&lowerteleop=$_lowerteleop&upperteleop=$_upperteleop&defended=$_defended&gotdefended=$_gotdefended&rung=$_rung&fouls=$_fouls&techfouls=$_techfouls&alliancescore=$_alliancescore&rp=$_rp&won=$_won&comment=$_comment&";
}
