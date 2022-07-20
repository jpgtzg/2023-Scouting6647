class FeedbackPit {
  String _numteam;
  String _nameteam;
  String _chasis;
  String _wheel;

  FeedbackPit(
    this._numteam,
    this._nameteam,
    this._chasis,
    this._wheel,
  );

  String toParams() =>
      "?nameteam=$_nameteam&numteam=$_numteam&chasis=$_chasis&wheel=$_wheel";
}
