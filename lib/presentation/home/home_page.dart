import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/routing/app_navigator.dart';
import '../../config/di/di.dart';
import '../common_widgets/custom_error_widget.dart';
import '../common_widgets/loading_widget.dart';
import '../utils/bloc_common.dart';
import 'home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final navigator = inject<AppNavigator>();
    return BlocProvider(
      create: (context) => inject<HomeBloc>()..getHome(),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.error != "") {
            navigator.showInfoScaffold(context, () {}, state.error);
          }
        },
        builder: (context, state) {
          final bloc = context.read<HomeBloc>();
          if (state.stateType == StateType.loading) {
            return const Loading(isLoading: true);
          } else if (state.stateType == StateType.success) {
            return Center(child: Text(bloc.state.toString()));
          } else if (state.stateType == StateType.error) {
            return CustomErrorWidget(errorText: state.pageError);
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
