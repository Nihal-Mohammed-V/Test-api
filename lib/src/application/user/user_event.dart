abstract class UserEvent {}
class FetchUsers extends UserEvent {}
class FetchUserDetail extends UserEvent {
  final String id;
  FetchUserDetail(this.id);
}