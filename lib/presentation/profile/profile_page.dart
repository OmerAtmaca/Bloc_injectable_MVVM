import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tofas_spor_okullari/data/models/users_model.dart';
import 'package:tofas_spor_okullari/presentation/common_widgets/users_card_widget.dart';
import 'package:tofas_spor_okullari/presentation/utils/custom_colors.dart';

import '../../app/routing/app_navigator.dart';
import '../../config/di/di.dart';
import '../../domain/events/update_home_event.dart';
import '../common_widgets/custom_card_shape_painter.dart';
import '../common_widgets/side_animation_widget.dart';
import '../main_tab/components/form_field.dart';
import '../utils/bus_helper.dart';
import 'profile_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  final navigator = inject<AppNavigator>();
  final data = inject<ProfileBloc>();

  @override
  void initState() {
    data.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<ProfileBloc>(),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          BusHelper.eventBus.on<UpdateHomeEvent>().listen((event) {
            context.read<ProfileBloc>().getData();
          });
        },
        builder: (context, state) {
          final bloc = context.read<ProfileBloc>();
          return FutureBuilder(
              future: data.getData(),
              builder: (context, snapshot) {
                // if (snapshot.connectionState == ConnectionState.waiting) {
                //   return const Loading(isLoading: true);
                // }
                if (snapshot.hasData) {
                  List<UsersModel?>? value =
                      snapshot.data?.docs.map((e) => e.data()).toList();
                  return SideBarWidget(
                    drawer: Material(
                      child: Stack(
                        children: [
                          Container(
                            color: CustomColors.astral,
                            child: ListView.builder(
                              padding:
                                  const EdgeInsets.only(left: 100, top: 100),
                              itemCount: value?.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(
                                      "Salon ${value?[index]?.saha ?? ""}"),
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
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: ListView.builder(
                                                shrinkWrap: true,
                                                physics:
                                                    const BouncingScrollPhysics(),
                                                itemCount: value.length,
                                                itemBuilder: (context, index) {
                                                  var currentData =
                                                      value[index];
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 20),
                                                    child: Slidable(
                                                        key: ValueKey(
                                                            UniqueKey()),
                                                        endActionPane:
                                                            ActionPane(
                                                          motion:
                                                              const DrawerMotion(),
                                                          children: [
                                                            SlidableAction(
                                                              flex: 2,
                                                              onPressed:
                                                                  (context) {
                                                                showCupertinoModalBottomSheet(
                                                                    topRadius:
                                                                        const Radius.circular(
                                                                            15),
                                                                    enableDrag:
                                                                        true,
                                                                    useRootNavigator:
                                                                        true,
                                                                    isDismissible:
                                                                        true,
                                                                    context:
                                                                        context,
                                                                    builder: (context) =>
                                                                        FormFieldWidget(
                                                                          isUpdate:
                                                                              true,
                                                                          userId:
                                                                              currentData!.id,
                                                                          area:
                                                                              currentData.saha,
                                                                          birthday: currentData
                                                                              .birthDate
                                                                              .toString(),
                                                                          fileNo:
                                                                              currentData.dosyaNo,
                                                                          gender:
                                                                              currentData.gender,
                                                                          name:
                                                                              currentData.firstName,
                                                                          phoneNo:
                                                                              currentData.phoneNumber,
                                                                          seans:
                                                                              currentData.seans,
                                                                          surname:
                                                                              currentData.lastName,
                                                                          tcNumber:
                                                                              currentData.tcKimlik,
                                                                          isValid:
                                                                              true,
                                                                        )).then(
                                                                    (value) {
                                                                  if (value !=
                                                                      null) {
                                                                    bloc.updateData(
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
                                                              borderRadius: const BorderRadius
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
                                                              onPressed:
                                                                  (context) {
                                                                bloc.deleteData(
                                                                    currentData
                                                                            ?.id
                                                                            .toString() ??
                                                                        "");
                                                              },
                                                              backgroundColor:
                                                                  CustomColors
                                                                      .astral,
                                                              foregroundColor:
                                                                  Colors.black,
                                                              borderRadius: const BorderRadius
                                                                      .only(
                                                                  topRight: Radius
                                                                      .circular(
                                                                          8),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          8)),
                                                              icon:
                                                                  Icons.delete,
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
                                // value != null
                                //     ? SizedBox(
                                //         width: MediaQuery.of(context).size.width,
                                //         child: ListView.builder(
                                //           padding: const EdgeInsets.all(16),
                                //           shrinkWrap: true,
                                //           physics: const BouncingScrollPhysics(),
                                //           itemCount: value.length,
                                //           itemBuilder: (context, index) {
                                //             var currentData = value[index];
                                //             return Dismissible(
                                //                 key: ValueKey(index),
                                //                 dragStartBehavior:
                                //                     DragStartBehavior.start,
                                //                 background: Padding(
                                //                   padding: const EdgeInsets.all(8.0),
                                //                   child: Container(
                                //                     decoration: BoxDecoration(
                                //                         color: Colors.green,
                                //                         borderRadius:
                                //                             BorderRadius.circular(8)),
                                //                     child: const Icon(Icons.check),
                                //                   ),
                                //                 ),
                                //                 secondaryBackground: Container(
                                //                   decoration: BoxDecoration(
                                //                       color: Colors.red,
                                //                       borderRadius:
                                //                           BorderRadius.circular(8)),
                                //                   child: const Icon(Icons.cancel),
                                //                 ),
                                //                 onDismissed: (direction) {},
                                //                 confirmDismiss: (direction) async {
                                //                   return false;
                                //                 },
                                //                 child: ListTile(
                                //                     title: CardUsersWidget(
                                //                         data: currentData)));
                                //           },
                                //         ),
                                //       )
                                //     : const SizedBox(),
                              ],
                            ),
                          ),
                        )),
                  );
                } else {
                  return const SizedBox();
                }
              });
        },
      ),
    );
  }
}
