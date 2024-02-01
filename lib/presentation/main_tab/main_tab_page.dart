import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tofas_spor_okullari/domain/events/update_side_event.dart';
import 'package:tofas_spor_okullari/presentation/utils/bloc_common.dart';

import '../../app/routing/app_navigator.dart';
import '../../app/routing/app_router.dart';
import '../../config/di/di.dart';
import '../../domain/events/update_home_event.dart';
import '../common_widgets/custom_bottom_navigation.dart';
import '../utils/bus_helper.dart';
import 'components/form_field.dart';
import 'main_tab_bloc.dart';

class MainTabPage extends StatelessWidget {
  MainTabPage({super.key});

  final pageController = PageController();
  final navigator = inject<AppNavigator>();
  final bloc = inject<MainTabBloc>();
  final _focusNode = FocusScopeNode();

  @override
  Widget build(BuildContext context) => AutoTabsRouter.pageView(
        routes: const [ProfilePath(), HomePath()],
        physics: const NeverScrollableScrollPhysics(),
        builder: (context, child, _) => BlocProvider(
          create: (context) => bloc,
          child: BlocConsumer<MainTabBloc, MainTabState>(
              listener: (context, state) {
            if (state.stateType == StateType.success) {}
          }, builder: (context, state) {
            BusHelper.eventBus.on<UpdateSideEvent>().listen((event) {
              context.read<MainTabBloc>().updateSide(event.side);
            });
            return Scaffold(
              backgroundColor: state.isUpdateSide ? Colors.black : Colors.white,
              body: child,
              bottomNavigationBar: BottomAppBar(
                  shape: const CircularNotchedRectangle(),
                  notchMargin: 20,
                  color: Colors.blueAccent,
                  child: CustomBottomNavigation(
                    onPositionChanged: (position) {
                      _focusNode.unfocus();
                      context.tabsRouter.setActiveIndex(position);
                    },
                  )),
              appBar: AppBar(
                automaticallyImplyLeading: false,
                actions: [
                  IconButton(
                      onPressed: () {
                        bloc.logout();
                        navigator.pushNamedReplaced(AppNavigator.loginPath);
                      },
                      icon: const Icon(Icons.logout))
                ],
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              floatingActionButton: FloatingActionButton(
                child: const Icon(Icons.add_outlined),
                onPressed: () {
                  showCupertinoModalBottomSheet(
                          topRadius: const Radius.circular(15),
                          enableDrag: true,
                          useRootNavigator: true,
                          isDismissible: true,
                          context: context,
                          builder: (context) => const FormFieldWidget())
                      .then((value) {
                    if (value != null) {
                      context.read<MainTabBloc>().addData(model: value);
                    }
                    BusHelper.eventBus.fire(UpdateHomeEvent(true));
                  });
                },
              ),
            );
          }),
        ),
      );
}
