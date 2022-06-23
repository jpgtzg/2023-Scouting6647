class FeedbackForm {
  String _nameteam;
  String _numteam;
  String _chasis;
  String _wheel;

  FeedbackForm(
    this._nameteam,
    this._numteam,
    this._chasis,
    this._wheel,
  );

  String toParams() =>
      "?nameteam=$_nameteam&numteam=$_numteam&chasis=$_chasis&wheel=$_wheel";
}
