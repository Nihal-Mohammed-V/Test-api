abstract class UserEvent {}
class FetchUsers extends UserEvent {}
class FetchUserDetail extends UserEvent {
  final int id;
  FetchUserDetail(this.id);
}