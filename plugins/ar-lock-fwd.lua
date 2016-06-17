--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY AHMED ALOBAIDY                   ▀▄ ▄▀ 
▀▄ ▄▀     BY AHMED ALOBAIDY (@A7mEd_B98)    ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY AHMED ALOBAIDY          ▀▄ ▄▀   
▀▄ ▄▀     lock fwd  : منع اعاده توجيه      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do

local function pre_process(msg)
    
    --Checking mute
    local hash = 'mate:'..msg.to.id
    if redis:get(hash) and msg.fwd_from and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg)  then
            delete_msg(msg.id, ok_cb, true)
            return "done"
        end
    
        return msg
    end

  


local function run(msg, matches)
    chat_id =  msg.to.id
    
    if is_momod(msg) and matches[1] == 'اقفل اعادة التوجية' then
      
            
                    local hash = 'mate:'..msg.to.id
                    redis:set(hash, true)
                    return "تَِم ✔️ قَـفِلَ أعأدِه تــوجيـهَ 🔐✋🏻"
  elseif is_momod(msg) and matches[1] == 'افتح اعادة التوجية' then
      local hash = 'mate:'..msg.to.id
      redis:del(hash)
      return "تَمِ ✔️ فـتَحِ آعأدهِ توجيـهَ 🔓👍"
end

end

return {
    patterns = {
        '^(اقفل اعادة التوجية)$',
        '^(افتح اعادة التوجية)$'
    },
    run = run,
    pre_process = pre_process
}
end
