// ignore_for_file: file_names

class MessagesModel {
  final String messageText;
  int? _user;
  // ignore: non_constant_identifier_names
  set User(int numberUser) {
    if (numberUser % 2 == 0) {
      _user = 0;
    } else {
      _user = 1;
    }
  }

  // ignore: non_constant_identifier_names
  int get User => _user ?? 0;
  // ignore: no_leading_underscores_for_local_identifiers
  MessagesModel(user, {required this.messageText}) {
    User = user;
  }
}
