--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY AHMED ALOBAIDY                   ▀▄ ▄▀ 
▀▄ ▄▀     BY AHMED ALOBAIDY (@AhmEd_B98)    ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY AHMED ALOBAIDY          ▀▄ ▄▀   
▀▄ ▄▀      help dev  : اوامر المطور        ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do

local function run(msg, matches)
local reply_id = msg['id']
if is_sudo(msg) and matches[1]== "اوامر المطور" then
local S = [[  تابع قنلة البوت @dev_ahmed_98

✔️تعمل جميع الاوامر بدون وضع / او !
ا🔸➖🔹➖🔸➖🔹➖🔸

 🤖 ترقية السوبر : لترقيه المجموعة سوبر

 🤖 تفعيل المجموعة : لتفعيل البوت ب المجموعة

 🤖 تعطيل المجموعة : لتعطيل البوت ب المجموعة

 🤖 صعد المدير : لصعد مدير للمجموعه
 
 🤖 اذاعة : لنشر كلمه ب جميع مجموعات البوت

 🤖 تشغيل البوت : لتشغيل البوت ب المجموعة معينه

 🤖 اطفاء البوت :  لاطفاء البوت ب المجموعة معينه

 🤖 اضافة مطور : لاضافه مطور

 🤖 طرد البوت : لطرد البوت من المجموعة

 🤖 جلب ملف : لجلب الملف من السيرفر

 🤖 isup : معه رابط السيرفر لتحسين توقف البوت

 🤖 isup cron : معه رابط السيرفر لتحسين سيرفر
ا🔸➖🔹➖🔸➖🔹➖🔸
🃏🔺للأستفسار:- راسل المطور :- ☢⚜ 
✋🏿👇🏿
#Dev : @AhmEd_B98
#Dev_Channel : @dev_ahmed_98
]]
reply_msg(reply_id, S, ok_cb, false)
end

if not is_sudo(msg) then
local S = "للمطورين فقط 😎🖕🏿"
reply_msg(reply_id, S, ok_cb, false)
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"^(اوامر المطور)$",
},
run = run 
}
end
