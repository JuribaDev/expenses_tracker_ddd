import 'package:equatable/equatable.dart';

abstract class Entity extends Equatable {
  const Entity(this.id);

  final int? id;

  @override
  List<Object?> get props => [id];
}
