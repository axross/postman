import 'package:caramel/domains.dart';

/// An entity expressing a posted message in a [Chat].
abstract class ChatMessage with Entity {
  /// The user who posted the message.
  UserReference get sender;

  /// The [DateTime] when the message posted.
  DateTime get sentAt;

  /// The users who has read the message.
  StatefulStream<List<User>> get readBy;
}

/// An entity of "text" type [ChatMessage].
abstract class TextChatMessage extends ChatMessage {
  /// The body of the message.
  String get body;
}
