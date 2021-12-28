class notification_model{
String _notification_head;
String _notification_dec;
 String _time;

String get notification_head => _notification_head;

  set notification_head(String value) {
    _notification_head = value;
  }

  notification_model(
      this._notification_head, this._notification_dec, this._time);

String get notification_dec => _notification_dec;

String get time => _time;

  set time(String value) {
    _time = value;
  }

  set notification_dec(String value) {
    _notification_dec = value;
  }
}


class quick_finds{
  String _item_name;
  String _item_no;
  quick_finds(this._item_name, this._item_no);

  String get item_no => _item_no;

  set item_no(String value) {
    _item_no = value;
  }

  String get item_name => _item_name;

  set item_name(String value) {
    _item_name = value;
  }
}