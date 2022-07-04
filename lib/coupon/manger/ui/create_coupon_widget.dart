import 'package:coupon/coupon/manger/coupon_controller.dart';
import 'package:coupon/coupon/manger/coupon_page_state.dart';
import 'package:flutter/material.dart';
import 'package:coupon/coupon/types/effect/coupon_effect_type.dart';
import 'package:coupon/coupon/types/used/coupon_used_type.dart';
import 'package:coupon/shared/helper/utlis.dart';
import 'package:coupon/shared/widget/number_picker.dart';
import 'package:coupon/shared/widget/row_picker.dart';

class CreateCouponWidget extends StatelessWidget {
  const CreateCouponWidget({
    Key? key,
    required this.couponController,
    required this.data,
  }) : super(key: key);

  final CouponController couponController;
  final InitState data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ourCard(
          child: SinglePicker<CouponEffectTypeEnum>(
              // axis: Axis.vertical,
              items: CouponEffectTypeEnum.values,
              currentValue: data.couponEffectType,
              getTitle: (v) => v.title,
              onChanged: (v) {
                couponController
                    .changeState(data.copyWith(couponEffectType: v));
              }),
        ),
        ourCard(
          child: SinglePicker<CouponUsedTypeEnum>(
              // axis: Axis.vertical,
              items: CouponUsedTypeEnum.values,
              currentValue: data.couponUsedTypeEnum,
              getTitle: (v) => v.title,
              onChanged: (v) {
                couponController
                    .changeState(data.copyWith(couponUsedTypeEnum: v));
              }),
        ),
        ourCard(
          child: TextField(
            onChanged: (v) {
              couponController.changeState(data.copyWith(name: v));
            },
            decoration: const InputDecoration(labelText: "name"),
          ),
        ),
        ourCard(
          child: Row(
            children: [
              const Text("Number of Coupon: "),
              ButtonNumbetPicker(
                minValue: 1,
                maxValue: 700,
                initialValue: 1,
                iconSize: 12,
                raduis: 25,
                onChanged: (val) {
                  couponController
                      .changeState(data.copyWith(countCoupon: val.toInt()));
                },
              ),
            ],
          ),
        ),
        ourCard(
          child: Center(
            child: Column(
              children: [
                const Text("expire date"),
                OutlinedButton(
                    onPressed: () {
                      showDatePicker(
                          context: context,
                          initialDate: data.expireCupon,
                          firstDate: DateTime.now(),
                          fieldLabelText: "enter date",
                          lastDate:
                              DateTime.now().add(const Duration(days: 360)));
                    },
                    child: Text(formatter.format(data.expireCupon))),
              ],
            ),
          ),
        ),
        if (data.couponEffectType == CouponEffectTypeEnum.forDuration)
          ourCard(
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
                          couponController
                              .changeState(data.copyWith(day: val.toInt()));
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
                          couponController
                              .changeState(data.copyWith(week: val.toInt()));
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        if (data.couponUsedTypeEnum == CouponUsedTypeEnum.countTime)
          ourCard(
            child: Row(
              children: [
                const Text("Number of Used: "),
                ButtonNumbetPicker(
                  minValue: 2,
                  maxValue: 700,
                  initialValue: 2,
                  iconSize: 12,
                  raduis: 25,
                  onChanged: (val) {
                    couponController
                        .changeState(data.copyWith(countUsed: val.toInt()));
                  },
                ),
              ],
            ),
          ),
        Center(
          child: ElevatedButton(
              onPressed: () async {
                couponController.pressClick();
              },
              child: const Text("create")),
        )
      ],
    ));
  }

  Widget ourCard({required Widget child}) => Card(
        child: Padding(padding: const EdgeInsets.all(8), child: child),
      );
}
