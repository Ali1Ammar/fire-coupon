
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


class ActiveCouponException implements Exception {
  ActiveCouponException();
  @override
  String toString()=>"this coupon is used by you now";
}

class InvalidCouponException implements Exception {
  InvalidCouponException();
  @override
  String toString()=>"this coupon is invalid";
}

class InvalidClientCouponException implements Exception {
  InvalidClientCouponException();
  @override
  String toString()=>"this coupon is invalid,";
}

class UnExistCouponException implements Exception {
  UnExistCouponException();
  @override
  String toString()=>"this coupon is not exist";
}

class TryAgainCouponException implements Exception {
  TryAgainCouponException();
  @override
  String toString()=>"you can not try again same coupon";
}