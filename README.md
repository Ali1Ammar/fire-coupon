# coupon
## coupon system built with firebase realtime

this project is a simply app that implement a system to generate, create and use a coupon , we built it so any one can copy the logic code and interage it easily with his project

##  many type of coupun 
in general we have two part of types that you should select to create your coupon

## UsedType
determine how your coupon will be used and has the below type
- 1- oneTime : only one person could use it
- 2- countTime : more than on person could use it until we reach a count number
- 3- untilExpire : could be used at any count until it get expired

## EffectType
when your coupon effect will end and his the below type
- 1- untilDate : the effect of the coupon stay until a specific date
- 2- forDuration : the effect of coupon stay for a duration after enabled


## example of coupon type

- 1- we could create a remove ads coupon for only one person (oneTime) and work for week after activeted (forDuration) and sent it as gift to a user.

- 2- we could create a remove ads coupon for the first 10 person used (countTime) and work until 2022/18/6 (untilDate) and then post it on instagram.

- 3- we could create a remove ads coupon work until  2022/18/6 (untilExpire) and work for week after activeted (forDuration) and then share it with youtube video

## how to appliy the effect
this system is not respone of applying the effect of the coupon so if your coupon should remove the ads from the app , you should listen to the coupon stream and add if condition to stop the ads.

there are also a extra field , this is to add any extra detials about the coupon like if you have one coupon for remove ads and other for open a secret level in a game you should add this detials at this field like ,extra=remove-ad extra=secrent-level and then use it to determine the time in the UiFeatureApapter

you could use this field too to store  any other things and data like userId

## Integrate to UI
to easily Integrate the coupons to your ui you should use the following 
- 1- couponUseStreamProvider: to listen to list of active coupon
- 2- UiFeatureApapter: take a list of coupon and convert it to simple field that could be used at the ui ( you must edit this file as you need)
- 3- uiFeatureApapterStreamProvider: to listen to any change at UiFeatureApapter