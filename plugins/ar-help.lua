do

function run(msg, matches)
  return [[ 
تابع قناة البوت @dev_ahmed_98

✔️تعمل جميع الاوامر بدون وضع / او !
ا🔸➖🔹➖🔸➖🔹➖🔸

❣ مساعدة 1 : لعرض الاوامر الريئسيه

❣ مساعدة 2  :لعرض الاوامر الثانويه
          [ويمكن للعضو استخدامها]

❣اوامر المطور : لعرض اوامر المطور

❣dev  : لعرض من صنع البوت اوالسورس

ا🔸➖🔹➖🔸➖🔹➖🔸
👇🏿تأبعـونأَ كل جَديد عل قنأةَ السورس👇🏿
                 [ @S94IQ ]
👇🏿للأستفسار:- راسل المطور:- ☢⚜ 
❣ #Dev : @A7mEd_B98

]]


end

return {
description = "Help list", 
usage = "Help list",
patterns = {
"^(الاوامر)$",
},
run = run 
}
end