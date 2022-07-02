
class ExpiredCouponException implements Exception {
  ExpiredCouponException();
  @override
  String toString()=>"this coupon is expired";
}

class UsedCouponException implements Exception {
  UsedCouponException();
  @override
  String toString()=>"this coupon is used";
}

class InvalidCouponException implements Exception {
  InvalidCouponException();
  @override
  String toString()=>"this coupon is invalid";
}

class UnExistCouponException implements Exception {
  UnExistCouponException();
  @override
  String toString()=>"this coupon is not exist";
}