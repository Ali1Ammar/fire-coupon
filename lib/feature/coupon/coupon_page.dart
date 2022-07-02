import 'package:coupon/feature/coupon/client/coupon_use_page.dart';
import 'package:coupon/feature/coupon/coupon_controller.dart';
import 'package:coupon/feature/coupon/coupon_list_page.dart';
import 'package:coupon/feature/coupon/logic/coupon_type.dart';
import 'package:coupon/shared/helper/utlis.dart';
import 'package:coupon/shared/widget/dialog.dart';
import 'package:coupon/shared/widget/number_picker.dart';
import 'package:coupon/shared/widget/row_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CouponPage extends HookConsumerWidget {
  const CouponPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final couponController = ref.watch(couponControllerProvider);
    final nameController = useTextEditingController(text: "remove ads");
    final countController = useState(1);
    final dayController = useState(1);
    final weekController = useState(0);
    final state = useState(const AsyncSnapshot.nothing());
    final expireCuponController =
        useState(DateTime.now().add(const Duration(days: 3)));
    final couponTypeController = useState(CouponTypeEnum.removeAdsForDuration);

    return Scaffold(
      appBar: AppBar(
        title: const Text("genrate coupon"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const CouponListPage()));
              },
              icon: const Icon(Icons.list)),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const CouponUsePage()));
              },
              icon: const Icon(Icons.play_arrow))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SinglePicker<CouponTypeEnum>(
                  // axis: Axis.vertical,
                  items: CouponTypeEnum.values,
                  currentValue: couponTypeController.value,
                  getTitle: (v) => v.title,
                  onChanged: (v) {
                    couponTypeController.value = v;
                  }),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: "name"),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text("Count to generate: "),
                  ButtonNumbetPicker(
                    minValue: 1,
                    maxValue: 700,
                    initialValue: 1,
                    iconSize: 12,
                    raduis: 25,
                    onChanged: (val) {
                      countController.value = val.toInt();
                    },
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Center(
              child: Column(
                children: [
                  const Text("expire date"),
                  OutlinedButton(
                      onPressed: () {
                        showDatePicker(
                            context: context,
                            initialDate: expireCuponController.value,
                            firstDate: DateTime.now(),
                            fieldLabelText: "enter date",
                            lastDate: DateTime.now().add(const Duration(days: 360)));
                      },
                      child: Text(formatter.format(expireCuponController.value))),
                ],
              ),
            ),
          ),
          if (couponTypeController.value == CouponTypeEnum.removeAdsForDuration)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: [
                    const Text("duration"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text("days: "),
                          ButtonNumbetPicker(
                            minValue: 0,
                            maxValue: 7,
                            initialValue: 0,
                            onChanged: (val) {
                              dayController.value = val.toInt();
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text("weeks: "),
                          ButtonNumbetPicker(
                            minValue: 0,
                            maxValue: 1000,
                            initialValue: 0,
                            onChanged: (val) {
                              weekController.value = val.toInt();
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          if (state.value.connectionState == ConnectionState.waiting)
            const CircularProgressIndicator()
          else
            Center(
              child: ElevatedButton(
                  onPressed: () async {
                    final Future future;
                    state.value = const AsyncSnapshot.waiting();
                    switch (couponTypeController.value) {
                      case CouponTypeEnum.removeAdsUntilDate:
                        future = couponController.generateRemoveAdsUntilDate(
                          nameController.text,
                          countController.value,
                          expireCuponController.value,
                        );
                        break;
                      case CouponTypeEnum.removeAdsForDuration:
                        future = couponController.generateRemoveAdsForDuration(
                          nameController.text,
                          countController.value,
                          expireCuponController.value,
                          dayController.value,
                          weekController.value,
                        );
                        break;
                    }
                    try {
                      await future;
                      state.value = const AsyncSnapshot.withData(
                          ConnectionState.done, null);
                    } catch (e, s) {
                      showString(context, e.toString());
                      state.value =
                          AsyncSnapshot.withError(ConnectionState.done, e, s);
                      rethrow;
                    }
                  },
                  child: const Text("create")),
            )
        ],
      )),
    );
  }
}
