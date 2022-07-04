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
