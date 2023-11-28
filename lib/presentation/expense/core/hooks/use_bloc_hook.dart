import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

T useBloc<T extends BlocBase<Object>>() {
  final context = useContext();
  final bloc = BlocProvider.of<T>(context);
  return bloc;
}
