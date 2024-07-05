import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tofas_spor_okullari/domain/events/update_home_event.dart';
import 'package:tofas_spor_okullari/presentation/utils/bus_helper.dart';

import '../../app/routing/app_navigator.dart';
import '../../config/di/di.dart';
import '../../data/models/users_model.dart';
import '../common_widgets/custom_card_shape_painter.dart';
import '../common_widgets/custom_error_widget.dart';
import '../common_widgets/loading_widget.dart';
import '../common_widgets/side_animation_widget.dart';
import '../common_widgets/users_card_widget.dart';
import '../main_tab/components/form_field.dart';
import '../utils/bloc_common.dart';
import '../utils/custom_colors.dart';
import 'home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final navigator = inject<AppNavigator>();
  final data = inject<HomeBloc>();
  // late BuildContext _localContext;
  // StreamSubscription<UpdateHomeEvent>? _updateHomeSubscription;

  @override
  void dispose() {
    data.close();
    print("home dispose");
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   _localContext = context;
  //   _updateHomeSubscription =
  //       BusHelper.eventBus.on<UpdateHomeEvent>().listen((event) {
  //     _localContext.read<HomeBloc>().getData();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<HomeBloc>()..getData(),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.stateType == StateType.error) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.pageError),
              backgroundColor: Colors.red,
            ));
          }
          BusHelper.eventBus.on<UpdateHomeEvent>().listen((event) {
            context.read<HomeBloc>().getData();
            print("home listen");
          });
        },
        builder: (context, state) {
          final bloc = context.read<HomeBloc>();
          if (state.stateType == StateType.loading) {
            return const Loading(isLoading: true);
          } else if (state.stateType == StateType.success) {
            List<UsersModel?>? value =
                state.dataUser?.docs.map((e) => e.data()).toList();
            return SideBarWidget(
              drawer: Material(
                child: Stack(
                  children: [
                    Container(
                      color: CustomColors.astral,
                      child: ListView.builder(
                        padding: const EdgeInsets.only(left: 100, top: 100),
                        itemCount: value?.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text("Salon ${value?[index]?.saha ?? ""}"),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: 0,
                      bottom: 0,
                      right: 0,
                      child: CustomPaint(
                        size: const Size(200, 150),
                        painter: CustomCardShapePainter(
                            24, CustomColors.hawkesBlue, Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              child: Scaffold(
                  drawerEnableOpenDragGesture: false,
                  endDrawerEnableOpenDragGesture: false,
                  body: WillPopScope(
                    onWillPop: () async {
                      return false;
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          value != null
                              ? Expanded(
                                  child: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const BouncingScrollPhysics(),
                                          itemCount: value.length,
                                          itemBuilder: (context, index) {
                                            var currentData = value[index];
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20),
                                              child: Slidable(
                                                  key: ValueKey(UniqueKey()),
                                                  endActionPane: ActionPane(
                                                    motion:
                                                        const DrawerMotion(),
                                                    children: [
                                                      SlidableAction(
                                                        flex: 2,
                                                        onPressed: (context) {
                                                          showCupertinoModalBottomSheet(
                                                              topRadius:
                                                                  const Radius
                                                                      .circular(
                                                                      15),
                                                              enableDrag: true,
                                                              useRootNavigator:
                                                                  true,
                                                              isDismissible:
                                                                  true,
                                                              context: context,
                                                              builder: (context) =>
                                                                  FormFieldWidget(
                                                                    isUpdate:
                                                                        true,
                                                                    userId:
                                                                        currentData!
                                                                            .id,
                                                                    area: currentData
                                                                        .saha,
                                                                    birthday: currentData
                                                                        .birthDate
                                                                        .toString(),
                                                                    fileNo: currentData
                                                                        .dosyaNo,
                                                                    gender: currentData
                                                                        .gender,
                                                                    name: currentData
                                                                        .firstName,
                                                                    phoneNo:
                                                                        currentData
                                                                            .phoneNumber,
                                                                    seans: currentData
                                                                        .seans,
                                                                    surname:
                                                                        currentData
                                                                            .lastName,
                                                                    tcNumber:
                                                                        currentData
                                                                            .tcKimlik,
                                                                    isValid:
                                                                        true,
                                                                  )).then(
                                                              (value) {
                                                            if (value != null) {
                                                              data.updateData(
                                                                  value);
                                                              bloc.getData();
                                                            }
                                                          });
                                                        },
                                                        backgroundColor:
                                                            CustomColors
                                                                .hawkesBlue,
                                                        foregroundColor:
                                                            Colors.black,
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        8),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        8)),
                                                        icon: Icons.edit,
                                                        label: 'Düzenle',
                                                      ),
                                                      SlidableAction(
                                                        flex: 1,
                                                        onPressed: (context) {
                                                          data.deleteData(
                                                              currentData?.id
                                                                      .toString() ??
                                                                  "");
                                                          bloc.getData();
                                                        },
                                                        backgroundColor:
                                                            CustomColors.astral,
                                                        foregroundColor:
                                                            Colors.black,
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        8),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            8)),
                                                        icon: Icons.delete,
                                                        label: 'Sil',
                                                      ),
                                                    ],
                                                  ),
                                                  child: CardUsersWidget(
                                                      itemCount: index,
                                                      data: currentData)),
                                            );
                                          })),
                                )
                              : const SizedBox()
                        ],
                      ),
                    ),
                  )),
            );
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
