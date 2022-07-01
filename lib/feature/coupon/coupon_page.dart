import 'package:coupon/feature/coupon/coupon_controller.dart';
import 'package:coupon/feature/coupon/coupon_list_page.dart';
import 'package:coupon/feature/coupon/logic/coupon_service.dart';
import 'package:coupon/feature/coupon/logic/coupon_type.dart';
import 'package:coupon/shared/widget/dialog.dart';
import 'package:coupon/shared/widget/number_picker.dart';
import 'package:coupon/shared/widget/row_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CouponPage extends HookConsumerWidget {
  const CouponPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final couponController =
        ref.watch(couponControllerProvider);
    final nameController = useTextEditingController();
    final countController = useState(1);
    final dayController = useState(1);
    final weekController = useState(0);
    final state = useState(const AsyncSnapshot.nothing());
    final expireCuponController =
        useState(DateTime.now().add(const Duration(days: 3)));
    final couponTypeController = useState(CouponTypeEnum.removeAdsForDuration);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push( MaterialPageRoute(builder: (_)=>CouponListPage()) );
          }, icon: Icon(Icons.list) )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SinglePicker<CouponTypeEnum>(
                axis: Axis.vertical,
                items: CouponTypeEnum.values,
                currentValue: couponTypeController.value,
                getTitle: (v) => v.arabicTitle,
                onChanged: (v) {
                  couponTypeController.value = v;
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: "اسم"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text("العدد: "),
                ButtonNumbetPicker(
                  minValue: 1,
                  maxValue: 700,
                  initialValue: 1,
                  onChanged: (val) {
                    countController.value = val.toInt();
                  },
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                const Text("انتهاء  صلاحية الاستخدام"),
                InputDatePickerFormField(
                  initialDate: expireCuponController.value,
                  firstDate: DateTime.now(),
                  fieldLabelText: "ادخل تاريخ",
                  lastDate: DateTime.now().add(const Duration(days: 365)),
                  onDateSaved: (date) {
                    expireCuponController.value = date;
                  },
                ),
              ],
            ),
          ),
          if (couponTypeController.value == CouponTypeEnum.removeAdsForDuration)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: [
                    const Text("وقت الكوبون"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text("يوم: "),
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
                          const Text("اسبوع: "),
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
            ElevatedButton(
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
                    showString(context,e.toString());
                    state.value =
                        AsyncSnapshot.withError(ConnectionState.done, e, s);
                                            rethrow;

                  }
                },
                child: const Text("انشاء"))
        ],
      )),
    );
  }
}
