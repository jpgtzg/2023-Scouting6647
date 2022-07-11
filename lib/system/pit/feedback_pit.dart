class FeedbackPit {
  String _nameteam;
  String _numteam;
  String _chasis;
  String _wheel;

  FeedbackPit(
    this._nameteam,
    this._numteam,
    this._chasis,
    this._wheel,
  );

  String toParams() =>
      "?nameteam=$_nameteam&numteam=$_numteam&chasis=$_chasis&wheel=$_wheel";
}
