import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/routing/app_navigator.dart';
import '../../config/di/di.dart';
import 'tab_3_bloc.dart';

class TabUcPage extends StatefulWidget {
  const TabUcPage({super.key});

  @override
  State<TabUcPage> createState() => _TabUcPageState();
}

class _TabUcPageState extends State<TabUcPage> {
  final navigator = inject<AppNavigator>();
  @override
  void initState() {
    print("tab3 init");

    super.initState();
  }

  @override
  void dispose() {
    print("tab3 dispose");

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<TabUcBloc>(),
      child: BlocConsumer<TabUcBloc, TabUcState>(
        listener: (context, state) {
          if (state.error != "") {}
        },
        builder: (context, state) {
          final bloc = context.read<TabUcBloc>();
          return FutureBuilder(
              future: bloc.getData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final value =
                      snapshot.data?.docs.map((e) => e.data()).toList();
                  return Scaffold(
                    body: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: value?.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Card(
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    children: [
                                      Text(value?[index]?.firstName ?? ""),
                                      Text(value?[index]?.lastName ?? ""),
                                      Text(value?[index]?.gender ?? ""),
                                      Text(
                                          value?[index]!.birthDate.toString() ??
                                              ""),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
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
