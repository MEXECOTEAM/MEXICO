--[[
--=> تمت كتابه السورس بواسطه
--==>>    بواسطه المطور @VI_P2 <<==
-- للمزيد من المعلومات تابع 🌐┊MEXECOTEAM┇@MEXIC_TV
--]]
redis = require('redis') json = dofile('./JSON.lua')  URL = require('socket.url')  HTTPS = require ("ssl.https")  https = require ("ssl.https") http  = require ("socket.http") serpent = require("serpent")
tahadevstorm = redis.connect('127.0.0.1', 6379)
function vardump(value)  print(serpent.block(value, {comment=false}))  end local AutoSet = function()
io.write('\n\27[135mⓂ ❯❯ { قم بارسال ايدي المطور الاساسي } \n    \27[03949m')  local SUDO = tonumber(io.read())  if not tostring(SUDO):match('%d+') then SUDO = 373906612  end
io.write('\n\27[135mⓂ ❯❯ { قم بارسال معرف المطور بدون @ } \n    \27[03949m')  local user = io.read() 
io.write('\n\27[135mⓂ ❯❯ { قم بارسال التوكن الخاص بك } \n    \27[03949m')   local token = io.read()  botid = token:match("(%d+)")
io.write('\n\27[135mⓂ ❯❯ { قم بارسال اسم البوت } \n    \27[03949m')  local name = io.read() 
local create = function(data, file, uglify)  file = io.open(file, "w+")   local serialized   if not uglify then  serialized = serpent.block(data, {comment = false, name = "_"})  else  serialized = serpent.dump(data)  end    file:write(serialized)    file:close()  end
local create_config_auto = function()
config = {
SUDO = SUDO,
sudo_users = {SUDO},
token = token,
BOTS = botid,
sudouser = user,
botname = name,
bot_id = botid, }
create(config, "./config.lua")   
print("\27[735m"..[[ •❮🔵❯• >> تم صنع ملف الكونفك بنجاح << •❮🔵❯•   ]].."\n\27[10m") end create_config_auto()
file = io.open("MEXICO.sh", "w")
file:write([[
token="]]..token..[["
curl "https://api.telegram.org/bot"$token"/sendmessage" -F
./tg -s ./MEXICO.lua $@ --bot=$token
]])
file:close()
os.execute('screen -S -X  ./MEXICO.sh')
print("\27[735m"..[[ • ࿇ • { تم صنع ملف الرن الخاص في البوت } • ࿇ •     ]].."\n\27[10m")
print("\27[735m"..[[]].."\n\27[10m")
print("\27[738m"..[[]].."\n\27[10m")
print("\27[737m"..[[]].."")
print("\27[737m"..[[ 📥 تم اكتمال تنصيب السورس بنجاح ✔ •]].."")
print("\27[737m"..[[]].."") end
local serialize_to_file = function(data, file, uglify)  file = io.open(file, "w+")  local serialized  if not uglify then   serialized = serpent.block(data, {comment = false, name = "_"})  else   serialized = serpent.dump(data) end  file:write(serialized)  file:close() end local load_tahadevstorm = function()  local f = io.open("./config.lua", "r")  if not f then   AutoSet()  else   f:close()  end  local config = loadfile("./config.lua")() return config end  _tahadevstorm = load_tahadevstorm()
sudos = dofile("config.lua") SUDO = sudos.SUDO sudo_users = {sudos.SUDO} BOTS = sudos.bot_id bot_id = sudos.bot_id botname = sudos.botname sudouser = sudos.sudouser chaneel = sudos.token function dl_cb(arg, data) end 
function is_devtaha(msg) local ta = false for k,v in pairs(sudo_users) do if msg.sender_user_id_ == v then ta = true end end return ta end 
function is_sudo(msg)  local hash = tahadevstorm:sismember('sudo:bot',msg.sender_user_id_) if hash or is_devtaha(msg)  then return true else return false end end
function is_bot(msg) if tonumber(BOTS) == BOTS then return true else return false end end 
function is_monsh(msg) local hash = tahadevstorm:sismember('monsha'..msg.chat_id_,msg.sender_user_id_) if hash or  is_devtaha(msg) or is_sudo(msg) or is_owner(msg)  then return true else return false end end
function is_owner(msg)  local hash = tahadevstorm:sismember('moder'..msg.chat_id_,msg.sender_user_id_) if hash or is_devtaha(msg) or is_sudo(msg) then return true else return false end end
function is_mod(msg)  local hash = tahadevstorm:sismember('mods:'..msg.chat_id_,msg.sender_user_id_) if hash or  is_devtaha(msg) or is_sudo(msg) or is_owner(msg) or is_monsh(msg) then return true else return false end end
function changetitle(chat_id, title) tdcli_function ({ ID = "ChangeChatTitle", chat_id_ = chat_id, title_ = title  }, dl_cb, nil) end
function is_vipgroup(msg)  local hash = tahadevstorm:sismember('vip:group'..msg.chat_id_,msg.sender_user_id_) if hash or  is_devtaha(msg) or is_sudo(msg) or is_owner(msg) or is_mod(msg) then return true else return false end end
function is_vipgroups(msg)  local hash = tahadevstorm:sismember('vip:groups',msg.sender_user_id_) if hash or  is_devtaha(msg) or is_vipgroup(msg) then return true else return false end end
function is_memar(msg)  local hash = tahadevstorm:sismember('mepar',msg.sender_user_id_) if hash or  is_devtaha(msg) or is_sudo(msg) or is_owner(msg) or is_mod(msg) or is_mod(msg) or is_vipgroup(msg) or is_vipgroups(msg) then return true else return false end end
function is_banned(chat,user) local hash =  tahadevstorm:sismember('storm:baned'..chat,user) if hash then return true else return false end end
function is_gban(chat,user) local hash =  tahadevstorm:sismember('storm:gbaned',user) if hash then return true else return false end end
function sleep(n) os.execute("sleep " .. tonumber(n)) end
function add_in_ch(msg) local var = true local channel = '@STORMCLI' local url , res = https.request('https://api.telegram.org/bot475702712:AAGRxNsme_--3e6F1pHV8L9Tv1ALau4yD04/getchatmember?chat_id='..channel..'&user_id='..msg.sender_user_id_) data = json:decode(url) if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then var = false local text = '📪┊لا يمكنك استخدام البوت\n📯┊عليك الاشتراك في القناة'  local keyboard = { inline_keyboard = {{{text="📪 قناة السورس ",url="https://telegram.me/STORMCLI"}}}} send_inlinestorm(msg.chat_id_,text,keyboard) elseif data.ok then return var end end
local function getChat(chat_id, cb, cmd) tdcli_function ({ ID = "GetChat", chat_id_ = chat_id }, cb or dl_cb, cmd) end
local function getParseMode(parse_mode)  local P  if parse_mode then  local mode = parse_mode:lower() if mode == 'markdown' or mode == 'md' then  P = {ID = "TextParseModeMarkdown"} elseif mode == 'html' then   P = {ID = "TextParseModeHTML"}    end  end  return P end
local function storm_sendMsg(chat_id, reply_to_message_id, disable_notification, text, disable_web_page_preview, parse_mode,msg) local TextParseMode = getParseMode(parse_mode) local entities = {} if msg and text:match('<user>') and text:match('<user>') then local x = string.len(text:match('(.*)<user>')) local offset = x local y = string.len(text:match('<user>(.*)</user>')) local length = y text = text:gsub('<user>','') text = text:gsub('</user>','') table.insert(entities,{ID="MessageEntityMentionName", offset_=0, length_=2, user_id_=373906612}) end tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = reply_to_message_id, disable_notification_ = disable_notification, from_background_ = 1, reply_markup_ = nil, input_message_content_ = { ID = "InputMessageText", text_ = text, disable_web_page_preview_ = disable_web_page_preview, clear_draft_ = 0, entities_ = entities, parse_mode_ = TextParseMode, }, }, dl_cb, nil) end 
function storm_get_title(gid) getChat(gid, savegp, nil)  local taha = tahadevstorm:hget('sgp:'..gid, 'name') or ' لا يوجد 🔥 ' local text = ""..taha.."" return text end
function storm_get_user1(user_id) if tahadevstorm:hget('username',user_id) then text = '@'..(string.gsub(tahadevstorm:hget('username',user_id), 'false', '<code>'..user_id..'</code>') or ' لا يوجد 🔥 ')  end get_user(user_id)  tahadevstorm:hdel('username',user_id)  return text  end 
function storm_get_user(user_id) if tahadevstorm:hget('username',user_id) then text = '@'..(string.gsub(tahadevstorm:hget('username',user_id), 'false', '') or ' لا يوجد 🔥 ')  end get_user(user_id)  tahadevstorm:hdel('username',user_id)  return text  end 
function dl_cb(dol, info) end  function getInputFile(file) if file:match('/') then infile = {ID = "InputFileLocal", path_ = file} elseif file:match('^%d+$') then infile = {ID = "InputFileId", id_ = file} else infile = {ID = "InputFilePersistentId", persistent_id_ = file} end return infile end
function sendDocument(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, document, caption, dl_cb, cmd) tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = disable_notification,from_background_ = from_background,reply_markup_ = reply_markup,input_message_content_ = {ID = "InputMessageDocument",document_ = getInputFile(document),caption_ = caption},}, dl_cb, cmd) end
function getChatId(id) local chat = {} local id = tostring(id) if id:match('^-100') then local channel_id = id:gsub('-100', '') chat = {ID = channel_id, type = 'channel'} else local group_id = id:gsub('-', '') chat = {ID = group_id, type = 'group'} end return chat end
local function getChannelFull(channel_id,cb) tdcli_function ({ ID = "GetChannelFull", channel_id_ = getChatId(channel_id).ID }, cb, nil) end 
local function getChannelMembers(channel_id, offset, filter, limit,cb) tdcli_function ({ ID = "GetChannelMembers",channel_id_ = getChatId(channel_id).ID,filter_ = {ID = "ChannelMembers" .. filter},offset_ = offset,limit_ = limit}, cb, nil) end
local function chek_bots(channel,cb) local function callback_admins(extra,result,success)   limit = result.member_count_ getChannelMembers(channel, 0, 'Bots', limit,cb)   end  getChannelFull(channel,callback_admins) end
local function saddbyusername(username,cb)  tdcli_function ({    ID = "SearchPublicChat",    username_ = username  }, cb, nil) end
function chek_admin(chat_id,set)  local function saddadmen_or_moder(extra,result,success)    limit = result.administrator_count_    if tonumber(limit) > 0 then    getChannelMembers(chat_id, 0, 'Administrators', limit,set)     else return storm_sendMsg(chat_id, 0, 1,'📮┊ البوت ليس ادمن في المجموعه', 1, 'md') end    end  getChannelFull(chat_id,saddadmen_or_moder) end
local function saddmods_monshgtoup(channel_id, filter, offset, limit, cb, cmd)   if not limit or limit > 200 then    limit = 200  end tdcli_function ({  ID = "GetChannelMembers", channel_id_ = getChatId(channel_id).ID, filter_ = {   ID = "ChannelMembers" .. filter    },    offset_ = offset or 0,    limit_ = limit  }, cb or dl_cb, cmd) end
function chek_moder(channel,cb)  local function callback_admins(extra,result,success)   limit = result.administrator_count_  if tonumber(limit) > 0 then    getChannelMembers(channel, 0, 'Administrators', limit,cb)     else return storm_sendMsg(channel, 0, 1,'', 1, 'md') end    end  getChannelFull(channel,callback_admins) end
function stormset(chat_id, stormphoto) tdcli_function ({ ID = "ChangeChatPhoto",chat_id_ = chat_id,photo_ = getInputFile(stormphoto) }, dl_cb, nil) end
local function getUserFull(user_id) tdcli_function ({ ID = "GetUserFull", user_id_ = user_id }, dl_cb, nil) end
function storm_get_name(user_id) if tahadevstorm:hget('name',user_id) then text = ''..(string.gsub(tahadevstorm:hget('name',user_id), 'false', '') or ' لا يوجد 🔥 ')  end  get_user(user_id) tahadevstorm:hdel('name',user_id) return text end
function get_user(user_id) function dl_username(arg, data) username = data.username or ' ' name = data.first_name_ or ' لا يوجد 🔥 ' tahadevstorm:hset('username',data.id_,data.username_) tahadevstorm:hset('name',data.id_,data.first_name_) end  tdcli_function ({    ID = "GetUser",    user_id_ = user_id  }, dl_username, nil) end
function deleteMessagesFromUser(chat_id, user_id) tdcli_function ({ ID = "DeleteMessagesFromUser", chat_id_ = chat_id, user_id_ = user_id }, dl_cb, nil) end
function formsgg(msgs) local taha = ''  if msgs < 100 then taha = 'ضعيف 😫' elseif msgs < 500 then taha = 'استمر بالتفاعل ♨' elseif msgs < 1500 then taha = 'متوسط 🌟' elseif msgs < 5000 then taha = 'متفاعل 💥' elseif msgs < 10000 then taha = 'حلو استمر 💫' elseif msgs < 50000 then taha = 'رائع جدا 😍' elseif msgs < 90000 then taha = 'قوي جدا 😻'  elseif msgs < 100000 then taha = 'ملك التفاعل 🔥' elseif msgs < 1000000 then taha = 'رب التفاعل انت 🔥' end return taha end
function title_name(GroupID) tdcli_function({ID ="GetChat",chat_id_=GroupID},function(arg,data) tahadevstorm:set('group:name'..GroupID,data.title_) end,nil) return tahadevstorm:get('group:name'..GroupID) end
local function rem_lockal(chat_id)  tahadevstorm:del('lock:links'..chat_id,true)  tahadevstorm:del('lock:links'..chat_id,true)  tahadevstorm:del('lock:user'..chat_id,true)  tahadevstorm:del('lock:hash'..chat_id,true)  tahadevstorm:del('lock:muse'..chat_id,true)  tahadevstorm:del('lock:ved'..chat_id,true)  tahadevstorm:del('lock:gif'..chat_id,true)  tahadevstorm:del('lock:ste'..chat_id,true)  tahadevstorm:del('lock:geam'..chat_id,true)  tahadevstorm:del('lock:vico'..chat_id,true)  tahadevstorm:del('lock:inlin'..chat_id,true)  tahadevstorm:del('lock:fwd'..chat_id,true)  tahadevstorm:del('lock:spm'..chat_id,true)  tahadevstorm:del('lock:file'..chat_id,true)  tahadevstorm:del('lock:edit'..chat_id,true)  tahadevstorm:del('lock:mark'..chat_id,true)  tahadevstorm:del('lock:tagservr'..chat_id,true)  tahadevstorm:del('lock:phon'..chat_id,true)  tahadevstorm:del('lock:bots:kick'..chat_id,true)  tahadevstorm:del('lock:self'..chat_id,true)  end
local function add_lockal(chat_id)   tahadevstorm:set('lock:links'..chat_id,true)   tahadevstorm:set('lock:links'..chat_id,true)   tahadevstorm:set('lock:user'..chat_id,true)   tahadevstorm:set('lock:hash'..chat_id,true)   tahadevstorm:set('lock:muse'..chat_id,true)  tahadevstorm:set('lock:ved'..chat_id,true)   tahadevstorm:set('lock:gif'..chat_id,true)   tahadevstorm:set('lock:ste'..chat_id,true)   tahadevstorm:set('lock:geam'..chat_id,true)   tahadevstorm:set('lock:vico'..chat_id,true)   tahadevstorm:set('lock:inlin'..chat_id,true)   tahadevstorm:set('lock:fwd'..chat_id,true)   tahadevstorm:set('lock:spm'..chat_id,true)   tahadevstorm:set('lock:file'..chat_id,true)   tahadevstorm:set('lock:edit'..chat_id,true)   tahadevstorm:set('lock:mark'..chat_id,true)   tahadevstorm:set('lock:tagservr'..chat_id,true)   tahadevstorm:set('lock:phon'..chat_id,true)   tahadevstorm:set('lock:bots:kick'..chat_id,true)   tahadevstorm:set('lock:self'..chat_id,true)   end
function get_rtba(msg) if is_devtaha(msg) then t = 'المطور'  elseif is_sudo(msg) then t = 'المطور'  elseif is_owner(msg) then t = 'المنشئ'  elseif is_monsh(msg) then t = 'المدير'  elseif is_mod(msg) then t = 'الادمن'  end  return t end
function sendaction(chat_id, action, progress) tdcli_function ({ ID = "SendChatAction",  chat_id_ = chat_id, action_ = {  ID = "SendMessage" .. action .. "Action", progress_ = progress or 100} }, dl_cb, nil) end
local function deleteMessagesFromUser(chat_id, user_id, cb, cmd)  tdcli_function ({ ID = "DeleteMessagesFromUser",  chat_id_ = chat_id, user_id_ = user_id }, cb or dl_cb, cmd) end
function check_markdown(text) str = text  if str:match('_') then output = str:gsub('_',[[_]]) elseif str:match('*') then output = str:gsub('*','\\*') elseif str:match('`') then output = str:gsub('`','\\`') else output = str end return output end
function addChatMember(chat_id, user_id, forward_limit) tdcli_function ({ ID = "AddChatMember", chat_id_ = chat_id, user_id_ = user_id, forward_limit_ = forward_limit }, dl_cb, nil) end
function is_filter(msg, value) local hash = tahadevstorm:smembers('filters:'..msg.chat_id_) if hash then local names = tahadevstorm:smembers('filters:'..msg.chat_id_) local text = '' for i=1, #names do if string.match(value:lower(), names[i]:lower()) and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) and not is_monsh(msg) then local id = msg.id_ local msgs = {[0] = id} local chat = msg.chat_id_ delete_msg(chat,msgs) end end end end
function is_muted(chat,user) local hash =  tahadevstorm:sismember('mutes'..chat,user) if hash then return true else return false end end
function stormmonshn(chat_id, user_id, msg_id, text, offset, length) local tt = tahadevstorm:get('endmsg') or '' tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = msg_id, disable_notification_ = 0, from_background_ = 1, reply_markup_ = nil, input_message_content_ = { ID = "InputMessageText", text_ = text..'\n\n'..tt, disable_web_page_preview_ = 1, clear_draft_ = 0, entities_ = {[0]={ ID="MessageEntityMentionName", offset_=offset, length_=length, user_id_=user_id }, }, }, }, dl_cb, nil) end
function storm1(chat,user) local sudoe = tahadevstorm:sismember('sudo:bot',user) local vipss = tahadevstorm:sismember('vip:groups',user) local monh = tahadevstorm:sismember('monsha'..chat,user) local noow = tahadevstorm:sismember('moder'..chat,user) local nomo = tahadevstorm:sismember('mods:'..chat,user) local novip2 = tahadevstorm:sismember('vip:group'..chat,user) if tonumber(SUDO) == tonumber(user) or sudoe or vipss or monh  or noow or nomo  or novip2 then return true else return false end end 
function storm2(chat,user)  local sudoe = tahadevstorm:sismember('sudo:bot',user)  local vipss = tahadevstorm:sismember('vip:groups',user)  local noow = tahadevstorm:sismember('moder'..chat,user)  if tonumber(SUDO) == tonumber(user) or sudoe or vipss or noow  then  return true else  return false end end 
function getInputFile(file) local input = tostring(file) if file:match('/') then infile = {ID = "InputFileLocal", path_ = file} elseif file:match('^%d+$') then infile = {ID = "InputFileId", id_ = file} else infile = {ID = "InputFilePersistentId", persistent_id_ = file} end return infile end
function send_inlinestorm(chat_id,text,keyboard,inline,reply_id) local url = 'https://api.telegram.org/bot'..chaneel if keyboard then stormtoken = url .. '/sendMessage?chat_id=' ..chat_id.. '&text='..URL.escape(text)..'&parse_mode=html&reply_markup='..URL.escape(json:encode(keyboard)) else stormtoken = url .. '/sendMessage?chat_id=' ..chat_id.. '&text=' ..URL.escape(text)..'&parse_mode=html' end https.request(stormtoken) end
local function getUserProfilePhotos(user_id, offset, limit, cb, cmd)  tdcli_function ({  ID = "GetUserProfilePhotos",   user_id_ = user_id,  offset_ = offset,  limit_ = limit  }, cb or dl_cb, cmd) end
local function deleteMessages(chat_id, message_ids, cb, cmd)   tdcli_function ({  ID = "DeleteMessages",  chat_id_ = chat_id,  message_ids_ = message_ids  }, cb or dl_cb, cmd) end
local function forwardMessages(chat_id, from_chat_id, message_ids, disable_notification, cb, cmd)  tdcli_function ({    ID = "ForwardMessages",    chat_id_ = chat_id,    from_chat_id_ = from_chat_id,    message_ids_ = message_ids,    disable_notification_ = disable_notification,    from_background_ = 1 }, cb or dl_cb, cmd) end
function getUser(user_id, cb) tdcli_function ({   ID = "GetUser",  user_id_ = user_id }, cb, nil) end
local function getMessage(chat_id, message_id,cb) tdcli_function ({ ID = "GetMessage", chat_id_ = chat_id, message_id_ = message_id }, cb, nil) end 
function pin(channel_id, message_id, disable_notification)   tdcli_function ({  ID = "PinChannelMessage",  channel_id_ = getChatId(channel_id).ID,  message_id_ = message_id,  disable_notification_ = 1  }, dl_cb, cmd)   end
local function timstoop() local uptime = io.popen("uptime -p"):read("*all") minutes = uptime:match(", %d+ minutes") or uptime:match(", %d+ minute") if minutes then minutes = minutes else minutes = "" end local c_ = string.match(minutes, "%d+") if c_ then c = c_ else c = 0 end return c..' دقيقه ' end
local function getUser(user_id,cb) tdcli_function ({ ID = "GetUser", user_id_ = user_id }, cb, nil) end 
local function changeChatMemberStatus(chat_id, user_id, status) tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = chat_id, user_id_ = user_id, status_ = { ID = "ChatMemberStatus" .. status }, }, dl_cb, nil) end 
local function getChatHistory(chat_id, from_message_id, offset, limit,cb)tdcli_function ({ ID = "GetChatHistory", chat_id_ = chat_id, from_message_id_ = from_message_id, offset_ = offset, limit_ = limit }, cb, nil) end 
local function getMe(cb) tdcli_function ({ID = "GetMe",}, cb, nil) end
local function unpinChannelMessage(channel_id) tdcli_function ({ ID = "UnpinChannelMessage", channel_id_ = getChatId(channel_id).ID }, dl_cb, nil) end 
local function pinChannelMessage(channel_id, message_id,disable_notification) tdcli_function ({ ID = "PinChannelMessage", channel_id_ = getChatId(channel_id).ID, message_id_ = message_id, disable_notification_ = disable_notification, }, dl_cb, nil) end
local function changeChatTitle(chat_id, title) tdcli_function ({ ID = "ChangeChatTitle", chat_id_ = chat_id, title_ = title }, dl_cb, nil) end
function sendPhoto(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, photo, caption) tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = reply_to_message_id, disable_notification_ = disable_notification, from_background_ = from_background, reply_markup_ = reply_markup, input_message_content_ = { ID = "InputMessagePhoto", photo_ = getInputFile(photo), added_sticker_file_ids_ = {}, width_ = 0, height_ = 0, caption_ = caption }, }, dl_cb, nil) end
function setphoto(chat_id, photo) tdcli_function ({    ID = "ChangeChatPhoto",   chat_id_ = chat_id,  photo_ = getInputFile(photo) }, dl_cb, nil) end
function getChatId(id) local chat = {} local id = tostring(id) if id:match('^-100') then local channel_id = id:gsub('-100', '') chat = {ID = channel_id, type = 'channel'} else local group_id = id:gsub('-', '') chat = {ID = group_id, type = 'group'} end return chat end
local getUser = function(user_id, cb)  tdcli_function({ID = "GetUser", user_id_ = user_id}, cb, nil) end
function adduser(chat_id, user_id, forward_limit) tdcli_function ({ ID = "AddChatMember", chat_id_ = chat_id, user_id_ = user_id, forward_limit_ = forward_limit or 50 }, dl_cb, nil) end
function ked(msg,chat,user)  if tonumber(user) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌┊لا تستطيع تقيد البوت', 1, 'md')  return false  end  if storm1(chat,user) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌┊لا تستطيع تقيد {الادمنيه او المدراء او المميزين}', 1, 'md')  else  HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..chat.. "&user_id=" ..user.."") tahadevstorm:sadd("keed", chat) 
local taha = '📮 ❯ العضو { '..user..' }\n\n🚀 ❯ تم تقييده في المجموعه\n=•=•=•=•=•=•=•=•=•=•=•=' stormmonshn(msg.chat_id_, user, msg.id_, taha, 13, string.len(user)) end  tahadevstorm:sadd('tedmembars'..chat,user) end 
function unked(msg,chat,user)  if tonumber(user) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌┊لا تستطيع تقيد البوت', 1, 'md')  return false  end  if storm1(chat,user) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌┊لا تستطيع تقيد {الادمنيه او المدراء او المميزين}', 1, 'md')  else  HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..chat.. "&user_id=" ..user.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True") tahadevstorm:srem("keed", chat) 
local taha = '📮 ❯ العضو { '..user..' }\n\n🚀 ❯ تم الغاء تقييده ☑'  stormmonshn(msg.chat_id_, user, msg.id_, taha, 13, string.len(user)) end tahadevstorm:srem('tedmembars'..chat,user) end 
function banall(msg,chat,user) if tonumber(user) == tonumber(bot_id) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ لا تستطيع حضر او طرد او كتم البوت 🎎', 1, 'md') return false end if storm1(chat,user) then storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥┊ لا تسطيع حضر او كتم او طرد ( الادمنيه و المدراء )', 1, 'md') else if is_devtaha(msg) then t = 'مطور اساسي' elseif is_sudo(msg) then t = 'مطور' elseif is_owner(msg) then t = 'مدير الكروب' elseif is_mod(msg) then t = 'ادمن الكروب' end changeChatMemberStatus(chat, user, "Kicked") tahadevstorm:sadd('storm:gbaned',user) 
local taha = '📮 ❯ العضو { '..user..' }\n\n🚀 ❯ تم حظره عام' stormmonshn(msg.chat_id_, user, msg.id_, taha, 13, string.len(user))   end end
function kick(msg,chat,user) if tonumber(user) == tonumber(bot_id) then return false end if storm1(chat,user) then else changeChatMemberStatus(chat, user, "Kicked") end end
function kickm(msg,chat,user) if tonumber(user) == tonumber(bot_id) then return false end if storm1(chat,user) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '☇┊لا تسطيع حضر او كتم او طرد ( الادمنيه و المدراء )', 1, 'md') else if is_devtaha(msg) then t = 'مطور اساسي' elseif is_sudo(msg) then t = 'مطور' elseif is_owner(msg) then t = 'مدير الكروب' elseif is_mod(msg) then t = 'ادمن الكروب' end changeChatMemberStatus(chat, user, "Kicked") 
local taha = '📮 ❯ العضو { '..user..' }\n🚀 ❯ تم طرده بنجاح' stormmonshn(msg.chat_id_, user, msg.id_, taha, 13, string.len(user))  end end
function ban(msg,chat,user) if tonumber(user) == tonumber(bot_id) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ لا تستطيع حضر او طرد او كتم البوت 🎎', 1, 'md') return false end if storm1(chat,user) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ لا تسطيع حضر او كتم او طرد ( الادمنيه و المدراء )', 1, 'md') else if is_devtaha(msg) then t = 'مطور اساسي' elseif is_sudo(msg) then t = 'مطور' elseif is_owner(msg) then t = 'مدير الكروب' elseif is_mod(msg) then t = 'ادمن الكروب' end changeChatMemberStatus(chat, user, "Kicked") tahadevstorm:sadd('storm:baned'..chat,user) 
local taha = '📮 ❯ العضو { '..user..' }\n🚀 ❯ تم حظره بنجاح ' stormmonshn(msg.chat_id_, user, msg.id_, taha, 13, string.len(user)) end end
function mute(msg,chat,user) if tonumber(user) == tonumber(bot_id) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ لا تستطيع حضر او طرد او كتم البوت 🎎', 1, 'md') return false end if storm1(chat,user) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ لا تسطيع حضر او كتم او طرد ( الادمنيه و المدراء )', 1, 'md') else if is_devtaha(msg) then t = 'مطور اساسي' elseif is_sudo(msg) then t = 'مطور' elseif is_owner(msg) then t = 'مدير الكروب' elseif is_mod(msg) then t = 'ادمن الكروب' end tahadevstorm:sadd('mutes'..chat,user) 
local taha = '📮 ❯ العضو { '..user..' }\n🚀 ❯ تم كتمه بنجاح' stormmonshn(msg.chat_id_, user, msg.id_, taha, 13, string.len(user))  end end
function unbanall(msg,chat,user) if tonumber(user) == tonumber(bot_id) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ لا تستطيع حضر او طرد او كتم البوت 🎎', 1, 'md') return false end if is_devtaha(msg) then t = 'مطور اساسي' elseif is_sudo(msg) then t = 'مطور' elseif is_owner(msg) then t = 'مدير الكروب' elseif is_mod(msg) then t = 'ادمن الكروب' end tahadevstorm:srem('storm:gbaned',user) 
local taha = '📮 ❯ العضو { '..user..' }\n🚀 ❯ تم الغاء حظره عام بنجاح' stormmonshn(msg.chat_id_, user, msg.id_, taha, 13, string.len(user))   end
function unban(msg,chat,user)  if tonumber(user) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ لا تستطيع حضر او طرد او كتم البوت 🎎', 1, 'md') return false  end  if is_devtaha(msg) then t = 'مطور اساسي' elseif is_sudo(msg) then t = 'مطور' elseif is_owner(msg) then t = 'مدير الكروب' elseif is_mod(msg) then t = 'ادمن الكروب' end  tahadevstorm:srem('storm:baned'..chat,user)   changeChatMemberStatus(chat, user, "Left")  getChannelMembers(chat, 0, 'Kicked', 2000, unban, {chat_id_ = chat, msg_id_ = msg.id_}) 
local taha = '📮 ❯ العضو { '..user..' }\n🚀 ❯ تم الغاء حظره بنجاح' stormmonshn(msg.chat_id_, user, msg.id_, taha, 13, string.len(user)) end
function unmute(msg,chat,user) if tonumber(user) == tonumber(bot_id) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ لا تستطيع حضر او طرد او كتم البوت 🎎', 1, 'md') return false end if is_devtaha(msg) then t = 'مطور اساسي' elseif is_sudo(msg) then t = 'مطور' elseif is_owner(msg) then t = 'مدير الكروب' elseif is_mod(msg) then t = 'ادمن الكروب' end tahadevstorm:srem('mutes'..chat,user) 
local taha = '📮 ❯ العضو { '..user..' }\n🚀 ❯ تم الغاء كتمه بنجاح' stormmonshn(msg.chat_id_, user, msg.id_, taha, 13, string.len(user)) end
function delete_msg(chatid,mid) tdcli_function ({ID="DeleteMessages", chat_id_=chatid, message_ids_=mid}, dl_cb, nil) end
function user(msg,chat,text,user) entities = {} if text and text:match('<user>') and text:match('<user>') then local x = string.len(text:match('(.*)<user>')) local offset = x local y = string.len(text:match('<user>(.*)</user>')) local length = y text = text:gsub('<user>','') text = text:gsub('</user>','') table.insert(entities,{ID="MessageEntityMentionName", offset_=offset, length_=length, user_id_=user}) end entities[0] = {ID='MessageEntityBold', offset_=0, length_=0} return tdcli_function ({ID="SendMessage", chat_id_=chat, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=text, disable_web_page_preview_=1, clear_draft_=0, entities_=entities}}, dl_cb, nil) end
function monsh(msg,chat,user) tahadevstorm:sadd('moder'..chat,user) tahadevstorm:srem('storm:baned'..chat,user) tahadevstorm:srem('mutes'..chat,user) 
local taha = '📮 ❯ العضو { '..user..' }\n🚀 ❯ تم ترقيته منشئ المجموعه' stormmonshn(msg.chat_id_, user, msg.id_, taha, 13, string.len(user)) end 
function demmonsh(msg,chat,user)   tahadevstorm:srem('moder'..chat,user) 
local taha = '📮 ❯ العضو { '..user..' }\n🚀 ❯ تم تنزيله من المنشئين' stormmonshn(msg.chat_id_, user, msg.id_, taha, 13, string.len(user)) end 
function moder1(msg,chat,user)  tahadevstorm:sadd('monsha'..chat,user) tahadevstorm:srem('storm:baned'..chat,user) tahadevstorm:srem('mutes'..chat,user) 
local taha = '📮 ❯ العضو { '..user..' }\n🚀 ❯ تم ترقيته مدير' stormmonshn(msg.chat_id_, user, msg.id_, taha, 13, string.len(user)) end 
function demmoder1(msg,chat,user)  tahadevstorm:srem('monsha'..chat,user)
local taha = '📮 ❯ العضو { '..user..' }\n🚀 ❯ تم تنزيله من الاداره'  stormmonshn(msg.chat_id_, user, msg.id_, taha, 13, string.len(user)) end 
function mods(msg,chat,user) tahadevstorm:sadd('mods:'..chat,user)   tahadevstorm:srem('storm:baned'..chat,user) tahadevstorm:srem('mutes'..chat,user) 
local taha = '📮 ❯ العضو { '..user..' }\n🚀 ❯ تم ترقيته ادمن في البوت'  stormmonshn(msg.chat_id_, user, msg.id_, taha, 13, string.len(user)) end 
function demmods(msg,chat,user)  tahadevstorm:srem('mods:'..chat,user) tahadevstorm:srem('storm:baned'..chat,user) tahadevstorm:srem('mutes'..chat,user) 
local taha = '📮 ❯ العضو { '..user..' }\n🚀 ❯ تم تنزيله من الادمنيه' stormmonshn(msg.chat_id_, user, msg.id_, taha, 13, string.len(user)) end 
function vipgroups(msg,chat,user)  tahadevstorm:sadd('vip:group'..chat,user) tahadevstorm:srem('storm:baned'..chat,user) tahadevstorm:srem('mutes'..chat,user)  
local taha = '📮 ❯ العضو { '..user..' }\n🚀 ❯ تم ترقيته مميز في البوت' stormmonshn(msg.chat_id_, user, msg.id_, taha, 13, string.len(user)) end 
function demvipgroups(msg,chat,user)  tahadevstorm:srem('vip:group'..chat,user)
local taha = '📮 ❯ العضو { '..user..' }\n🚀 ❯ تم تنزيله من مميزين البوت'  stormmonshn(msg.chat_id_, user, msg.id_, taha, 13, string.len(user)) end 
function trigger_anti_spam(msg,type)
if type == 'kick' then kick(msg,msg.chat_id_,msg.sender_user_id_) stormmonshn(msg.chat_id_, msg.sender_user_id_, msg.id_, '💥┊العضو • ( '..msg.sender_user_id_..' ) قام بعمل تكرار في المجموعه وتم طرده' , 10, string.len(msg.sender_user_id_)) end if type == 'ban' then
if is_banned(msg.chat_id_,msg.sender_user_id_) then else stormmonshn(msg.chat_id_, msg.sender_user_id_, msg.id_, '💥┊العضو • ( '..msg.sender_user_id_..' ) قام بعمل تكرار في المجموعه وتم حظره' , 10, string.len(msg.sender_user_id_)) end changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked") tahadevstorm:sadd('storm:baned'..msg.chat_id_,msg.sender_user_id_) end if type == 'mute' then
if is_muted(msg.chat_id_,msg.sender_user_id_) then else stormmonshn(msg.chat_id_, msg.sender_user_id_, msg.id_, '💥┊العضو • ( '..msg.sender_user_id_..' ) قام بعمل تكرار في المجموعه وتم كتمه' , 10, string.len(msg.sender_user_id_)) end tahadevstorm:sadd('mutes'..msg.chat_id_,msg.sender_user_id_) end end function televardump(msg,value) local text = json:encode(value) storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 'html') end
function chackgp(msg)  local hash = tahadevstorm:sismember('bot:gps', msg.chat_id_)
if hash then return true else return false end end
function STORM(msg,data) if msg then tahadevstorm:incr('groupmsg:'..msg.chat_id_..':') tahadevstorm:incr('user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) tahadevstorm:incr('msg:chat:'..msg.chat_id_..':') tahadevstorm:incr('msg:user:'..msg.chat_id_..':'..msg.sender_user_id_)
if msg.send_state_.ID == "MessageIsSuccessfullySent" then return false  end end
if msg.can_be_deleted_ == true and not is_mod(msg) then  if tahadevstorm:get('add:mepr:'..msg.chat_id_) and tonumber(tahadevstorm:scard('addedtaha:'..msg.sender_user_id_)) == tonumber(tahadevstorm:get('setadd:'..msg.chat_id_)) then  tahadevstorm:sadd('meaddwy:'..msg.chat_id_,msg.sender_user_id_)  tahadevstorm:del("addedtaha:"..msg.sender_user_id_)  tahadevstorm:srem('meaddtaha:'..msg.chat_id_,msg.sender_user_id_)  storm_sendMsg(msg.chat_id_,msg.id_,1,'🚸 • العضو *{* ['..storm_get_user(msg.sender_user_id_)..'] *}* \n☑ • لقد قمت باضافه *{'..tonumber(tahadevstorm:get('setadd:'..msg.chat_id_))..'}* اعضاء \n📇 • الان تستطيع التكلم \n',1,'md')  elseif msg.content_.text_ and tahadevstorm:get('add:mepr:'..msg.chat_id_) and not tahadevstorm:sismember('meaddwy:'..msg.chat_id_,msg.sender_user_id_) and not tahadevstorm:sismember('meaddtaha:'..msg.chat_id_,msg.sender_user_id_) then  if tonumber(tahadevstorm:scard('addedtaha:'..msg.sender_user_id_)) ~= tonumber(tahadevstorm:get('setadd:'..msg.chat_id_)) then  function check_can_send(extra,result,success)  tahadevstorm:sadd('meaddtaha:'..msg.chat_id_,msg.sender_user_id_)  local mustadd = (tahadevstorm:get('setadd:'..msg.chat_id_) or '0')  username = '@'..(result.username_ or 'ماكو معرف ❌')..''  taha = '\n🚸❯ العضو • *{* ['..username..'] *}*\n📮❯ لا تستطيع التحدث هنا \n📬❯ قم باضافه عدد من الاعضاء\n📥❯ عدد الاعضاء المطلوله *{ '..(mustadd)..' }*'  storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  end  getUser(msg.sender_user_id_,check_can_send)  end  end  if msg.content_.ID == "MessageChatAddMembers" then  local mem_id = msg.content_.members_  for i=0,#mem_id do  if tahadevstorm:get('add:mepr:'..msg.chat_id_) then  if not tahadevstorm:sismember('meaddwy:'..msg.chat_id_,msg.sender_user_id_) then  if mem_id[i].username_ and mem_id[i].username_:match("[Bb][Oo][Tt]$") then  return false  else  tahadevstorm:sadd('addedtaha:'..msg.sender_user_id_,mem_id[i].id_)  end  end  end  end  end  if tahadevstorm:get('add:mepr:'..msg.chat_id_) and not tahadevstorm:sismember('meaddwy:'..msg.chat_id_,msg.sender_user_id_) then  if msg.content_.ID == "MessageChatJoinByLink" then  return false  else  deleteMessages(msg.chat_id_,{[0] = msg.id_})   end end end
if msg.content_.photo_ then  if tahadevstorm:get('setphoto'..msg.chat_id_..':'..msg.sender_user_id_) then if msg.content_.photo_.sizes_[3] then  photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_ else photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_ end storm_sendMsg(msg.chat_id_, msg.id_, 1, '🎑┊<code>تم تغيير صوره المجموعه </code>', 1, 'html') tahadevstorm:del('setphoto'..msg.chat_id_..':'..msg.sender_user_id_) stormset(msg.chat_id_, photo_id) end   end
if msg.chat_id_ then local id = tostring(msg.chat_id_) if id:match('-100(%d+)') then chat_type = 'super'
elseif id:match('^(%d+)') then chat_type = 'user' else chat_type = 'group' end end
function savegp(extra, result, success) name = (result.title_ or false)    hash = 'sgp:'..msg.chat_id_   tahadevstorm:hset(hash, 'name', name) end  local text = msg.content_.text_
if text and text:match('[qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM]') then text = text end
if msg.content_.ID == "MessageText" then msg_type = 'text' end
if msg.content_.ID == "MessageChatAddMembers" then msg_type = 'add' end
if msg.content_.ID == "MessageChatJoinByLink" then msg_type = 'join' end
if msg.content_.ID == "MessagePhoto" then msg_type = 'photo' end
if tahadevstorm:get('viewchannel'..msg.sender_user_id_) then if not msg.forward_info_ then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ هاذا ليس توجيه من القناة', 1, 'md') tahadevstorm:del('viewchannel'..msg.sender_user_id_) else storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ عدد المشاهدات المنشور ( '..msg.views_..' ) مشاهده ♨', 1, 'md') tahadevstorm:del('viewchannel'..msg.sender_user_id_) end end
if text then if not tahadevstorm:get('bot_id') then
function cb(a,b,c) tahadevstorm:set('bot_id',b.id_) end getMe(cb) end end
if tahadevstorm:get("link:group"..msg.chat_id_) == 'setlinkwai' and is_mod(msg) then if text and text:match("^الغاء$") then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸┊ تم الغاء الامر ♨", 1, "html") tahadevstorm:del("link:group" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) else  if text:match("(https://telegram.me/joinchat/%S+)") or text:match("(https://t.me/joinchat/%S+)") then     local glink = text:match("(https://telegram.me/joinchat/%S+)") or text:match("(https://t.me/joinchat/%S+)")   local hash = "link:group"..msg.chat_id_   tahadevstorm:set(hash,glink)   storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊تم حفظ الرابط الخاص بالمجموعه', 1, 'md')  end   end end
if tahadevstorm:get("bc:in:grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then if text and text:match("^الغاء$") then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸┊ تم الغاء الامر ♨", 1, "html") tahadevstorm:del("bc:in:grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) else local gps = tahadevstorm:scard("botgps") or 0 local gpss = tahadevstorm:smembers("botgps") or 0 local msgs = { [0] = id } for i = 1, #gpss do storm_sendMsg(gpss[i], 0, 1, text, 1, "md") end storm_sendMsg(msg.chat_id_, msg.id_, 1, "💥┊ تمت الاذاعه بنجاح ✔ \n ♻┊الى ( *" .. gps .. "* ) مجموعات في البوت", 1, "md")     tahadevstorm:del("bc:in:grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) end end
if tahadevstorm:get("bc:in:all" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then  if text and text:match("^الغاء$") then  storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸┊ تم الغاء الامر ♨", 1, "html")  tahadevstorm:del("bc:in:all" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)  else  local gps = tahadevstorm:scard("botgps") or 0  local gpss = tahadevstorm:smembers("botgps") or 0  local msgs = { [0] = id }  for i = 1, #gpss do   storm_sendMsg(gpss[i], 0, 1, text, 1, "md")  end local gpsv = tahadevstorm:scard("usersbot") or 0 local gpssv = tahadevstorm:smembers("usersbot") or 0 local msgs = { [0] = id }  for o = 1, #gpssv do   storm_sendMsg(gpssv[o], 0, 1, text, 1, "md")  end  storm_sendMsg(msg.chat_id_, msg.id_, 1, "💥┊ تمت الاذاعه بنجاح ✔ \n♻┊الى ( *" .. gps .. "* ) مجموعه \n💥┊والى ( *"..gpsv..'* ) مشتركين في البوت', 1, "md")      tahadevstorm:del("bc:in:all" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)  end end
if tahadevstorm:get("bc:in:pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then if text and text:match("^الغاء$") then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸┊ تم الغاء الامر ♨", 1, "html") tahadevstorm:del("bc:in:pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) else local gps = tahadevstorm:scard("usersbot") or 0 local gpss = tahadevstorm:smembers("usersbot") or 0 local msgs = { [0] = id } for i = 1, #gpss do storm_sendMsg(gpss[i], 0, 1, text, 1, "md") end storm_sendMsg(msg.chat_id_, msg.id_, 1, "💥┊ تمت الاذاعه بنجاح ✔ \n ♻┊الى ( *" .. gps .. "* ) مشتركين في البوت ", 1, "md")     tahadevstorm:del("bc:in:pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) end end
if tahadevstorm:get("rules" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then local rules = msg.content_.text_ tahadevstorm:set("rules:group" .. msg.chat_id_, rules) storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸┊تم حفظ القوانين ✔",  1, "md") end  tahadevstorm:del("rules" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
if tahadevstorm:get("sudo:dev" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then tahadevstorm:del("sudo:dev" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  local dev = text:match("(.*)") tahadevstorm:set("dev", dev)  storm_sendMsg(msg.chat_id_, msg.id_, 1,'\n📬┊ تم وضع كليشه المطور \n', 1, 'html')   storm_sendMsg(SUDO, 0, 1,'', 1, 'md') storm_sendMsg(SUDO, 0, 1,'', 1, 'md') end
if tahadevstorm:get("start:msgofstart" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  tahadevstorm:del("start:msgofstart" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   local msgofstart = text:match("(.*)")  tahadevstorm:set("start:msgofstart", msgofstart)  storm_sendMsg(msg.chat_id_, msg.id_, 1,'📬┊ تم وضع كليشه ستارت \n', 1, 'html')   end
if tahadevstorm:get("sudo:pv" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then tahadevstorm:del("sudo:pv" .. msg.chat_id_ .. "" .. msg.sender_user_id_) local pvstart = text:match("(.*)") tahadevstorm:set("pvstart", pvstart)  storm_sendMsg(msg.chat_id_, msg.id_, 1,'\n📬┊ تم وضع الرد في التواصل \n', 1, 'html')  storm_sendMsg(SUDO, 0, 1,'', 1, 'html') storm_sendMsg(SUDO, 0, 1,'', 1, 'md') end
if text == '/start' and chat_type == 'user' and add_in_ch(msg) then  local start = tahadevstorm:get("start:msgofstart")  if start then local text = [[ ]]..start..[[ ]] local keyboard = { inline_keyboard = { {{text="مطور البوت 💥",url="https://telegram.me/"..sudouser..""}}}} send_inlinestorm(msg.chat_id_,text,keyboard) else
local taha = [[
😀┊اهلا يا {]]..storm_get_user(msg.sender_user_id_)..[[}
<code>---------------------</code>
☇┊عزيزي انا بوت حمايه كروبات ال <b>100k</b>
♨┊لتفعيل البوت مجانا اتبع التعليمات
📬┊اولا اضفني الى مجموعتك 
✨┊ثانيا راسل( تفعيل البوت )
⛥┊سيتم رفع منشئ للمجموعه 
💥┊ثم سيتم رفع ادمنيه المجموعه
<code>---------------------</code>
💠┊المطور مالتي {@]]..sudouser..[[}
]] storm_sendMsg(msg.chat_id_, msg.id_, 1,taha, 1, 'html') end end
if chat_type == 'user' then if text and text:match('(.*)')  and not text:match('/start') and  not is_devtaha(msg)  or  msg.content_.ID == "MessageUnsupported" or msg.content_.ID == 'MessagePhoto' or msg.content_.ID == 'MessageDocument' or msg.content_.photo_ or msg.content_.ID == 'MessageSticker' or msg.content_.ID == 'MessageAudio' or msg.content_.audio_ or msg.content_.ID == 'MessageAnimation' or msg.content_.ID == 'MessageVideo' or msg.content_.video_  or msg.content_.ID == 'MessageContact' or msg.content_.ID == 'MessageVoice' then if not tahadevstorm:get('lock:botl'..bot_id) then if not is_devtaha(msg) then  local pvstart = tahadevstorm:get("pvstart") if pvstart then storm_sendMsg(msg.sender_user_id_, 0, 1, ''..check_markdown(pvstart)..'', 1, "md") else storm_sendMsg(msg.sender_user_id_, 0, 1, '🚸 >> اشترك هنا حياتي هسه يرد عليك لمطور @STORMCLI ', 1, "md") end  if not tahadevstorm:sismember("usersbot",msg.chat_id_) then tahadevstorm:sadd("usersbot",msg.chat_id_) local pvstart = tahadevstorm:get("pvstart") end forwardMessages(SUDO, msg.sender_user_id_, {[0] = msg.id_}, 1) end end  end if is_devtaha and msg.reply_to_message_id_ ~= 0  then  function bot_in_daerct(extra, result, success) if result.forward_info_.sender_user_id_ then  id_user = result.forward_info_.sender_user_id_ end  if text then storm_sendMsg(id_user,msg.reply_to_message_id_,  1,  text, 1, 'html') storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸 • تم ارسال رسالتك الى » » <b>{</b> "..storm_get_user(id_user)..' <b>}</b>', 1, 'html') end if msg.content_.ID == 'MessageSticker' then HTTPS.request('https://api.telegram.org/bot'..chaneel..'/sendSticker?chat_id='..id_user..'&sticker='..data.message_.content_.sticker_.sticker_.persistent_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸 • تم ارسال رسالتك الى » » <b>{</b> "..storm_get_user(id_user)..' <b>}</b>', 1, 'html') end   if msg.content_.ID == 'MessagePhoto' then if data.message_.content_.photo_.sizes_[0] then end HTTPS.request('https://api.telegram.org/bot'..chaneel..'/sendPhoto?chat_id='..id_user..'&photo='..data.message_.content_.photo_.sizes_[0].photo_.persistent_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸 • تم ارسال رسالتك الى » » <b>{</b> "..storm_get_user(id_user)..' <b>}</b>', 1, 'html') end  if msg.content_.ID == 'MessageAnimation' then HTTPS.request('https://api.telegram.org/bot'..chaneel..'/sendDocument?chat_id='..id_user..'&document='..data.message_.content_.animation_.animation_.persistent_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸 • تم ارسال رسالتك الى » » <b>{</b> "..storm_get_user(id_user)..' <b>}</b>', 1, 'html') end  if msg.content_.ID == "MessageUnsupported" then HTTPS.request('https://api.telegram.org/bot'..chaneel..'/sendUnsupported?chat_id='..id_user..'&unsupported='..data.message_.content_.unsupported_.unsupported_.persistent_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸 • تم ارسال رسالتك الى » » <b>{</b> "..storm_get_user(id_user)..' <b>}</b>', 1, 'html') end  if msg.content_.ID == 'MessageVoice' then HTTPS.request('https://api.telegram.org/bot'..chaneel..'/sendVoice?chat_id='..id_user..'&voice='..data.message_.content_.voice_.voice_.persistent_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸 • تم ارسال رسالتك الى » » <b>{</b> "..storm_get_user(id_user)..' <b>}</b>', 1, 'html') end  end getMessage(msg.chat_id_, msg.reply_to_message_id_,bot_in_daerct) end if text and text:match("^توجيه (%d+)") and msg.reply_to_message_id_ and is_sudo(msg) then local user = text:match("^توجيه (%d+)")  local taha = '📮 • العضو ( '..user..' ) تم توجيه رسالتك اليه بنجاح' text = '' msgs = msg.reply_to_message_id_ stormmonshn(SUDO, user, user, taha, 13, string.len(user)) tdcli_function({ ID = "ForwardMessages", chat_id_ = user,from_chat_id_ = msg.chat_id_, message_ids_ = { [0] = msgs }, disable_notification_ = 0, from_background_ = 1 }, dl_cb, nil) storm_sendMsg(msg.chat_id_, msg.reply_to_message_id_, 1, text, 1, 'html') end end 
if chat_type == 'super' then local user_id = msg.sender_user_id_
floods = tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"flood") or  'nil'
NUM_MSG_MAX = tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"floodmax") or 5
TIME_CHECK = tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"floodtime") or 5
if tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"flood") then if not is_mod(msg) then
if msg.content_.ID == "MessageChatAddMembers" then return else
local post_count = tonumber(tahadevstorm:get('floodc:'..msg.sender_user_id_..':'..msg.chat_id_) or 0)
if post_count > tonumber(tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"floodmax") or 5) then local ch = msg.chat_id_
local type = tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"flood") trigger_anti_spam(msg,type)  end
tahadevstorm:setex('floodc:'..msg.sender_user_id_..':'..msg.chat_id_, tonumber(tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"floodtime") or 3), post_count+1) end end
local edit_id = data.text_ or 'nil'  NUM_MSG_MAX = 5
if tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"floodmax") then
NUM_MSG_MAX = tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"floodmax") end
if tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"floodtime") then
TIME_CHECK = tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"floodtime") end end	  
if msg.content_.ID == 'MessagePinMessage' then if is_owner(msg) and tahadevstorm:get("lockpin"..msg.chat_id_) then tahadevstorm:set('pinned'..msg.chat_id_, msg.content_.message_id_) elseif not tahadevstorm:get("lockpin"..msg.chat_id_) then tahadevstorm:set('pinned'..msg.chat_id_, msg.content_.message_id_) end end
if msg.content_.ID == 'MessagePinMessage' or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == "MessageChatDeleteMember" then  if tahadevstorm:get('lock:tagservr'..msg.chat_id_) then  delete_msg(msg.chat_id_,{[0] = msg.id_})        end      end  
if text and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg)  then
if is_filter(msg,text) then delete_msg(msg.chat_id_, {[0] = msg.id_}) end  end
if is_owner(msg) then else  if not is_owner(msg) then if tahadevstorm:get("lockpin"..msg.chat_id_) then if msg.content_.ID == 'MessagePinMessage' then unpinChannelMessage(msg.chat_id_) local PinnedMessage = tahadevstorm:get('pinned'..msg.chat_id_) if PinnedMessage then pinChannelMessage(msg.chat_id_,tonumber(PinnedMessage), 0) end end end end end  if is_mod(msg) then else 
if msg.content_.caption_ and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then  if msg.content_.caption_:match("@") then  if tahadevstorm:get('lock:user'..msg.chat_id_) then delete_msg(msg.chat_id_,{[0] = msg.id_})  end  end  end
if text and text:match("@") and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then if tahadevstorm:get('lock:user'..msg.chat_id_) then  delete_msg(msg.chat_id_,{[0] = msg.id_})        end      end
if msg.content_.caption_ and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then if tahadevstorm:get('lock:hash'..msg.chat_id_) then  if msg.content_.caption_:match("#") then delete_msg(msg.chat_id_,{[0] = msg.id_}) end  end  end
if text and text:match("#") and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then if tahadevstorm:get('lock:hash'..msg.chat_id_) then  delete_msg(msg.chat_id_,{[0] = msg.id_})        end      end
if msg.content_.caption_ then if tahadevstorm:get('lock:cmds'..msg.chat_id_) then  if msg.content_.caption_:match("/") and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then delete_msg(msg.chat_id_,{[0] = msg.id_})  end  end  end
if text and text:match("/") and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then if tahadevstorm:get('lock:cmds'..msg.chat_id_) then  delete_msg(msg.chat_id_,{[0] = msg.id_})        end      end
if msg.content_.caption_ then if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then if tahadevstorm:get('lock:links'..msg.chat_id_) then  if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then delete_msg(msg.chat_id_,{[0] = msg.id_}) end  end  end end
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") then if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then if tahadevstorm:get('lock:links'..msg.chat_id_) then  delete_msg(msg.chat_id_,{[0] = msg.id_})    end    end      end
if msg.content_.ID == 'MessagePhoto' then  if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then  if tahadevstorm:get('lock:photo'..msg.chat_id_) then  delete_msg(msg.chat_id_,{[0] = msg.id_}) return  end end  end
if msg.content_.ID == 'MessageText' then if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then  if tahadevstorm:get('lock:text'..msg.chat_id_) then   delete_msg(msg.chat_id_,{[0] = msg.id_})  return  end end  end
if msg.content_.ID == 'MessageVideo' then if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then  if tahadevstorm:get('lock:ved'..msg.chat_id_) then  delete_msg(msg.chat_id_,{[0] = msg.id_}) return  end end  end
if msg.content_.ID == 'MessageAnimation' then if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then  if tahadevstorm:get('lock:gif'..msg.chat_id_) then  delete_msg(msg.chat_id_,{[0] = msg.id_}) return  end end  end
if msg.content_.game_ then if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then  if tahadevstorm:get('lock:geam'..msg.chat_id_) then  delete_msg(msg.chat_id_,{[0] = msg.id_})  return  end end  end
if msg.content_.ID == 'MessageAudio' then if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then  if tahadevstorm:get('lock:muse'..msg.chat_id_) then  delete_msg(msg.chat_id_,{[0] = msg.id_})  return  end end  end
if msg.content_.ID == 'MessageVoice' then if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then  if tahadevstorm:get('lock:vico'..msg.chat_id_) then     delete_msg(msg.chat_id_,{[0] = msg.id_})  return  end end  end
if msg.reply_markup_ and msg.reply_markup_.ID == 'ReplyMarkupInlineKeyboard' then if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then  if tahadevstorm:get('lock:inlin'..msg.chat_id_) then  delete_msg(msg.chat_id_,{[0] = msg.id_})  return  end end  end
if msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == "MessageChatJoinByLink" then if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then  if tahadevstorm:get('lock:addm'..msg.chat_id_) then  delete_msg(msg.chat_id_,{[0] = msg.id_})      changeChatMemberStatus(msg.chat_id_, msg.content_.members_[0].id_, "Kicked")  return  end end  end
if msg.content_.ID == 'MessageSticker' then if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then  if tahadevstorm:get('lock:ste'..msg.chat_id_) then   delete_msg(msg.chat_id_,{[0] = msg.id_}) return  end end end
if msg.forward_info_ then if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then  if tahadevstorm:get('lock:fwd'..msg.chat_id_) then   delete_msg(msg.chat_id_,{[0] = msg.id_}) return  end end  end
if msg.content_.ID == 'MessageDocument' then if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then  if tahadevstorm:get('lock:file'..msg.chat_id_) then    delete_msg(msg.chat_id_,{[0] = msg.id_}) return  end end  end
if msg.content_.ID == "MessageUnsupported" then if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then   if tahadevstorm:get('lock:self'..msg.chat_id_) then delete_msg(msg.chat_id_,{[0] = msg.id_}) return  end end  end
if msg.content_.entities_ then if msg.content_.entities_[0] then if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then if tahadevstorm:get('lock:mark'..msg.chat_id_) then delete_msg(msg.chat_id_,{[0] = msg.id_})        end      end end end
if msg.content_.ID == 'MessageContact' then if tahadevstorm:get('lock:phon'..msg.chat_id_) then   delete_msg(msg.chat_id_,{[0] = msg.id_})        end      end
if msg.content_.text_ then  local _nl, ctrl_chars = string.gsub(text, '%c', '')  local _nl, real_digits = string.gsub(text, '%d', '')   local hash = 'bot:sens:spam'..msg.chat_id_  if not tahadevstorm:get(hash) then sens = 400  else sens = tonumber(tahadevstorm:get(hash))  end if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) and tahadevstorm:get('lock:spm'..msg.chat_id_) and string.len(msg.content_.text_) > (sens) or ctrl_chars > (sens) or real_digits > (sens) then delete_msg(msg.chat_id_,{[0] = msg.id_})  end  end
if msg.content_.ID == "MessageChatAddMembers" then   if msg.content_.members_[0].type_.ID == 'UserTypeBot' then  if not is_mod(msg) then if tahadevstorm:get('lock:bots:kick'..msg.chat_id_) then   changeChatMemberStatus(msg.chat_id_, msg.content_.members_[0].id_, 'Kicked')    changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked") function bot_kick(extra, result, success) username = '@'..(result.username_ or 'ماكو معرف ❌')..''
local text = [[
🚸┊العضو • <b>{</b> ]]..username..[[ <b>}</b>
📬┊الايدي • <b>{ ]]..msg.sender_user_id_..[[ }</b>
🚷┊قام باضافه بوت <b>{</b>API<b>}</b>
<b> ================== </b>
🔽┇ معلومات البوت ┇🔽
 💠┊معرف البوت <b>{</b> @]]..msg.content_.members_[0].username_..[[ <b>}</b>
📇┊اسم البوت <b>{</b> ]]..msg.content_.members_[0].first_name_..[[ <b>}</b>
🎳┊ايدي البوت <b>{ ]]..msg.content_.members_[0].id_..[[ }</b>
<b> ================== </b>
📬┊لقد تم طرد البوت وتم طرد الذي اضاف البوت هنا 😇
]]  storm_sendMsg(msg.chat_id_, 0,1, text,1, 'html')  end  end  getUser(msg.sender_user_id_, bot_kick)  end end  end  end end
if text and text:match('(.*)') then   title_name(msg.chat_id_)   if not tahadevstorm:get('lock:tepy'..bot_id) then sendaction(msg.chat_id_, 'Typing')  end  end 
if text and text:match('(.*)') then  title_name(msg.chat_id_)  os.execute('cd .. &&  rm -rf ../.telegram-cli')  os.execute('cd .. &&  rm -rf .telegram-cli')  end local muteall = tahadevstorm:get('muteall'..msg.chat_id_)
if msg.sender_user_id_ and muteall and not is_mod(msg) then delete_msg(msg.chat_id_, {[0] = msg.id_}) end
if msg.sender_user_id_ and is_muted(msg.chat_id_,msg.sender_user_id_) then delete_msg(msg.chat_id_, {[0] = msg.id_}) end
if msg.sender_user_id_ and is_banned(msg.chat_id_,msg.sender_user_id_) then kick(msg,msg.chat_id_,msg.sender_user_id_) delete_msg(msg.chat_id_, {[0] = msg.id_}) end
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and is_banned(msg.chat_id_,msg.content_.members_[0].id_) then kick(msg,msg.chat_id_,msg.content_.members_[0].id_) delete_msg(msg.chat_id_, {[0] = msg.id_}) storm_sendMsg(msg.chat_id_, msg.id_, 1, '',1, 'md') end
if msg.sender_user_id_ and is_gban(msg.chat_id_,msg.sender_user_id_) then kick(msg,msg.chat_id_,msg.sender_user_id_) delete_msg(msg.chat_id_, {[0] = msg.id_}) end
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and is_gban(msg.chat_id_,msg.content_.members_[0].id_) then kick(msg,msg.chat_id_,msg.content_.members_[0].id_) delete_msg(msg.chat_id_, {[0] = msg.id_}) end local status_welcome = (tahadevstorm:get('add:welc:'..msg.chat_id_) or 'rem')  if status_welcome == 'add' then
if msg.content_.ID == "MessageChatJoinByLink" then
if not is_banned(msg.chat_id_,msg.sender_user_id_) then function wlc(extra,result,success) if tahadevstorm:get('welcome:'..msg.chat_id_) then t = tahadevstorm:get('welcome:'..msg.chat_id_) else  t = { 'هله اجه الكروب كله يرحب بي 💋','لضل صنم رحمه للكعبه احجي سولف اني اسولف وياك 🤗❤️','نورت الكروب 💋',"هله بريحه هلي 😍😉",'ضويت الكروب شمعه ❤️','الجه الزين كله 💋','هلا بيك حبيبي نورت ','نورت كلبي 💋','صير حباب ولضل ثكيل 🤷🏼‍♀️','❤️ نورتنه يروح عمتك ☺️','صير خوش عضو بالكروب ترا اطردك 🙃','نـَْﮩْْ❀ُུـَ❀﴿💡﴾ـۖؐـورتـ❥','مٰ̲ہٰٰنہٰٰوِٰڕٰ حہٰٰبྀ̲ہ؏ۤـٖٓہٰٰمٰ̲ہٰٰڕٰيِٰہٰٰ┊※🌝️‘’' }   end storm_sendMsg(msg.chat_id_, msg.id_, 1, t,0) storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..t[math.random(#t)]..'',0) end getUser(msg.sender_user_id_,wlc) end end
if msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].type_.ID == 'UserTypeGeneral' then
if msg.content_.ID == "MessageChatJoinByLink" then
if not is_banned(msg.chat_id_,msg.content_.members_[0].id_) then
if tahadevstorm:get('welcome:'..msg.chat_id_) then t = tahadevstorm:get('welcome:'..msg.chat_id_) else t = ' {name} منور حياتي' end local t = t:gsub('{name}',msg.content_.members_[0].first_name_) storm_sendMsg(msg.chat_id_, msg.id_, 1, t,0) end end end end if chat_type == 'super' then
if text == 'قفل الصور' and is_mod(msg) then
tahadevstorm:set('lock:photo'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل ارسـال الــصور 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل الروابط' and is_mod(msg) then 
tahadevstorm:set('lock:links'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل ارسـال الــروابط 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل الشارحه' and is_mod(msg) then
tahadevstorm:set('lock:cmds'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل ارسـال الــشارحه 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل المعرفات' and is_mod(msg) then
tahadevstorm:set('lock:user'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل ارسـال الــمعرفات 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل التاك' and is_mod(msg) then
tahadevstorm:set('lock:hash'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل ارسـال الــتاك 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل الصوت' and is_mod(msg) then 
tahadevstorm:set('lock:muse'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل ارسـال الــصوت 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل الدردشه' and is_mod(msg) then
tahadevstorm:set('lock:text'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل الدردشه هنا 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل الفيديو' and is_mod(msg) then
tahadevstorm:set('lock:ved'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل ارسـال الــفيديو 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل المتحركه' and is_mod(msg) then
tahadevstorm:set('lock:gif'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل ارسـال الــمتحركه 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل الملصقات' and is_mod(msg) then
tahadevstorm:set('lock:ste'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل ارسـال الــملصقات 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل الالعاب' and is_mod(msg) then
tahadevstorm:set('lock:geam'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل ارسـال الالـعاب 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل الاغاني' and is_mod(msg) then
tahadevstorm:set('lock:vico'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل ارسـال الاغـاني 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل اللستات' and is_mod(msg) then
tahadevstorm:set('lock:inlin'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل ارسـال اللستـات 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل الدخول' and is_mod(msg) then
tahadevstorm:set('lock:addm'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل دخول الاعضاء 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل التوجيه' and is_mod(msg) then
tahadevstorm:set('lock:fwd'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل ارسـال الــتوجيه 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل الكلايش' and is_mod(msg) then
tahadevstorm:set('lock:spm'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل ارسـال الــكلايش 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل الملفات' and is_mod(msg) then
tahadevstorm:set('lock:file'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل ارسـال الــملفات 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل التعديل' and is_mod(msg) then
tahadevstorm:set('lock:edit'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل تعديل الرسائل 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل الماركداون' and is_mod(msg) then
tahadevstorm:set('lock:mark'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل ارسـال الماركداون 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل الاشعارات' and is_mod(msg) then
tahadevstorm:set('lock:tagservr'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل الاشعارت 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل الجهات' and is_mod(msg) then
tahadevstorm:set('lock:phon'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل ارسـال الــجهات 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل البوتات' and is_mod(msg) then
tahadevstorm:set('lock:bots:kick'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل اضافه البوتات 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل التثبيت' and is_mod(msg) then
tahadevstorm:set("lockpin"..msg.chat_id_, true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل تثبيت الرسائل 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'قفل السيلفي' and is_mod(msg) then
tahadevstorm:set('lock:self'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل ارسـال بصمه الفيديو 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html') 
elseif text == 'قفل الكل' and is_mod(msg) then
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم قفـل جميع الاوامر 💥\n✓'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  return add_lockal(msg.chat_id_) end    
if text == 'فتح الصور' and is_mod(msg) then
tahadevstorm:del('lock:photo'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح ارسـال الــصور 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح الروابط' and is_mod(msg) then 
tahadevstorm:del('lock:links'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح ارسـال الــروابط 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')  
elseif text == 'فتح الشارحه' and is_mod(msg) then
tahadevstorm:del('lock:cmds'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح ارسـال الــشارحه 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح المعرفات' and is_mod(msg) then
tahadevstorm:del('lock:user'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح ارسـال الــمعرفات 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح التاك' and is_mod(msg) then
tahadevstorm:del('lock:hash'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح ارسـال الــتاك 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح الصوت' and is_mod(msg) then 
tahadevstorm:del('lock:muse'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح ارسـال الــصوت 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح الدردشه' and is_mod(msg) then
tahadevstorm:del('lock:text'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح الدردشه هنا 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح الفيديو' and is_mod(msg) then
tahadevstorm:del('lock:ved'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح ارسـال الــفيديو 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح المتحركه' and is_mod(msg) then
tahadevstorm:del('lock:gif'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح ارسـال الــمتحركه 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح الملصقات' and is_mod(msg) then
tahadevstorm:del('lock:ste'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح ارسـال الــملصقات 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح الالعاب' and is_mod(msg) then
tahadevstorm:del('lock:geam'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح ارسـال الالـعاب 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح الاغاني' and is_mod(msg) then
tahadevstorm:del('lock:vico'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح ارسـال الاغـاني 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح اللستات' and is_mod(msg) then
tahadevstorm:del('lock:inlin'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح ارسـال اللستـات 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح الدخول' and is_mod(msg) then
tahadevstorm:del('lock:addm'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح دخول الاعضاء 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح التوجيه' and is_mod(msg) then
tahadevstorm:del('lock:fwd'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح ارسـال الــتوجيه 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح الكلايش' and is_mod(msg) then
tahadevstorm:del('lock:spm'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح ارسـال الــكلايش 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح الملفات' and is_mod(msg) then
tahadevstorm:del('lock:file'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح ارسـال الــملفات 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح التعديل' and is_mod(msg) then
tahadevstorm:del('lock:edit'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح تعديل الرسائل 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح الماركداون' and is_mod(msg) then
tahadevstorm:del('lock:mark'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح ارسـال الماركداون 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح الاشعارات' and is_mod(msg) then
tahadevstorm:del('lock:tagservr'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح الاشعارت 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح الجهات' and is_mod(msg) then
tahadevstorm:del('lock:phon'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح ارسـال الــجهات 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح البوتات' and is_mod(msg) then
tahadevstorm:del('lock:bots:kick'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح اضافه البوتات 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح التثبيت' and is_mod(msg) then
tahadevstorm:del("lockpin"..msg.chat_id_, true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح تثبيت الرسائل 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   
elseif text == 'فتح السيلفي' and is_mod(msg) then
tahadevstorm:del('lock:self'..msg.chat_id_,true)
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح ارسـال بصمه الفيديو 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html') 
elseif text == 'فتح الكل' and is_mod(msg) then
taha = '⚡️ ❯ اهلا عزيزي '..get_rtba(msg)..' 🍃\n🚸 ❯ تــم فـتح جميع الاوامر 💥\n✘'
storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'html')   return rem_lockal(msg.chat_id_) end    
if text == 'طرد البوتات' and is_monsh(msg) then  local function cb(extra,result,success) local bots = result.members_  for i=0 , #bots do   if tonumber(bots) == 0 then kick(msg,msg.chat_id_,bots[i].user_id_) else kick(msg,msg.chat_id_,bots[i].user_id_)   end end     end chek_bots(msg.chat_id_,cb)     end  
if text and is_owner(msg) then
if text == 'قفل التكرار بالطرد' then tahadevstorm:hset("flooding:settings:"..msg.chat_id_ ,"flood",'kick')  storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ تم قفل التكرار بالطرد',1, 'md')
elseif text == 'قفل التكرار بالحظر' then tahadevstorm:hset("flooding:settings:"..msg.chat_id_ ,"flood",'ban')  storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ تم قفل التكرار بالحظر',1, 'md')
elseif text == 'قفل التكرار بالكتم' then tahadevstorm:hset("flooding:settings:"..msg.chat_id_ ,"flood",'mute')  storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ تم قفل التكرار بالكتم',1, 'md')
elseif text == 'فتح التكرار' then tahadevstorm:hdel("flooding:settings:"..msg.chat_id_ ,"flood")  storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ تم فتح التكرار',1, 'md') end end end
if text and text:match("^(اذاعه) (-%d+) (.*)") and is_devtaha(msg) then local matches = {text:match("^(اذاعه) (-%d+) (.*)")} if #matches == 3 then storm_sendMsg((matches[2]), 0, 1, matches[3], 1, "html")  
storm_sendMsg(msg.chat_id_, msg.id_, 1, '📮 ❯❯ تم ارسال رسالتك الى \n'..matches[2]..' 🍃', 1, 'md')  end end
if msg.chat_id_ then local id = tostring(msg.chat_id_) if id:match('-100(%d+)') then tahadevstorm:incr('sgpsmessage:') if not tahadevstorm:sismember("botgps",msg.chat_id_) then   tahadevstorm:sadd("botgps",msg.chat_id_) end elseif id:match('^(%d+)') then tahadevstorm:incr('pvmessage:') if not tahadevstorm:sismember("usersbot",msg.chat_id_) then tahadevstorm:sadd("usersbot",msg.chat_id_) end else tahadevstorm:incr('gpsmessage:') if not tahadevstorm:sismember("botgp",msg.chat_id_) then tahadevstorm:sadd("botgp",msg.chat_id_)  end end end if text then if is_devtaha(msg) then
if text == 'ارسال نسخه' and is_devtaha(msg) then  sendDocument(SUDO, 0, 0, 1, nil, './STORM.lua', '🚸┊اسم الملف ( STORM.lua )\n♻┊عدد المشتركين ( '..(tahadevstorm:scard("usersbot") or 0)..' )\n📮┊عدد المجموعات ( '..(tahadevstorm:scard("botgps") or 0)..' )',dl_cb, nil)  end
if text == 'اذاعه خاص بالرد' and tonumber(msg.reply_to_message_id_) > 0 and is_devtaha(msg) then function cb(a,b,c) local text = b.content_.text_ local list = tahadevstorm:smembers('usersbot') for k,v in pairs(list) do storm_sendMsg(v, 0, 1, text,1, 'md') end local pv = tahadevstorm:scard("usersbot")      local text = '📬┊تم ارسال رسالتك الى *{'..pv..'}* مشتركين' storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md') end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),cb) end
if text == 'اذاعه بالرد' and tonumber(msg.reply_to_message_id_) > 0 and is_devtaha(msg) then function cb(a,b,c) local text = b.content_.text_ local list = tahadevstorm:smembers('usersbot') for k,v in pairs(list) do storm_sendMsg(v, 0, 1, text,1, 'md') end local grp = tahadevstorm:scard("usersbot")      local text = '📇┊تم ارسال رسالتك الى *{'..grp..'}* مجموعات' storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md') end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),cb) end
if text == 'اذاعه للكل بالرد' and tonumber(msg.reply_to_message_id_) > 0 and is_devtaha(msg) then function cb(a,b,c) local text = b.content_.text_ local list = tahadevstorm:smembers('usersbot') for k,v in pairs(list) do storm_sendMsg(v, 0, 1, text,1, 'md') end local text = b.content_.text_ local list = tahadevstorm:smembers('botgps') for k,v in pairs(list) do storm_sendMsg(v, 0, 1, text,1, 'md') end local grp = tahadevstorm:scard("botgps")  local pv = tahadevstorm:scard("usersbot")          local text = '📮┊تم ارسالها الى *{'..pv..'}* مشتركين\n📇┊وتم ارسالها الى *{ '..grp..' }* مجموعات' storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md') end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),cb) end
if text == 'رفع مطور' and is_devtaha(msg) then function sudo_reply(extra, result, success) tahadevstorm:sadd('sudo:bot',result.sender_user_id_) tahadevstorm:srem('moder'..result.chat_id_,result.sender_user_id_)   zo = '🚸 ❯ العضو <b>{</b> '..storm_get_user(result.sender_user_id_)..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.sender_user_id_..' }</b>\n🚀 ❯ تم ترقيته مطور البوت\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html') end if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),sudo_reply) end end
if text and is_sudo(msg) and text:match('^رفع مطور (%d+)') and is_devtaha(msg) then local user = text:match('رفع مطور (%d+)') tahadevstorm:sadd('sudo:bot',user) tahadevstorm:srem('moder'..msg.chat_id_,user) zo = '📮 ❯ العضو <b>{ '..user..' }</b>\n🚀 ❯ تم ترقيته مطور البوت\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html') end
if text and text:match('^رفع مطور @(.*)') and is_devtaha(msg) then     local username = text:match('^رفع مطور @(.*)')  function setsudo(extra,result,success)   if result.id_ then   tahadevstorm:sadd('sudo:bot',result.id_) tahadevstorm:srem('moder'..msg.chat_id_,user)  zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم ترقيته مطور البوت\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>'   else    text = taha    end     storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html')    end    saddbyusername(username,setsudo)  end 
if text and text:match('^تنزيل مطور @(.*)') and is_devtaha(msg) then     local username = text:match('^تنزيل مطور @(.*)')  function vippyuser(extra,result,success)   if result.id_ then  tahadevstorm:srem('sudo:bot',result.id_) zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم تنزيله من المطورين\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>'  else    text = taha    end     storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html')    end    saddbyusername(username,vippyuser)  end
if text == 'تنزيل مطور' and is_devtaha(msg) then function sudo_reply(extra, result, success)  tahadevstorm:srem('sudo:bot',result.sender_user_id_) local user = result.sender_user_id_ zo = '🚸 ❯ العضو <b>{</b> '..storm_get_user(result.sender_user_id_)..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.sender_user_id_..' }</b>\n🚀 ❯ تم تنزيله من المطورين\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html') end if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),sudo_reply)   end end
if text and text:match('^تنزيل مطور (%d+)') and is_devtaha(msg) then local user = text:match('تنزيل مطور (%d+)') tahadevstorm:srem('sudo:bot',user) zo = '📮 ❯ العضو <b>{ '..user..' }</b>\n🚀 ❯ تم تنزيله من المطورين\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html') end end if is_sudo(msg) then
if text == "تحديث السورس" and is_devtaha(msg) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '♻ • جاري تحديث السورس • ♻', 1, 'md') os.execute('rm -rf STORM.lua') os.execute('wget https://raw.githubusercontent.com/NOVAR1/STORM/master/STORM.lua') sleep(0.5) storm_sendMsg(msg.chat_id_, msg.id_, 1, '🚸┊تم تحديث ♻ السورس ✔ ', 1, 'md')  end
if text == 'حظر عام' and is_devtaha(msg)   then if msg.reply_to_message_id_ == 0 then local user = msg.sender_user_id_ else function banreply(extra, result, success) banall(msg,msg.chat_id_,result.sender_user_id_) end end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),banreply) end
if text and text:match('^حظر عام @(.*)') and is_devtaha(msg)   then local username = text:match('حظر عام @(.*)') function banusername(extra,result,success) if result.id_ then   if tonumber(result.id_) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌┊لا تستطيع طرد او حظر او كتم البوت', 1, 'md')  return false  end if storm1(msg.chat_id_,result.id_) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ لا تسطيع حضر او كتم او طرد ( الادمنيه و المدراء )', 1, 'md') else  tahadevstorm:sadd('storm:gbaned'..msg.chat_id_,result.id_)  zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم حظره عام\n'   end  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'html')  end end saddbyusername(username,banusername) end
if text and text:match('^حظر عام (%d+)') and is_devtaha(msg)  then local user = text:match('حظر عام (%d+)')  if tonumber(user) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌┊لا تستطيع طرد او حظر او كتم البوت', 1, 'md')  return false  end if storm1(msg.chat_id_,user) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ لا تسطيع حضر او كتم او طرد ( الادمنيه و المدراء )', 1, 'md') else tahadevstorm:sadd('storm:gbaned',user)  zo = '📮 ❯ العضو <b>{ '..user..' }</b>\n🚀 ❯ تم حظره عام\n<b>=•=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html') end end
if text == 'الغاء العام' and is_devtaha(msg) then if msg.reply_to_message_id_ == 0 then local user = msg.sender_user_id_ else function unbanreply(extra, result, success) unbanall(msg,msg.chat_id_,result.sender_user_id_) end end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),unbanreply) end	
if text and text:match('^الغاء العام (%d+)') and is_devtaha(msg) then  local user = text:match('الغاء العام (%d+)') tahadevstorm:srem('storm:gbaned',user)  zo = '📮 ❯ العضو <b>{ '..user..' }</b>\n🚀 ❯ تم حظره عام\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html') end
if text and text:match('^الغاء العام @(.*)') and is_devtaha(msg) then local username = text:match('الغاء العام @(.*)') function unbanusername(extra,result,success) if result.id_ then tahadevstorm:srem('storm:gbaned'..msg.chat_id_,result.id_)  zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم الغاء حظره عام\n'  else zo = '❌ يوجد خطا في الاتصال '   end  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'html')  end saddbyusername(username,unbanusername) end
if text == 'المحظورين عام' or text == 'قائمه العام' and is_sudo(msg) then local list = tahadevstorm:smembers('storm:gbaned') local t = '💥 • قائمه المحظورين عام • 💥\nٴ—⚜———༺🚸༻———⚜—  \n' for k, v in pairs(list) do if storm_get_user1 then t = t .. k .. "<b>~➣{</b> " ..storm_get_user1(v).."<b>}</b>\n"  else  t = t .. k .. " ~➣{" ..storm_get_user1(v).."<b>}</b>\n"  end  end if #list == 0 then t = '💥┊ لا يوجد اعضاء محظورين عام' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'html') end
if text == 'مسح العام' or text == 'مسح قائمه العام' and is_devtaha(msg) then tahadevstorm:del('storm:gbaned') storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥┊ تم مسح قائمه المحظورين عام ', 1, 'html') end	 
if text == 'تحديث' or text == 'تحديث ♻' and is_devtaha(msg) then  dofile('MEXICO.lua')  io.popen("rm -rf ~/.telegram-cli/data/audio/*") io.popen("rm -rf ~/.telegram-cli/data/document/*") io.popen("rm -rf ~/.telegram-cli/data/photo/*") io.popen("rm -rf ~/.telegram-cli/data/sticker/*") io.popen("rm -rf ~/.telegram-cli/data/temp/*") io.popen("rm -rf ~/.telegram-cli/data/thumb/*") io.popen("rm -rf ~/.telegram-cli/data/video/*") io.popen("rm -rf ~/.telegram-cli/data/voice/*") io.popen("rm -rf ~/.telegram-cli/data/profile_photo/*")
print("\27[734m"..[[]].."")
print("\27[734m"..[[                  ♻ •>>  تم تحديث البوت   <<•♻          ]].."")
print("\27[737m"..[[]].."")
storm_sendMsg(msg.chat_id_, msg.id_, 1, '📬┊تم تحديث البوت', 1, 'html') end 
if text == 'الاحصائيات' and is_devtaha(msg) then local nabuser = tahadevstorm:scard("usersbot") or 0 local msgusrr = tahadevstorm:get('pvmessage:') or 0 local groups = tahadevstorm:scard("botgps") or 0 local msgallgroups = tahadevstorm:get("allmsg") or 0 storm_sendMsg(msg.chat_id_, msg.id_, 1,'\n💥┊عدد المجموعات *{'..groups..'}*\n📬┊عدد المشتركين *{'..nabuser..'}*', 1, 'md') end
if text == 'مسح المشتركين' and is_devtaha(msg) then  local list = tahadevstorm:smembers('usersbot')  for k,v in pairs(list) do   tahadevstorm:srem(v,'usersbot')  tahadevstorm:del("usersbot")  tahadevstorm:del('usersbot')   end  storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥┊تم مسح جميع المشتركين', 1, 'md')   end if chat_type == 'super' then
if text == 'غادر' and is_sudo(msg) then tahadevstorm:del("botgps")  tahadevstorm:del('bot:gpsby:id') tahadevstorm:del("addfrebot:"..msg.chat_id_, true) changeChatMemberStatus(msg.chat_id_, bot_id, "Left") storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ تم مغادرة المجموعه ', 1, 'md') end
if text == 'رفع منشئ' and is_sudo(msg) then function prom_reply(extra, result, success) monsh(msg,msg.chat_id_,result.sender_user_id_)  end if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply) end end
if text and text:match('^رفع منشئ @(.*)') and is_sudo(msg) then local username = text:match('^رفع منشئ @(.*)') function promreply(extra,result,success) if result.id_ then tahadevstorm:sadd('moder'..msg.chat_id_,result.id_) zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم ترقيته منشئ\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' else  zo = '❌ يوجد خطا في الاتصال ' end storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'html')  end saddbyusername(username,promreply) end
if text and text:match('^رفع منشئ (%d+)') and is_sudo(msg) then local user = text:match('رفع منشئ (%d+)') tahadevstorm:sadd('moder'..msg.chat_id_,user)  zo = '\n📮 ❯ العضو <b>{ '..user..' }</b>\n🚀 ❯ تم ترقيته منشئ\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html')   end 
if text == 'تنزيل منشئ' and is_sudo(msg) then function prom_reply(extra, result, success) demmonsh(msg,msg.chat_id_,result.sender_user_id_) end if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)   end end
if text and text:match('^تنزيل منشئ @(.*)') and is_sudo(msg) then  local username = text:match('^تنزيل منشئ @(.*)') function demreply(extra,result,success)   if result.id_ then  tahadevstorm:srem('moder'..msg.chat_id_,result.id_)  zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم تنزيله من المنشئين\n'  else zo = '❌ يوجد خطا في الاتصال '   end  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'html')  end  saddbyusername(username,demreply) end
if text and text:match('^تنزيل منشئ (%d+)') and is_sudo(msg) then local user = text:match('تنزيل منشئ (%d+)') tahadevstorm:srem('moder'..msg.chat_id_,user)  zo = '\n📮 ❯ العضو <b>{ '..user..' }</b>\n🚀 ❯ تم تنزيله من المنشئين\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html') end
if text ==('المنشئين') and is_owner(msg) then local list = tahadevstorm:smembers('moder'..msg.chat_id_) local t = '💥 • قائمه المنشئين الكروب • 💥\nٴ—⚜———༺🚸༻———⚜—  \n' for k, v in pairs(list) do if storm_get_user1 then t = t .. k .. "<b>~➣{</b> " ..storm_get_user1(v).."<b>}</b>\n"  else  t = t .. k .. " ~➣{" ..storm_get_user1(v).."<b>}</b>\n"  end  end if #list == 0 then t = '💥┊ لا يوجد منشئين هنا' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'html') end
if text == 'مسح المنشئين' and is_sudo(msg) then tahadevstorm:del('moder'..msg.chat_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥┊ تم مسح المنشئين بنجاح ✔', 1, 'md') end end
if text == 'رفع مدير' and is_owner(msg) then  function prom_reply(extra, result, success)  moder1(msg,msg.chat_id_,result.sender_user_id_) end if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply) end end
if text and text:match('^رفع مدير @(.*)') and is_owner(msg) then local username = text:match('^رفع مدير @(.*)') function promreply(extra,result,success) if result.id_ then  tahadevstorm:sadd('monsha'..msg.chat_id_,result.id_)  zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم ترقيته مدير\n'  else zo = '❌ يوجد خطا في الاتصال '   end  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'html')  end  saddbyusername(username,promreply) end
if text and text:match('^رفع مدير (%d+)') and is_owner(msg) then local user = text:match('رفع مدير (%d+)') tahadevstorm:sadd('monsha'..msg.chat_id_,user)  zo = '📮 ❯ العضو <b>{ '..user..' }</b>\n🚀 ❯ تم ترقيته مدير\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html')  end 
if text == 'تنزيل مدير' and is_owner(msg) then function prom_reply(extra, result, success) demmoder1(msg,msg.chat_id_,result.sender_user_id_) end if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)   end end
if text and text:match('^تنزيل مدير @(.*)') and is_owner(msg) then local username = text:match('^تنزيل مدير @(.*)') function demreply(extra,result,success)  if result.id_ then  tahadevstorm:srem('monsha'..msg.chat_id_,result.id_)  zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم تنزيله من الاداره\n'  else zo = '❌ يوجد خطا في الاتصال '   end  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'html')  end saddbyusername(username,demreply) end
if text and text:match('^تنزيل مدير (%d+)') and is_owner(msg) then local user = text:match('تنزيل مدير (%d+)') tahadevstorm:srem('monsha'..msg.chat_id_,user)  zo = '📮 ❯ العضو <b>{ '..user..' }</b>\n🚀 ❯ تم تنزيله من الاداره\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html')  end
if text == 'مسح المدراء' and is_owner(msg) then tahadevstorm:del('monsha'..msg.chat_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥┊ تم مسح مديرين المجموعه', 1, 'md') end 
if text ==('المدراء') and is_monsh(msg) then local list = tahadevstorm:smembers('monsha'..msg.chat_id_) local t = '💥 • قائمه مدراء الكروب • 💥\nٴ—⚜———༺🚸༻———⚜—  \n' for k, v in pairs(list) do if storm_get_user1 then t = t .. k .. "<b>~➣{</b> " ..storm_get_user1(v).."<b>}</b>\n"  else  t = t .. k .. " ~➣{" ..storm_get_user1(v).."<b>}</b>\n"  end  end if #list == 0 then t = '❌┊ لا يوجد مدراء هنا' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'html') end
if text == 'مسح المطورين' and is_devtaha(msg) then   local list = tahadevstorm:smembers('sudo:bot') for k,v in pairs(list) do  tahadevstorm:srem(v,'sudo:bot') tahadevstorm:del("sudo:") tahadevstorm:del('sudo:bot')  end storm_sendMsg(msg.chat_id_, msg.id_, 1,'✔┊تم مسح جميع المطورين', 1, 'md')   end
if text == 'مسح المميزين عام' and is_devtaha(msg) then    local list = tahadevstorm:smembers('vip:groups')  for k,v in pairs(list) do  tahadevstorm:del(v,'vip:groups')  tahadevstorm:del("vip:groups")  tahadevstorm:del('vip:groups')   end storm_sendMsg(msg.chat_id_, msg.id_, 1,'🚸┊تم مسح جميع المميزين عام', 1, 'md')   end
if text == 'مسح المقيدين' and is_mod(msg) then     local list = tahadevstorm:smembers('tedmembars'..msg.chat_id_) for k,v in pairs(list) do   tahadevstorm:del('tedmembars'..msg.chat_id_) HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..v.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True") tahadevstorm:srem("keed", msg.chat_id_)  end storm_sendMsg(msg.chat_id_, msg.id_, 1,'🚸┊تم مسح المقيدين', 1, 'md')   end
if text and text:match('^ايدي @(.*)') then local username = text:match('^ايدي @(.*)') function id_by_username(extra,result,success) local msgss = tonumber(tahadevstorm:get('user:messages:'..msg.chat_id_..':'..result.id_) or 0) local msgtaha = 357 local msggstaha = tahadevstorm:get('user:messages:'..msg.chat_id_..':'..result.id_) or 0  local nupmsgg =  tonumber((msggstaha / msgtaha) * 100)   local  tahah = 1  for k,v in pairs(tahadevstorm:hkeys("user:messages"..msg.chat_id_..":*")) do  if tahadevstorm:get("user:messages"..msg.chat_id_":"..v) > tahah then  tahah = tahadevstorm:get("user:messages"..msg.chat_id_":"..v)  end end if result.id_ then  text = ' ❯ اهلا بك في معلوماته ❮ 🚸 \n<code>﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎</code>\n🎮￤ ايديه  <b>{ '..result.id_..' }</b>\n📇￤ رسايله <b>{ '..(tahadevstorm:get('user:messages:'..msg.chat_id_..':'..result.id_) or 0)..' }</b>\n📮￤ نسبه تفاعله <b>{ '..string.sub(nupmsgg, 1,5)..'% }</b>\n♻￤ تفاعله { '..formsgg(msgss)..' }\n🚀￤ معرفه <b>{</b> '..storm_get_user(result.id_)..' <b>}</b>\n📬￤ اسمه  {<code> '..storm_get_name(result.id_)..' </code>}\n<code>﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎</code>\n📮 ❯ المطور @'..sudouser..'' else   text = '' end storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'html') end saddbyusername(username,id_by_username) end
if text and text:match('الحساب (%d+)') then local idtaha = text:match('الحساب (%d+)')  local taha = {'اضغط هنا للدخول الى حساب الصاك 😍'} tdcli_function ({ID="SendMessage", chat_id_=msg.chat_id_, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=taha[math.random(#taha)], disable_web_page_preview_=1, clear_draft_=0, entities_={[0] = {ID="MessageEntityMentionName", offset_=0, length_=30, user_id_=idtaha}}}}, dl_cb, nil) end
if text and text:match("^كول (.+)") and not text:match("^كول @(.+)")  and not text:match("^كول [Tt].[Mm][Ee](.+)")  and not text:match("^كول [Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/(.+)") and not text:match("^كول [Hh][Tt][Tt][Pp][Ss]://(.+)") and not text:match("^كول [Hh][Tt][Tt][Pp]://(.+)")  and not text:match("^كول [Ww][Ww][Ww].(.+)") and not text:match("^كول (.+).[Cc][Oo][Mm]")  and  is_mod(msg) then  local taha =  text:match("^كول (.+)")  storm_sendMsg(msg.chat_id_, msg.id_, 1,'`'..taha..'`', 1, 'md') end end
if text == 'تحديث السيرفر' and is_devtaha(msg) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '🚸┊جاري تحديث السيرفر ♻', 1, 'html')  sleep(2) storm_sendMsg(msg.chat_id_, msg.id_, 1, '✔┊تم تحديث السيرفر ♻ وعمل رن ب screen ', 1, 'html')  os.execute('cd $home && cd test && chmod +x tg && chmod +x STORM.sh && screen -S -X  ./STORM.sh') end
if text == 'الكروبات' and is_sudo(msg) then local addgrop = tahadevstorm:scard("botgps") storm_sendMsg(msg.chat_id_, msg.id_, 1, 'عدد مجموعات الفعله ( *'..addgrop..'* )', 1, 'md') end end
if text == 'المشتركين' and is_sudo(msg) then local addgrop = tahadevstorm:scard("usersbot") or 0 storm_sendMsg(msg.chat_id_, msg.id_, 1, 'عددد المشتركين ( *'..addgrop..'* )', 1, 'md') end   if chat_type == 'super' then
if text == 'مسح المجموعات' and is_sudo(msg) then local list = tahadevstorm:smembers('bot:gpsby:id')   for k,v in pairs(list) do changeChatMemberStatus(v, bot_id, "Left") tahadevstorm:del("botgps") tahadevstorm:del('bot:gpsby:id')  end storm_sendMsg(msg.chat_id_, msg.id_, 1,'♻┊ تم المغادره المجموعات كلها ✔', 1, 'md')   end
if text == 'رفع الادمنيه' and is_monsh(msg) then  local function cb(extra,result,success) local moder = result.members_   for i = 0 , #moder do   if tahadevstorm:sismember('mods:'..msg.chat_id_,moder[i].user_id_) then   else tahadevstorm:sadd('mods:'..msg.chat_id_,moder[i].user_id_) end  end end   storm_sendMsg(msg.chat_id_, msg.id_, 1, '🚸┊تم رفع الادمنيه في البوت <b>{</b> ارسل الادمنيه لعرضهم <b>}</b>', 1, 'html') chek_admin(msg.chat_id_,cb)   end 
if text == 'رفع المدير' and is_sudo(msg) then  function gpinfo(arg,data)   local function cb(extra,result,success)  local moder = result.members_    for i = data.administrator_count_ - 1 , #moder do   if tahadevstorm:sismember('moder'..msg.chat_id_,moder[i].user_id_) then  else tahadevstorm:sadd('moder'..msg.chat_id_,moder[i].user_id_) end  storm_sendMsg(msg.chat_id_, msg.id_, 1, '🚸┊تم ترقيتة منشئ الكروب في البوت معرفه <b>{</b>'..storm_get_user(moder[i].user_id_)..'<b>}</b>', 1, 'html')   end end  chek_admin(msg.chat_id_,cb) end getChannelFull(msg.chat_id_, gpinfo, nil) end   if chat_type == 'super' then
if text and text:match('^تفعيل ([https://]*.t.me/joinchat/%S+)$') and is_sudo(msg) then tahadevstorm:sadd('bot:gps', text:match('تفعيل ([https://]*.t.me/joinchat/%S+)'))  tahadevstorm:sadd('bot:gpsby:id', text:match('تفعيل ([https://]*.t.me/joinchat/%S+)'))  local taha = text:match('تفعيل ([https://]*.t.me/joinchat/%S+)') tahadevstorm:del('lock:add'..msg.chat_id_) function getmepar(extra,result,success) local username = nil username = '@'..(result.username_ or 'ماكو معرف ❌')..'' storm_sendMsg(msg.chat_id_, msg.id_, 1,'📮 ❯ المطور ( '..username..' )\n🎫┊ايديه ( `'..msg.sender_user_id_..'` )\n🎗┊ تم بتفعيل المجموعه \n♻ ('..taha..')', 1, 'md') end getUser(msg.sender_user_id_, getmepar) end    
if text and text:match('^تعطيل ([https://]*.t.me/joinchat/%S+)$') and is_sudo(msg) then tahadevstorm:srem('bot:gps', text:match('تعطيل ([https://]*.t.me/joinchat/%S+)')) tahadevstorm:srem('bot:gpsby:id', text:match('تعطيل ([https://]*.t.me/joinchat/%S+)')) tahadevstorm:del("botgps") local taha = text:match('تعطيل ([https://]*.t.me/joinchat/%S+)') tahadevstorm:set('lock:add'..msg.chat_id_,true) function getmepar(extra,result,success) username = '@'..(result.username_ or 'ماكو معرف ❌')..'' storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥┊ المطور ( '..username..' )\n🎫┊ايديه ( `'..msg.sender_user_id_..'` )\n♨┊ تم بتعطيل المجموعه 🔻\n🎳 ('..taha..')', 1, 'md') end getUser(msg.sender_user_id_, getmepar) end
if text and text:match('^ضع اسم (.*)') and is_owner(msg) then local name = text:match('^ضع اسم (.*)') changeChatTitle(msg.chat_id_, name) end
if text=="ضع رابط" and is_mod(msg) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, "♨┊حسناا ارسل لي رابط المجموعه ", 1, 'md')       tahadevstorm:set("link:group"..msg.chat_id_, 'setlinkwai') end
if text == "الرابط" then local link = tahadevstorm:get("link:group"..msg.chat_id_)            if link then                              storm_sendMsg(msg.chat_id_, msg.id_, 1, '💳┊رابط المجموعه 👇 \nٴ┄•🔸•┄༻📯༺┄•🔸•┄    \n'..link..'\n\n ٴ┄•🔸•┄༻📯༺┄•🔸•┄    \n', 1, 'html')                          else                storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌┊لم يتم وضع رابط المجموعه\n📯┊ارسل ( ضع رابط ) ليتم حفظ الرابط', 1, 'md')              end            end
if text and text:match("^مسح الرابط$")  and is_mod(msg) then              storm_sendMsg(msg.chat_id_, msg.id_, 1, "📬┊تم مسح الرابط ✔", 1 , "html")            tahadevstorm:del("link:group" .. msg.chat_id_)       end
if text=="اذاعه" and is_devtaha(msg) then tahadevstorm:setex("bc:in:grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) storm_sendMsg(msg.chat_id_, msg.id_, 1, "♨┊حسناا ارسل النص", 1, "html") end
if text=="اذاعه للكل" and is_devtaha(msg) then tahadevstorm:setex("bc:in:all" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) storm_sendMsg(msg.chat_id_, msg.id_, 1, "♨┊حسناا ارسل النص", 1, "html") end
if text=="اذاعه خاص" and is_devtaha(msg) then tahadevstorm:setex("bc:in:pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) storm_sendMsg(msg.chat_id_, msg.id_, 1, "♨┊حسناا ارسل النص", 1, "html") end if chat_type == 'super' then
if text and text:match("^ضع قوانين$") and is_mod(msg) then tahadevstorm:setex("rules" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) storm_sendMsg(msg.chat_id_, msg.id_, 1, "📪┊حسناا ارسل النص", 1, "html")  end
if text and text:match("^مسح القوانين$")  and is_mod(msg) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "📬┊تم مسح القوانين ✔", 1 , "html")  tahadevstorm:del("rules:group" .. msg.chat_id_) end
if text and text:match("^القوانين$") then local rules = tahadevstorm:get("rules:group" .. msg.chat_id_)   if rules then     storm_sendMsg(msg.chat_id_, msg.id_, 1, rules, 1, nil)   else      storm_sendMsg(msg.chat_id_, msg.id_, 1, "❌┊لا توجد قوانين في المجموعه",  1, "html")   end    end
if text == 'بنت' or text == 'اي بنت' or text == 'ي بنت' or text == 'يي بنت'  or text == 'بنيه'  or text == 'بنية'  or text == 'ي ابنيه'  or text == 'اي ابنية' or text == 'اي ابنيه'  or text == 'مو ولد'  or text == 'مو صبي'  or text == 'مش ولد'  or text == 'مش صبي' and not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then local taha = {'ئوف فديتج مح ئم خدود 🙈💋','همزين مو ولد كتلوني الزواحف والله ☹️','شلونج ياروحي 🐣💋','هلا بيج ياروحي انتي ☺️','ضيفيني كروبات ❤️','ئوف نطيني بوسه ياروحي ❤️💋','مح بنوتات ولا الولد كتلوني بس يزحفون ','هلا بالبنوتات ','شلونج اخبارج ','هم يزحفولج ' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end
if text == 'ولد' or text == 'اي ولد' or text == 'ي ولد' or text == 'يي ولد'  or text == 'رجال'  or text == 'لج اني ولد'  or text == 'مو بنيه'  or text == 'مو بنية'  or text == 'مو بنت' and not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then local taha = {'مشيطلعبرا 😌','شعندك داخل خاص 😒','ثكيله وماحجي ويه ولد ','عوع ولد مشطلعبرا بلوك 🙃','برا متستحي داخل خاص 😒','هلا بيك تشرفت بيك ونته اخويه ','شلونك ','ئشعدك داخل خاص ؟ 😒' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end
if text == 'دوم' or text == 'دومج' or text == 'ادومين' or text == 'ادوم'  or text == 'دومج❤️'   or text == 'دوم❤️'  or text == 'دومج ❤️'  or text == 'دوم ❤️' or text == 'دايمه'  or text == 'دايمة' and not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then local taha = {'ادوم ايامك يالغالي  ❤️','تسلم دوم الحبيبك 😌','دوم وكعد ع عناد الواكفين 🤷🏼‍♀️','دوم وجيري 🌝🏼‍♀️','يدومك الناسك ❤️😌' }  storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end
if text == 'اي وينهة' or text == 'اي وينه' or text == 'وينة' or text == 'وينهة'  or text == 'وينها'  or text == 'وينه' or text == 'اي وينهة' or text == 'اي وينها' and not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then local taha = {'شمدريني تعال دوره يمكن تلكاه بجيبي 😂🙈','ليش ادور عليه ','يمي تعال هسه اكلك وينه 🙃','مادري والله هستوه جان هنا 😌','ميخصك 🤤','يمي بالخاص سد اخر ضهور اني كلت اله 😏','ميخصك حبيبي ويمي ئنته شنو 😋','بالمطبخ ديحضرلي لفه 😂🌝','هسه طلع من البيت راح يجيب عسل 😌','مالك دخل بي ','روح دور عليه 🙂','هستوه جان يحجي هنا 👨🏼‍🎤','شمدريني روح اسئل غيري 🏼‍💻','عندك رقمه ؟ 🤷🏼‍♀️','اتصل عليه وذا ماعندك رصيد هذا كارت اشخط الشاشه وحطه ▓▓▓▓▓▓▓▓▓▓▓ <<اشخط هنا 🤷‍♀️','يابة روح لو اخلي الاعضاء يتفلون بوجهك 😪😂' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end
if text == 'شبي' or text == 'شبيه' or text == 'شبيها' or text == 'شبيهة'  or text == 'كلي شبي'  or text == 'كلي شبيه' and not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then local taha = {'شبت بيك 😒','يعني شبي ئنته كلي شبي 😐💔','خطيه ندعم و ودو للمستشفى وهسه بالعنايه العمه 😭','ئنته تعرف شبي 🙃','بي دم ولحم وزيدك من الشعر بيت يمشي ويحجي 🙊','الدنيه دارت عليه خطيه ','يسلم عليك 😕','يريدك بشغله 🌝','روحله بساع يردك بشغله😐','غير تعارك ويايه وصيح عليه تراضها 😭','احجي شبي 🌝','يابة روح لو اخلي الاعضاء يتفلون بوجهك 😪😂' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end
if text == 'اكلج' or text == 'اكلك' or text == 'كلك' or text == 'كلج'  or text == 'ممكن طلب'  or text == 'ببكن طلب'  or text == 'اكول' and not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then local taha = {'كول بعد روحي 😐❤️', 'شتريد تفضل 😌', 'اطلب طلب بي حض 😐', 'احجي ماعندي وقت اريد اطلع 🌝', 'تفضل كول 🌝💋', 'لخويا اختي لصغير الجبيره دلليدلل كول كولي مايردك ماردج اله لسانج لسانك 😂😂🤗',  'كول نعسانه من البارحه منايمه 🤤', 'كول ', 'اذا عترفت بشي ومابي حض اكلب التلي عليك 😌', 'احجي ', 'صاير شي لا تجلطني 😳', 'ها 😒', 'لتشلع كلبي 😌', 'ها حبيبي كول ماكول لاحد ', 'ها عيني 😉💋', 'شكو شرايد 😒','كولي بنتي ☺️🍼','كول ابني ☺️🍼 ','كول وماكول الخالتك🙊😹' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end
if text == 'هيج' or text == 'هيجي' or text == 'مو هيج' or text == 'زين هيج' or text == 'ليش هيج' and not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then local taha = {'هيج لو دجاجه 🤣😌', 'لا يابه مو هيج منو كلك اني اعرف ', 'لا مو هيج 🤓', 'اني جنت موجوده مصار هيج ', 'اني فراعت خضره دكلي هيج متستحي 😔', 'لدكول هيج اضوج من هاي الكلمه ', 'روح كول الغيري هيج مو الي 😒', 'يله نركص الهجع يلهجع 😌😂','براحتي اني مو بمزاجك دكلي هيج 😌', 'بابا رو ح خالو روح شسوي انته كلتلي هيج ','وشلون تركص احلام ؟... جذي 💃🏼 جذي 💃🏼', 'منو كلك هيج اصلا 😂', 'اعرف طوختها راح اسكت 🤷🏼‍♂️', 'يله نغني هنــ🇭🇺ــدي هيجي كيجي ميجي ليجي 🤷🏼‍♂️' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end
if text == ""..botname..' شنو رئيك بهاذا' or text == 'شنو رئيك بهذا' or text == 'شنو رئيك بهاذا' or text == 'شنو رئيك بيه' then function necha(extra, result, success) local taha = {'لوكي وزاحف من ساع زحفلي وحضرته 😒','خوش ولد و ورده مال الله 💋🙄','يلعب ع البنات 🙄', 'ولد زايعته الكاع 😶🙊','صاك يخبل ومعضل ','محلو وشواربه جنها مكناسه 😂🤷🏼‍♀️','اموت عليه 🌝','هوه غير الحب مال اني 🤓❤️','مو خوش ولد صراحه ☹️','ادبسز وميحترم البنات 🐣 ', 'فد واحد قذر 🙄😒','ماطيقه كل ما اكمشه ريحته جنها بخاخ بف باف مال حشرات 😂🤷‍♀️','مو خوش ولد 🤓' } storm_sendMsg(msg.chat_id_, result.id_, 1,''..taha[math.random(#taha)]..'', 1, 'md')   end   if tonumber(msg.reply_to_message_id_) == 0 then   else   getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),necha)     end end
if text == ""..botname..' شنو رئيك بهاي' or text == 'شنو رئيج بهاي' or text == 'شنو رئيج بهايه' or text == 'شنو رئيج بهاية' or text == 'شو رئيك بهي' then function necha(extra, result, success) local taha = {'الكبد مال اني هيه 🙊🙄','ختولي ماحبها ','خانتني ويه صديقي 😔','بس لو الكفها اله اعضها 😐💔','خوش بنيه بس عده مكسرات زايده وناقصه منا ومنا وهيه تدري بنفسها 😒','جذابه ومنافقه سوتلي مشكله ويه الحب مالتي ','ئووووووووف اموت ع ربها ','ديرو بالكم منها تلعب ع الولد 😶 ضحكت ع واحد قطته ايفون 7 ','صديقتي وختي وروحي وحياتي 😍','فد وحده منحرفه 😥','ساكنه بالعلاوي ونته حدد بعد لسانها لسان دلاله 🙄🤐','ام سحوره سحرت اخويا وعلكته 6 سنوات 🤕','ماحبها 🙁','بله هاي جهره تسئل عليها ؟ ','بربك ئنته والله فارغ وبطران وماعدك شي تسوي جاي تسئل ع بنات العالم ولي يله 🏼','ياخي بنيه حبوبه بس لبعرك معمي عليها تشرب هواي 😹' } storm_sendMsg(msg.chat_id_, result.id_, 1,''..taha[math.random(#taha)]..'', 1, 'md') end  if tonumber(msg.reply_to_message_id_) == 0 then   else  getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),necha)   end  end
if text == 'توجيه' and tonumber(msg.reply_to_message_id_) > 0 and is_devtaha(msg) then  function fwwdmsg(taha,storm,sorc)  local list = tahadevstorm:smembers('botgps')  if tahadevstorm:scard("botgps") == 0 then  storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ عذرا لا يوجد مجموعات في البوت 🍃\n", 1, "md")   else   for k,v in pairs(list) do  forwardMessages(v, msg.chat_id_, {[0] = storm.id_}, 1)  end end  local gps = tahadevstorm:scard("botgps")       local text = '🚸 ❯❯ تم ارسال توجيه الى *{ '..gps..' }* مجموعات'  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end  getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),fwwdmsg)  end
if text == 'توجيه خاص' and tonumber(msg.reply_to_message_id_) > 0 and is_devtaha(msg) then  function fwwdmsg(taha,storm,sorc)  local list = tahadevstorm:smembers('usersbot')  if tahadevstorm:scard("usersbot") == 0 then  storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ عذرا لا يوجد مشتركين في البوت 🍃\n", 1, "md")   else   for k,v in pairs(list) do  forwardMessages(v, msg.chat_id_, {[0] = storm.id_}, 1)  end    local pv = tahadevstorm:scard("usersbot")       local text = '🚸 ❯❯ تم ارسال توجيه الى *{ '..pv..' }* مشتركين'  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end end  getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),fwwdmsg)  end
if text == 'توجيه للكل' and tonumber(msg.reply_to_message_id_) > 0 and is_devtaha(msg) then   function fwwdmsg(taha,storm,sorc)  local list = tahadevstorm:smembers('usersbot')   for k,v in pairs(list) do   forwardMessages(v, msg.chat_id_, {[0] = storm.id_}, 0)   end  local list = tahadevstorm:smembers('botgps')   for k,v in pairs(list) do   forwardMessages(v, msg.chat_id_, {[0] = storm.id_}, 0)   end   local grp = tahadevstorm:scard("botgps")    local pv = tahadevstorm:scard("usersbot")            local text = '🚸 ❯❯ تم ارسال توجيه الى ❮❮ 🚸\n📬 ❯❯ *{'..pv..'}* مشتركين 🍂 \n📮 ❯❯  *{ '..grp..' }* مجموعات 🍃'   storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')   end   getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),fwwdmsg)   end
if text =='الاوامر' then if not is_mod(msg) then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للادمنيه فقط\n📮❯❯ ارسل *{م6}* لرئية الاوامر\n", 1, "md")  else
local text = [[ 
💥 • اهلا بك عزيزي ]]..get_rtba(msg)..[[ • 💥
📫❯❯ في اوامر السورس ❮❮📫
ٴ—💠——༺❯🚸❮༻——💠—
🚀❯ م1« لعـرض قائمــه الـحمـايـه
🚷❯ م2« لعرض قائمه الحظر وال..
🚸❯ م3« لعرض قائمه الادمنيه
🎮❯ م4« لعــرض اوامـر المدراء
📮❯ م5« لعرض اوامـر المنشئين
📯❯ م6« لعرض اوامـر الاعضاء
💠❯ م7« لعــرض اوامـر المطور
💥❯ م8« لعــرض اوامـر المطور الاساسي
ٴ—💠——༺❯🚸❮༻——💠—
📮❯ للمزيد من المعلومات راسلنا ❮📮
💠❯❯ مطور البوت {@]]..sudouser..[[}
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'html')  end end 
if text =='م1' then if not is_mod(msg) then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للادمنيه فقط\n", 1, "md")  else
local text = [[ 
💥 • اهلا بك عزيزي ]]..get_rtba(msg)..[[ • 💥
📮┇ في اوامر الحمايه ┇📮

ٴٴ—⚜——┈┉━📡━┉┄——⚜ 
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🚀❯❯  قفل / فتح  الروابط
🚀❯❯  قفل / فتح   التوجيه
🚀❯❯  قفل / فتح  المعرفات
🚀❯❯  قفل / فتح  الكلايش
🚀❯❯  قفل / فتح  الماركداون
🚀❯❯  قفل / فتح  التعديل
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🗽❯❯  قفل / فتح  المتحركه
🗽❯❯  قفل / فتح  الصور 
🗽❯❯  قفل / فتح  الملفات 
🗽❯❯  قفل / فتح  الملصقات 
🗽❯❯  قفل / فتح  الفيديو
🗽❯❯  قفل / فتح  الدردشه
🗽❯❯  قفل / فتح  التثبيت
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🏅❯❯  قفل / فتح  الالعاب
🏅❯❯  قفل / فتح  الصوت
🏅❯❯  قفل / فتح  الشارحه
🏅❯❯  قفل / فتح  الهاشتاك
🏅❯❯  قفل / فتح  الدردشه
🏅❯❯  قفل / فتح  الاغاني
🏅❯❯  قفل / فتح  الاونلاين
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🎖❯❯  قفل / فتح  الدخول
🎖❯❯  قفل / فتح  السيلفي
🎖❯❯  قفل / فتح  الجهات
🎖❯❯  قفل / فتح  الكل
🎖❯❯  قفل / فتح  البوتات
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
ٴ—💠——༺❯🚸❮༻——💠—
📮❯ للمزيد من المعلومات راسلنا ❮📮
💠❯❯ مطور البوت {@]]..sudouser..[[}
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'html')  end end 
if text =='م2' then if not is_mod(msg)  then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للادمنيه فقط\n", 1, "md")  else
local text = [[ 
💥 • اهلا بك عزيزي ]]..get_rtba(msg)..[[ • 💥
📮❯ في اوامر الكتم والحظر و.. ❮📮
 ٴ—💠——༺❯🚸❮༻——💠—
🚸❯❯ كتم { ايدي/معرف/رد }
🚸❯❯ الغاء الكتم { ايدي/معرف/رد }
🚸❯❯ تقيد { ايدي/معرف/رد }
🚸❯❯ الغاء تقيد { ايدي/معرف/رد }
🚸❯❯ حظر { ايدي/معرف/رد }
🚸❯❯ الغاء الحظر { ايدي/معرف/رد }
🚸❯❯ طرد { ايدي/معرف/رد }
ٴ—💠——༺❯🚸❮༻——💠—
📮❯ للمزيد من المعلومات راسلنا ❮📮
💠❯❯ مطور البوت {@]]..sudouser..[[}
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'html')  end end 
if text =='م3' then if not is_mod(msg)  then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للادمنيه فقط\n", 1, "md")  else
local text = [[ 
💥 • اهلا بك عزيزي ]]..get_rtba(msg)..[[ • 💥
💠❯❯ في اوامر  الادمنيه ❮❮💠
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
👮❯ رفع مميز » لرفع مميز 
👮❯ تنزيل مميز » لتنزيل مميز 
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🗞❯ تثبيت » بالرد على الرساله
🗞❯ تفعيل الترحيب» لتفعيل الترحيب
🗞❯ تعطيل الترحيب» لتعطيل الترحيب
🗞❯ ضع رابط  » ثم ارسل الرابط  📑
🗞❯ ضع قوانين » ثم ارسل الرابط  📆
🗞❯ ضع صوره » ثم ارسل الصوره 📷
🗞❯ ضع ترحيب +  النص 📇
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📯❯ مسح + الاوامر ادناه ↓❮📯

📮❯ المحظورين :- لمسح محظورين 
📮❯ المكتومين :- لمسح مكتومين  
📮❯ المميزين :- لمسح المميزين 
📮❯ المقيدين :- لمسح المقيدين الكروب
📮❯ قائمه المنع :- لمسح الكلمات المنع
📮❯ القوانين :- لمسح قواني المجموعه
📮❯ الترحيب :- لمسح ترحيب الاعضاء
📮❯ الرابط :- لمسح رابط المجموعه 
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
⚔❯ لعرض القوائم ❮⚔

🎙❯ قائمه المنع :- لعرض كلمه الممنوعه
🎙❯ الادمنيه :- لـعرض ادمنيه البوت 
🎙❯ المدراء :- لـعرض مدراء المجموعه 
🎙❯ القوانين :- لـعرض قوانين الكروب 
🎙❯ الرابط  :- لـعرض رابط المجموعه
🎙❯ المميزين :- لـعرض المميزين 
🎙❯ المقيدين :- لـعرض المقيدين 
🎙❯ المحظورين :- لـعرض المحظورين 
🎙❯ المكتومين :- لـعرض المكتومين
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📮┇ للمزيد من المعلومات راسلنا ┇📮
💠┇ مطور البوت {@]]..sudouser..[[}
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'html')  end end 
if text =='م4' then if not is_mod(msg)  then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للادمنيه فقط\n", 1, "md")  else
local text = [[ 
💥 • اهلا بك عزيزي ]]..get_rtba(msg)..[[ • 💥
💠┇ في اوامــر المدراء  ┇💠
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🎮❯ رفع ادمن » لرفع ادمن 
🎮❯ تنزيل ادمن » لتنزيل ادمن 
🎮❯ مسح الادمنيه لمسح الادمنيه 
🎮❯ الادمنيه لعرض الادمنيه 
🎮❯ رفع الادمنيه لرفع الادمنيه 
🎮❯ الاعدادات لعرض الاعدادات  
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📫❯ مسح + العدد » لمسح رسائل
📫❯ رفع القيود»لمسح الكتم والحظر و...
📫❯ طرد البوتات لطرد البوتات المزعجه
📫❯ مسح المحذوف لطرد المحذوفين 
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📮❯ اضف رد لاضافه رد في الكروب
📮❯ حذف رد لحذف رد في الكروب
📮❯ ردود المجموعه لعرض الردود
📮❯ مسح ردود المجموعه لمسح الردود
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
☑❯ تفعيل امر اطردني لتفعيل الامر 
❌❯ تعطيل امر اطردني لتعطيل الامر
☑❯ تفعيل امر نزلني لتفعيل الامر
❌❯ تعطيل امر نزلني لتعطيل الامر
☑❯ تفعيل الايدي لتفعيل الايدي 
❌❯ تعطيل الايدي لتعطيل الايدي 
☑❯ تفعيل جلب الصوره لتفعيل الامر
❌❯ تعطيل جلب الصوره لتعطيل الامر
☑❯ تفعيل ردود البوت لتفعيل الردود  
❌❯ تعطيل ردود البوت لتعطيل الردود 
☑❯ تفعيل ردود الكروب لتفعيل ردود 
❌❯ تعطيل ردود الكروب لتعطيل الردود
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📮┇ للمزيد من المعلومات راسلنا ┇📮
💠┇ مطور البوت {@]]..sudouser..[[}
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'html')  end end 
if text =='م5' then if not is_mod(msg)  then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للادمنيه فقط\n", 1, "md")  else
local text = [[ 
💥 • اهلا بك عزيزي ]]..get_rtba(msg)..[[ • 💥
🚸❯❯ في اوامــر المنشئين ❮❮🚸
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
💠❯ تعطيل البوت » لتعطيل البوت
💠❯ رفع مدير » لرفع مدير 
💠❯ تنزيل مدير » لتنزيل مدير 
💠❯ المدراء » لعرض مدراء المجموعه
💠❯ مسح المدراء » لمسح المدراء 
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
💭❯تفعيل الاضافه لفعيل الاضافه
💭❯تعطيل الاضافه » لتعطيل الاضافه 
💭❯ ضع عدد الاضافه + لتعين العدد
💭❯ ضع اسم + الاسم التريده
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'html')  end end 
if text =='م6' then
local text = [[ 
💥• اهلا بك في اوامر الاعضاء • 💥
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📯❯ معرفي » لعرض معرفك 
📯❯ اسمي » لعرض اسمك 
📯❯ رسايلي » لعرض عدد الرسائل
📯❯ معلوماتي » لعرض معلوماتك
📯❯ صورتي » لئرسال صورتك
📯❯ رتبتي » لعرض رتبتك في الكروب
📯❯ صورتي + رقم الصوره 
📯❯ جلب صوره + رقم الصوره
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🚸❯ ايدي بالرد » لعرض الايدي
🚸❯ ايدي + المعرف لعرض المعلومات 
(فقط الذي داخل المجموعه )
🚸❯ الرابط » لعرض رابط المجموعه
🚸❯ القرانين » لعرض القوانين
🚸❯ عدد الاضافه»لعرض العدد المطلوب
🚸❯ المطور » لعرض معلومات المطور 
🚸❯ مسح رسايلي » لمسح رسائلك كلها
🚸❯ الرتبه» بالرد لعرض رتبته+معلوماته
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🍃❯ زخرفه + الاسم ( عربي / انكلش )
🍃❯ تفعيل البوت(للتفعيل بدون مطور)
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
♨❯ اسم البوت + بوسه ( بالرد)
♨❯ اسم البوت+شنو رئيك بهاذا( بالرد )
♨❯ اسم البوتك+شنو رئيك بهاي (بالرد )
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📮❯ للمزيد من المعلومات راسلنا ❮??
💠❯❯ مطور البوت {@]]..sudouser..[[}
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end 
if text =='م7' then if not is_sudo(msg)  then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للمطور فقط\n", 1, "md")  else
local text = [[ 
💢❯❯ اهلا بك عزيزي المطور في 
💠❯❯ اۅٲﻣڔ ٲڶمطۄريڼ✓
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🎮 ❯  تفعيل ـ لـتفعيل البوت✓
🎮 ❯  تعطيل ـ لـتعطيل البوت✓
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🚸 ❯ رفع منشئ ـ لـرفع المنشئ
🚸 ❯ تنزيل منشئ ـ لـتنزيل المنشئ
🚸 ❯ مسح المنشئين ـ لـمسح المنشئين
🚸 ❯ المنشئين ـ لـعرض المنشئين
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📮 ❯ رفع المدير ـ لـرفع مدير
📮 ❯ المجموعات ـ لـعرض المجموعات
📮 ❯ الكروبات ـ لـعرض عدد الكروبات
📮 ❯  غادر ـ لـمغادرة البوت 
📮 ❯  غادر+ ايدي الكروب للمغادرة
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📬 ❯ قائمه العام ـ لعرض محظورين عام
📬 ❯ المشتركين - لعرض عدد المشتركين
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📮❯ للمزيد من المعلومات راسلنا ❮📮
💠❯❯ مطور البوت {@]]..sudouser..[[}
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'html')  end end 
if text =='م8' then if not is_devtaha(msg) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للمطور الاساسي فقط\n", 1, "md")  else
local text = [[ 
💥 • اهلا بك عزيزي المطور • 💥
💠❯❯ في اوامر المطور الاساسي ❮❮💠
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
⚜❯ تفعيل التواصل » للدردشه خاص
⚜❯ تعطيل التواصل » لتعطيل الدردشه 
⚜❯ تفعيل ردود المطور » لتفعيلها 
⚜❯ تعطيل ردود المطور » لتعطيلها  
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
♦️❯ رفع مطور » لرفعه مطور 
♦️❯ تنزيل مطور » لتنزيله مطور 
♦️❯ المطورين لعرض » المطورين 
♦️❯ رفع مميز عام » لرفعه في الكل 
♦️❯ تنزيل مميز عام »لتنزيله في الكل
♦️❯ المميزين عام»لعرض المميزين عام 
♦️❯ حظر عام » لحضره في الكل
♦️❯ الغاء العام » لالغاء حظره في الكل 
♦️❯ قائمه العام » لعرض محظورين عام
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🎙❯ اضف رد للكل » لاضافه رد للكل
🎙❯ حذف رد للكل » لحذف رد للكل
🎙❯ ردود المطور » لعرض الردود 
🎙❯ مسح ردود » المطور لمسح الردود 
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
♻️❯ اذاعه » ثم ارسل النص 
♻️❯ اذاعه » خاص ثم ارسل النص 
♻️❯ اذاعه » للكل ثم ارسل النص 
♻️❯ اذاعه » بالرد للارسال لئرسال النص 
♻️❯ اذاعه » خاص بالرد لئرسال النص 
♻️❯ اذاعه » للكل بالرد لئرسال النص
♻️❯ توجيه » لارسال التوجيه 
♻️❯ توجيه خاص » لارسال التوجيه  
♻️❯ توجيه » للكل لارسال توجيه للكل
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🚸❯ ارسال نسخه » لارسال ملف البوت 
🚸❯ الكروبات »لعرض عدد المجموعات
🚸❯ المجموعات » لعرض الايديات 
 ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📇❯ ضع كليشه المطور »ثم ارسل النص 
📇❯ حذف كليشه المطور » لحذف الرد
📇❯ ضع كليشه ستارت»ثم ارسل النص 
📇❯ حذف كليشه ستارت » لحذف الرد
📇❯ جلب كليشه ستارت »لئرسال النص 
📇❯ ضع رد للتواصل »ثم ارسل النص 
📇❯ حذف رد التواصل » لحذف الرد
📇❯ جلب رد التواصل »  لئرسال النص 
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📬❯ تحديث السورس » لتحديث البوت
📬❯ مسح المجموعات» لمغادره الكل 
📬❯ مسح قائمه العام»لمسح القائمه 
📬❯ مسح المميزين عام »لمسح القائمه
📬❯ مسح المطورين » لمسح المطورين 
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📮❯ تفعيل الكتابه » لتفعيل الكتابته
📮❯ تعطيل الكتابه » لتعطيل الكتابه
📮❯ تفعيل البوت الخدمي»لتفعيل الامر
📮❯ تعطيل البوت الخدمي»لتعطيل الامر 
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📮❯ للمزيد من المعلومات راسلنا ❮📮
💠❯❯ مطور البوت {@]]..sudouser..[[}
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'html')  end end 
if text == 'السورس' then
local text = [[
📮┇ اهلا بك في السورس ┇📮
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🗯 ┇ انسخ الكود 👇 ثم افتح ترمنال وخلي الكود ثم انتر
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🔽 ┇ `git clone https://github.com/MEXECOTEAM/MEXICO.git && cd MEXICO && chmod +x tg && chmod +x MEXICO.sh && ./MEXICO.sh`
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📬┇ لتشغيل البوت الصق الكود 👇 وخلي بالترمنال ثم انتر 
`cd MEXICO && screen -S -X ./MEXICO.sh`
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
☼┇ للاستفسارت والاراء ┇☼
📡┇المطور @VI_P2
🌐┊MEXECOTEAM┇@MEXIC_TV
]] storm_sendMsg(msg.chat_id_, msg.id_, 1,text, 1, 'md')   end
if text == 'تعطيل' and is_sudo(msg) and add_in_ch(msg) then tahadevstorm:srem("addgrop", msg.chat_id_) tahadevstorm:del("addfrebot:"..msg.chat_id_, true) tahadevstorm:srem('bot:gpsby:id', msg.chat_id_)  tahadevstorm:srem("botgps", msg.chat_id_) function check_can_send(extra,result,success)  username = '@'..(result.username_ or 'ماكو معرف ❌')..''  local zo = '\n`┄•🚸•┄༻⚜༺┄•🚸•┄ `\n📬┊المجموعه *{ '..title_name(msg.chat_id_)..' }*\n📮 ❯❯ تم تعطيلها بنجاح ❮❮ 📮\n`┄┄┄┄┄┄┄┄┄┄┄┄┄┄`\n🚸┊بواسطه *{* ['..username..'] *}*\n`┄•🚸•┄༻⚜༺┄•🚸•┄ `'   storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')   if not is_devtaha(msg) then  if not tahadevstorm:get("data:bot:"..msg.chat_id_) then 
local text = [[
💥 اهلا عزيزي المطور 💥
📪| لقد تم تعطيل مجموعه جديده
<b>=•=•=•=•=•=•=•=•=•=•=•=</b>
📯┊معلومات المجموعه •
♨┊ايدي المجموعه <b>{ ]]..msg.chat_id_..[[ }</b>
💠┊اسم المجموعه <b>{</b><code>]]..title_name(msg.chat_id_)..[[</code><b>}</b>
<b>=•=•=•=•=•=•=•=•=•=•=•=</b>
📑┊معلومات المطور
📬┊اسم المطور <b>{</b> <code>]]..result.first_name_..[[</code> <b>}</b>
💢┊ايدي المطور <b>{ ]]..msg.sender_user_id_..[[ }</b>
✨┊معرف المطور <b>{</b> ]]..username..[[ <b>}</b>
]] storm_sendMsg(SUDO, 0, 1,text, 1, 'html')  tahadevstorm:setex("data:bot:"..msg.chat_id_, 100, true) end end  end getUser(msg.sender_user_id_,check_can_send) return rem_lockal(msg.chat_id_) end    
if text == 'تفعيل' and is_sudo(msg) and add_in_ch(msg) then  function check_can_send(extra,result,success)  username = '@'..(result.username_ or 'لايوجد معرف ❌')..''  if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else tahadevstorm:set("addfrebot:"..msg.chat_id_, true) tahadevstorm:sadd('bot:gpsby:id', msg.chat_id_)  tahadevstorm:sadd("botgps", msg.chat_id_) local function cb(extra,result,success) local moder = result.members_   for i = 0 , #moder do   if tahadevstorm:sismember('mods:'..msg.chat_id_,moder[i].user_id_) then   else tahadevstorm:sadd('mods:'..msg.chat_id_,moder[i].user_id_) end  end end    chek_moder(msg.chat_id_,cb)   function gpinfo(arg,data)   local function cb(extra,result,success)  local moder = result.members_    for i = data.administrator_count_ - 1 , #moder do   if tahadevstorm:sismember('moder'..msg.chat_id_,moder[i].user_id_) then  else tahadevstorm:sadd('moder'..msg.chat_id_,moder[i].user_id_) end   end end  chek_moder(msg.chat_id_,cb) end getChannelFull(msg.chat_id_, gpinfo, nil)  tahadevstorm:sadd("addgrop", msg.chat_id_) 
local zo = '\n`┄•ٴ—☸——┈┉━☼━┉┄——☸•┄ `\n📬┊المجموعه *{ '..title_name(msg.chat_id_)..' }*\n📬 ❯❯ 🇮⁽🇮🇶تم تفعيل المجموعه بنجاح 

 بنجاح ❮❮ 📬\n`┄┄┄┄┄┄┄┄┄┄┄┄┄┄`\n☤┊بواسطه *{* ['..username..'] *}*\n`┄•ٴ—⚜——┈┉━☸━┉┄——⚜•┄ `'  storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')    end if not is_devtaha(msg) then    if not tahadevstorm:get("data:bot:"..msg.chat_id_) then function gpinfo(arg,data) 
local text = [[
💥 اهلا عزيزي المطور 💥
📪| لقد تم تفعيل مجموعه جديده
<b>=•=•=•=•=•=•=•=•=•=•=•=</b>
📯┊معلومات المجموعه •
♨┊ايدي المجموعه <b>{ ]]..msg.chat_id_..[[ }</b>
💠┊اسم المجموعه <b>{</b><code>]]..title_name(msg.chat_id_)..[[</code><b>}</b>
🏂┊ عدد الادمنيه <b>{ ]]..data.administrator_count_..[[ }</b>
⛹┊ عدد المطرودين <b>{ ]]..data.kicked_count_..[[ }</b>
🎫┊ عدد الاعضاء <b>{ ]]..data.member_count_..[[ }</b>
<b>=•=•=•=•=•=•=•=•=•=•=•=</b>
📑┊معلومات المطور
🎳┊اسم المطور <b>{</b> <code>]]..result.first_name_..[[</code> <b>}</b>
💢┊ايدي المطور <b>{ ]]..msg.sender_user_id_..[[ }</b>
✨┊معرف المطور <b>{</b> ]]..username..[[ <b>}</b>
]] storm_sendMsg(SUDO, 0, 1,text, 1, 'html')  tahadevstorm:setex("data:bot:"..msg.chat_id_, 100, true) end end end  getChannelFull(msg.chat_id_, gpinfo, nil) end getUser(msg.sender_user_id_,check_can_send) return add_lockal(msg.chat_id_) end    
if text and text:match('^هينه @(.*)') and is_sudo(msg) then local username = text:match('^هينه @(.*)') function hena(extra,result,success) if result.id_ then  if tonumber(result.id_) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, 'يول شو تمسلت اكو واحد يهين نفسه ??', 1, 'md')  return false  end  if tonumber(result.id_) == tonumber(SUDO) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, 'شو انت تمضرط تريد اهين تاج راسي مثلا ?', 1, 'md')  return false  end  local taha = { "تعال لك @"..username.." كواد فرخ دودكي مستنقع 😹👻 ","لك @"..username.." حيوان اهينك بل بسطال ","لك  @"..username.." حبي اكعد راحه ولتندك باسيادك","خاب انجب @"..username.." لا اهينك هسه ",} storm_sendMsg(msg.chat_id_, result.id_, 1,''..taha[math.random(#taha)]..'', 1, 'html') else  storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ العضو لا يوجد في المجموعه ', 1, 'md') end end saddbyusername(username,hena) end
if text == 'تقيد' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg)  then  function kedrep(extra, result, success) if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else  ked(msg,msg.chat_id_,result.sender_user_id_) end end  getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kedrep) end
if text and text:match('^تقيد @(.*)') and is_mod(msg)    then  local username = text:match('تقيد @(.*)') function keduser(extra,result,success)  if result.id_ then if tonumber(result.id_) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌┊لا تستطيع تقيد البوت', 1, 'md')  return false  end if storm1(msg.chat_id_,result.id_) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ لا تسطيع حضر او كتم او طرد ( الادمنيه و المدراء )', 1, 'md') else if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم تقيده بنجاح\n'   HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.id_.."") tahadevstorm:sadd('tedmembars'..msg.chat_id_,result.id_) tahadevstorm:sadd("keed", msg.chat_id_)  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'html') end end end end  saddbyusername(username,keduser) end
if text and text:match('^تقيد (%d+)') and is_mod(msg)   then local user = text:match('تقيد (%d+)') if tonumber(user) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌┊لا تستطيع تقيد البوت', 1, 'md')  return false  end  if storm1(msg.chat_id_,user) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ لا تسطيع حضر او تقييد او كتم او طرد ( الادمنيه و المدراء )', 1, 'md') else if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else  tahadevstorm:sadd('tedmembars'..msg.chat_id_,user) tahadevstorm:sadd("keed", msg.chat_id_)  HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..user.."") zo = '📮 ❯ العضو <b>{ '..user..' }</b>\n🚀 ❯ تم تقيده في المجموعه\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html') tahadevstorm:sadd("keed", msg.chat_id_)  end end end
if text == 'الغاء تقيد' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then  function kedrep(extra, result, success) if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else unked(msg,msg.chat_id_,result.sender_user_id_) end end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kedrep)  end
if text and text:match('^الغاء تقيد @(.*)') and is_mod(msg) then  local username = text:match('الغاء تقيد @(.*)') function keduser(extra,result,success)  if result.id_ then if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..chat.. "&user_id=" ..result.id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  tahadevstorm:srem('tedmembars'..msg.chat_id_,result.id_) tahadevstorm:srem("keed", msg.chat_id_)  zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم الغاء تقيده \n'     storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'html')  end end end  saddbyusername(username,keduser) end
if text and text:match('^الغاء تقيد (%d+)') and is_mod(msg) then local user = text:match('الغاء تقيد (%d+)') if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..chat.. "&user_id=" ..user.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  tahadevstorm:srem('tedmembars'..msg.chat_id_,user) tahadevstorm:srem("keed", msg.chat_id_)  zo = '📮 ❯ العضو <b>{ '..user..' }</b>\n🚀 ❯ تم الغاء تقيده\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' tahadevstorm:srem("keed", msg.chat_id_)  storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html') end  end 
if text ==('المقيدين') and is_mod(msg) then    local list = tahadevstorm:smembers('tedmembars'..msg.chat_id_) local t = '💥 • قائمه مقيدين الكروب • 💥\nٴ—⚜———༺🚸༻———⚜—  \n'  for k, v in pairs(list) do  if storm_get_user1 then t = t .. k .. "<b>~➣{</b> " ..storm_get_user1(v).."<b>}</b>\n"  else  t = t .. k .. " ~➣{" ..storm_get_user1(v).."<b>}</b>\n"  end  end if #list == 0 then t = '💥┊لا يوجد مقيدين في المجموعه' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'html') end
if text == ""..botname.." هينه" or text == 'هينه' then function necha(extra, result, success) if tonumber(result.sender_user_id_) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, 'يول شو تمسلت اكو واحد يهين نفسه 😒', 1, 'md')  return false  end  if tonumber(result.sender_user_id_) == tonumber(SUDO) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, 'شو انت تمضرط تريد اهين تاج راسي مثلا ?', 1, 'md')  return false  end local text = "تدلل حياتي" storm_sendMsg(msg.chat_id_, msg.id_, 1,text, 1, 'md') local taha = { "تعال لك كواد فرخ دودكي مستنقع 😹👻","لك حيوان اهينك بل بسطال ","لك حبي اكعد راحه ولتندك باسيادك","خاب انجب لا اهينك هسه "} storm_sendMsg(msg.chat_id_, result.id_, 1,''..taha[math.random(#taha)]..'', 1, 'md') end if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),necha)   end end
if text == ""..botname.." بوسه" or text == 'بوسه' then function necha(extra, result, success) local taha = {"خلي يزحفلي وابوسه 😻",'يعني كل شويه ابوسه كافي 😒','اخ ممممح من الحلكك ولك '..storm_get_name(msg.sender_user_id_)..'','ما ابوسه والله زاحف هاذا','اخ يفدوا مممح 💚' } storm_sendMsg(msg.chat_id_, result.id_, 1,''..taha[math.random(#taha)]..'', 1, 'md') end if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),necha)   end end
if text and text:match("^اضف رد$") and tonumber(msg.sender_user_id_) == tonumber(SUDO)  then local taha5 = '☇┊حسنآ قم بارسال الكلمه لتعيينها 📯' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha5, 1, 'md') tahadevstorm:set('reply_grup_by_sudo'..msg.sender_user_id_..''..msg.chat_id_, 'taha') return false  end if text and text:match("^(.*)$") then if not tahadevstorm:get('lock:reply'..msg.chat_id_) then local reply_in_grup = tahadevstorm:get('reply_in_grup'..text..''..msg.chat_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1, reply_in_grup, 1, 'md') end local reply_grup_by_sudo = tahadevstorm:get('reply_grup_by_sudo'..msg.sender_user_id_..''..msg.chat_id_) local taha6 = '☇┊حسنآ قم بارسال الرد ' if reply_grup_by_sudo == 'taha' then storm_sendMsg(msg.chat_id_, msg.id_, 1, taha6, 1, 'md')  tahadevstorm:set('reply_grup_by_sudo'..msg.sender_user_id_..''..msg.chat_id_, 'rd') tahadevstorm:set('taha'..msg.sender_user_id_..''..msg.chat_id_, text) return false  end if reply_grup_by_sudo == 'rd' then local reply_in_grup2 = tahadevstorm:get('taha'..msg.sender_user_id_..''..msg.chat_id_) local taha7 = '☇┊تم حفظ الرد في المجموعه 😀' tahadevstorm:set('reply_in_grup'..reply_in_grup2..''..msg.chat_id_, text) tahadevstorm:sadd('reply_in_gruprdsudo'..msg.chat_id_, reply_in_grup2) storm_sendMsg(msg.chat_id_, msg.id_, 1, taha7, 1, 'md')  tahadevstorm:set('reply_grup_by_sudo'..msg.sender_user_id_..''..msg.chat_id_, 'not') end end
if text and text:match("^حذف رد$") and tonumber(msg.sender_user_id_) == tonumber(SUDO)  then local taha8 = '☇┊حسنآ قم بارسال الكلمه لحذف الرد ✂' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha8, 1, 'md')  tahadevstorm:set('reply_grup_by_sudo'..msg.sender_user_id_..''..msg.chat_id_, 'nottaha') return false  end  if text and text:match("^(.*)$") then local reply_grup_by_sudo = tahadevstorm:get('reply_grup_by_sudo'..msg.sender_user_id_..''..msg.chat_id_) local taha9 = '☇┊تم حذف الرد في المجموعه 📪' if reply_grup_by_sudo == 'nottaha' then storm_sendMsg(msg.chat_id_, msg.id_, 1, taha9, 1, 'md')  tahadevstorm:set('reply_grup_by_sudo'..msg.sender_user_id_..''..msg.chat_id_, 'not')  tahadevstorm:set('reply_in_grup'..text..''..msg.chat_id_..'', " ")  end end
if text and text:match("^اضف رد للكل$") and tonumber(msg.sender_user_id_) == tonumber(SUDO)  then local taha5 = '☇┊حسنآ قم بارسال الكلمه لتعيينها 📯' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha5, 1, 'md') tahadevstorm:set('reply_grup_by_sudo'..msg.sender_user_id_..''..bot_id, 'taha') return false end
if text and text:match("^(.*)$") then if not tahadevstorm:get('lock:dev'..msg.chat_id_) then local reply_in_grup = tahadevstorm:get('reply_in_grup'..text..''..bot_id) storm_sendMsg(msg.chat_id_, msg.id_, 1, reply_in_grup, 1, 'md') end local reply_grup_by_sudo = tahadevstorm:get('reply_grup_by_sudo'..msg.sender_user_id_..''..bot_id) local taha6 = '☇┊حسنآ قم بارسال الرد ♨' if reply_grup_by_sudo == 'taha' then storm_sendMsg(msg.chat_id_, msg.id_, 1, taha6, 1, 'md')  tahadevstorm:set('reply_grup_by_sudo'..msg.sender_user_id_..''..bot_id, 'rd') tahadevstorm:set('taha'..msg.sender_user_id_..''..bot_id, text) return false  end if reply_grup_by_sudo == 'rd' then local reply_in_grup2 = tahadevstorm:get('taha'..msg.sender_user_id_..''..bot_id) local taha7 = '☇┊تم حفظ الرد في المجموعه 🎁' tahadevstorm:set('reply_in_grup'..reply_in_grup2..''..bot_id, text) tahadevstorm:sadd('reply_in_gruprdsudo'..bot_id, reply_in_grup2) storm_sendMsg(msg.chat_id_, msg.id_, 1, taha7, 1, 'md')  tahadevstorm:set('reply_grup_by_sudo'..msg.sender_user_id_..''..bot_id, 'not') end end
if text and text:match("^حذف رد للكل$") and tonumber(msg.sender_user_id_) == tonumber(SUDO)  then local taha8 = '☇┊حسنآ قم بارسال الكلمه لحذف الرد 🚷' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha8, 1, 'md')  tahadevstorm:set('reply_grup_by_sudo'..msg.sender_user_id_..''..bot_id, 'nottaha') return false  end if text and text:match("^(.*)$") then local reply_grup_by_sudo = tahadevstorm:get('reply_grup_by_sudo'..msg.sender_user_id_..''..bot_id) local taha9 = '☇┊تم حذف الرد في المجموعه 😃' if reply_grup_by_sudo == 'nottaha' then storm_sendMsg(msg.chat_id_, msg.id_, 1, taha9, 1, 'md')  tahadevstorm:set('reply_grup_by_sudo'..msg.sender_user_id_..''..bot_id, 'not')  tahadevstorm:set('reply_in_grup'..text..''..bot_id..'', " ")  end end
if text and text:match("^مسح ردود المجموعه$") and is_devtaha then local startreply = '☇┊تم مسح ردود المجموعه ' local list = tahadevstorm:smembers('reply_in_gruprdsudo'..bot_id) for k,v in pairs(list) do tahadevstorm:del('reply_in_gruprdsudo'..msg.chat_id_, text) tahadevstorm:set('reply_in_grup'..v..''..msg.chat_id_..'', " ") end storm_sendMsg(msg.chat_id_, msg.id_, 1, startreply, 1, 'md') end
if text and text:match("^ردود المجموعه$") and is_devtaha then local list = tahadevstorm:smembers('reply_in_gruprdsudo'..msg.chat_id_..'') text = "📑 | قائمه ردود في المجموعه 📬 \n\n" for k,v in pairs(list) do local reply_grup_by_sudo1 = tahadevstorm:get('reply_in_grup'..v..''..msg.chat_id_..'') if tahadevstorm:get('reply:group:'..msg.chat_id_) then text = text..""..k.." • | *【 "..v.." 】*\n`— — — — — — — — —`\n"  else text = text..""..k.."• | 【 "..v.." 】\n`— — — — — — — — —`\n" end end if #list == 0 then text = '☇┊المجموعه خاليه من الردود' end storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md') end
if text and text:match("^مسح ردود المطور$") and is_devtaha then local startreply = '☇┊تم مسح ردود المطور 🎑' local list = tahadevstorm:smembers('reply_in_gruprdsudo'..bot_id) for k,v in pairs(list) do tahadevstorm:del('reply_in_gruprdsudo'..bot_id, text) tahadevstorm:set('reply_in_grup'..v..''..bot_id..'', " ") end storm_sendMsg(msg.chat_id_, msg.id_, 1, startreply, 1, 'md') end
if text and text:match("^ردود المطور$") and is_devtaha then local list = tahadevstorm:smembers('reply_in_gruprdsudo'..bot_id..'') text = "☇┊قائمه ردود المطور \n\n" for k,v in pairs(list) do local reply_grup_by_sudo1 = tahadevstorm:get('reply_in_grup'..v..''..bot_id..'') if tahadevstorm:get('reply:group:'..msg.chat_id_) then text = text..""..k.."• | 【 "..v.." 】\n`— — — — — — — — —`\n"  else text = text..""..k.."• | 【 "..v.." 】\n`— — — — — — — — —`\n" end end if #list == 0 then text = "☇┊قائمه ردود المطور فارغه" end storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md') end
if text and text:match('^غادر (-%d+)')  and is_sudo(msg) then gp = text:match('غادر (-%d+)') tahadevstorm:srem('bot:gps', gp) tahadevstorm:srem('bot:gpsby:id', gp) tahadevstorm:del("botgps") tahadevstorm:del('mod:'..gp) tahadevstorm:del('moder'..gp) tahadevstorm:del('banned:'..gp) tahadevstorm:del("addfrebot:"..gp) tahadevstorm:del("setmoder:"..gp) tahadevstorm:del("gps:settings:"..gp) tahadevstorm:del("gps:settings:"..gp) storm_sendMsg(text:match('غادر (-%d+)'), 0, 1,'💢┊تم مغادره البوت من المجموعه \n♨┊الامر بواسطه مطور البوت \n 📪┊للاستفسار راسل مطور البوت ', 1, 'html') changeChatMemberStatus(text:match('غادر (-%d+)'), bot_id, "Left") storm_sendMsg(msg.chat_id_, msg.id_, 1,'📬┊تم ازاله المجموعه من مجموعات البوت بنجاح ✔ ', 1, 'html') end if tonumber(msg.reply_to_message_id_) > 0 then
if text ==("مسح") and is_mod(msg) then delete_msg(msg.chat_id_,{[0] = tonumber(msg.reply_to_message_id_),msg.id_})   end   end
if text ==('تفعيل الترحيب') and is_mod(msg) then tahadevstorm:set('add:welc:'..msg.chat_id_,'add') storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥┊ تم تفعيل الترحيب', 1, 'md') end
if text ==('تعطيل الترحيب') and is_mod(msg) then tahadevstorm:set('add:welc:'..msg.chat_id_,'rem') storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥┊ تم تعطيل الترحيب', 1, 'md') end
if text and text:match('^ضع ترحيب (.*)') and is_mod(msg) then local welcome = text:match('^ضع ترحيب (.*)') tahadevstorm:set('welcome:'..msg.chat_id_,welcome) local t = '💥┊ تم وضع الترحيب ( `'..welcome..'` )' storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end
if text ==('مسح الترحيب') and is_mod(msg) then tahadevstorm:del('welcome:'..msg.chat_id_,welcome) storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥┊ تم مسح ترحيب المجموعه', 1, 'md') end
if text and text:match("^ضع صوره") and is_mod(msg) then tahadevstorm:set('setphoto'..msg.chat_id_..':'..msg.sender_user_id_,true) storm_sendMsg(msg.chat_id_, msg.id_, 1, '♻┊ارسل لي الصوره الان ', 1, 'md') end          
if text ==('المطورين') and is_devtaha(msg) then  local list = tahadevstorm:smembers('sudo:bot')  local t = '💥 • قائمه المطورين • 💥 \nٴ—⚜———༺🚸༻———⚜—  \n'  for k, v in pairs(list) do if storm_get_user1 then  t = t .. k .. "<b>~➣{</b> " ..storm_get_user1(v).."<b>}</b>\n"   else   t = t .. k .. " ~➣{" ..storm_get_user1(v).."<b>}</b>\n"  end  end  if #list == 0 then  t = '📬┊لا يوجد مطورين في البوت' end  storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'html') end
if text ==('روابط الكروبات') and is_sudo(msg) then local list = tahadevstorm:smembers('bot:gps') local t = '💥┊ قائمه روابط المجموعات المفعله \n\n' for k,v in pairs(list) do  t = t..k.."<code>• [ </code>"..v.."]\n"  end t = t..'' if #list == 0 then t = '💥┊ لا توجد مجموعات مفعله' end  storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'html') end
if text ==('المجموعات') and is_sudo(msg) then local list = tahadevstorm:smembers('bot:gpsby:id') local t = '🚸┊ قائمه المجموعات المفعله \n\n' for k,v in pairs(list) do  t = t..k.." - `"..v.."`\n"  end t = t..'' if #list == 0 then t = '❌┊ لا توجد مجموعات مفعله' end  storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end
if text ==('رفع ادمن') and is_monsh(msg) then function prom_reply(extra, result, success) mods(msg,msg.chat_id_,result.sender_user_id_) end if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)   end end
if text and text:match('^رفع ادمن @(.*)') and is_monsh(msg) then local username = text:match('^رفع ادمن @(.*)') function promreply(extra,result,success) if result.id_ then  tahadevstorm:sadd('mods:'..msg.chat_id_,result.id_)  zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم ترقيته ادمن\n'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'html') end  end saddbyusername(username,promreply) end
if text and text:match('^رفع ادمن (%d+)') and is_monsh(msg) then local user = text:match('رفع ادمن (%d+)') tahadevstorm:sadd('mods:'..msg.chat_id_,user)   zo = '📮 ❯ العضو <b>{ '..user..' }</b>\n🚸 ❯ تم رفع ادمن في المجموعه\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html')  end
if text ==('تنزيل ادمن') and is_monsh(msg) then function prom_reply(extra, result, success) demmods(msg,msg.chat_id_,result.sender_user_id_) end if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)   end end
if text and text:match('^تنزيل ادمن @(.*)') and is_monsh(msg) then local username = text:match('^تنزيل ادمن @(.*)') function promreply(extra,result,success) if result.id_ then  tahadevstorm:srem('mods:'..msg.chat_id_,result.id_)  zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم تنزيله من الادمنيه\n'  else zo = '❌ يوجد خطا في الاتصال '   end  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'html')  end saddbyusername(username,promreply) end
if text and text:match('^تنزيل ادمن (%d+)') and is_monsh(msg) then local user = text:match('تنزيل ادمن (%d+)')  tahadevstorm:srem('mods:'..msg.chat_id_,user) zo = '📮 ❯ العضو <b>{ '..user..' }</b>\n🚀 ❯ تم تنزيله من الادمنيه\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html')   end end end 
if text ==('الادمنيه') and is_mod(msg) then local list = tahadevstorm:smembers('mods:'..msg.chat_id_) local t = '💥 • قائمه الادمنيه الكروب • 💥\nٴ—⚜———༺🚸༻———⚜—  \n' for k, v in pairs(list) do if storm_get_user1 then t = t .. k .. "<b>~➣{</b> " ..storm_get_user1(v).."<b>}</b>\n"  else  t = t .. k .. " ~➣{" ..storm_get_user1(v).."<b>}</b>\n"  end  end if #list == 0 then t = '💥┊لا يوجد ادمنيه في المجموعه' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'html') end
if text ==('مسح الادمنيه') and is_monsh(msg) then tahadevstorm:del('mods:'..msg.chat_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥┊ تم مسح ادمنيه البوت', 1, 'md') end
if text ==('مسح المطرودين') and is_monsh(msg) then local function delbans(extra, result) if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else  if tonumber(result.total_count_) == 0 then  storm_sendMsg(msg.chat_id_, msg.id_, 0,'💥┊ المجموعه خاليه من المطرودين', 1, 'md') else local x = 0 for x,y in pairs(result.members_) do x = x + 1 changeChatMemberStatus(msg.chat_id_, y.user_id_, 'Left', dl_cb, nil) end storm_sendMsg(msg.chat_id_, msg.id_, 0,'💥┊ تم مسح بيانات الكروب', 1, 'md') end end end getChannelMembers(msg.chat_id_, 0, 'Kicked', 200, delbans, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_})  end
if text ==('مسح المحذوف') and is_monsh(msg) then local function deleteaccounts(extra, result) if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else for k,v in pairs(result.members_) do  local function cleanaccounts(extra, result) if not result.first_name_ then changeChatMemberStatus(msg.chat_id_, result.id_, "Kicked") end end  getUser(v.user_id_, cleanaccounts, nil) end  storm_sendMsg(msg.chat_id_, msg.id_, 0,'💥┊ تم مسح الحسابات المحذوفه', 1, 'md') end end  tdcli_function ({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,offset_ = 0,limit_ = 1000}, deleteaccounts, nil) end if is_mod(msg) then
local function getadd_or_rem(taha)     if taha == 'welcome' then     local hash = tahadevstorm:get('add:welc:'..msg.chat_id_)     if hash == 'add' then     return '` مفعل ✓ `'     else     return '` معطل ✘ `'     end     elseif taha == 'spam' then     local hash = tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"flood")     if hash then      if tahadevstorm:hget("flooding:settings:"..msg.chat_id_, "flood") == "kick" then     return '` بالطرد 🚸 `'     elseif tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"flood") == "ban" then     return '` بالحظر 🚸 `'     elseif tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"flood") == "mute" then     return '` بالكتم 🔇 `'     end      else     return '` معطل ✘ `'     end      end     end    if text == 'الاعدادات' and is_monsh(msg) then     if tahadevstorm:get('lock:photo'..msg.chat_id_) then    lock_photo = '` مقفل ✓ `' else lock_photo = '` مفتوح ✘ `'    end    if tahadevstorm:get('lock:phon'..msg.chat_id_) then    lock_phon = '` مقفل ✓ `' else lock_phon = '` مفتوح ✘ `'    end    if tahadevstorm:get('lock:links'..msg.chat_id_) then    lock_links = '` مقفل ✓ `' else lock_links = '` مفتوح ✘ `'    end    if tahadevstorm:get('lockpin'..msg.chat_id_) then    lock_pin = '` مقفل ✓ `' else lock_pin = '` مفتوح ✘ `'    end    if tahadevstorm:get('lock:tagservr'..msg.chat_id_) then    lock_tagservr = '` مقفل ✓ `' else lock_tagservr = '` مفتوح ✘ `'    end    if tahadevstorm:get('lock:links'..msg.chat_id_) then    lock_link = '` مقفل ✓ `' else lock_link = '` مفتوح ✘ `'    end    if tahadevstorm:get('lock:cmds'..msg.chat_id_) then    lock_cmds = '` مقفل ✓ `' else lock_cmds = '` مفتوح ✘ `'    end    if tahadevstorm:get('lock:user'..msg.chat_id_) then    lock_user = '` مقفل ✓ `' else lock_user = '` مفتوح ✘ `'    end    if tahadevstorm:get('lock:hash'..msg.chat_id_) then    lock_hash = '` مقفل ✓ `' else lock_hash = '` مفتوح ✘ `'    end    if tahadevstorm:get('lock:muse'..msg.chat_id_) then    lock_muse = '` مقفل ✓ `' else lock_muse = '` مفتوح ✘ `'    end     if tahadevstorm:get('lock:text'..msg.chat_id_) then    lock_text = '` مقفل ✓ `' else lock_text = '` مفتوح ✘ `'    end    if tahadevstorm:get('lock:ved'..msg.chat_id_) then    lock_ved = '` مقفل ✓ `' else lock_ved = '` مفتوح ✘ `'    end    if tahadevstorm:get('lock:gif'..msg.chat_id_) then    lock_gif = '` مقفل ✓ `' else lock_gif = '` مفتوح ✘ `'    end    if tahadevstorm:get('lock:ste'..msg.chat_id_) then    lock_ste = '` مقفل ✓ `' else lock_ste = '` مفتوح ✘ `'    end    if tahadevstorm:get('lock:geam'..msg.chat_id_) then    lock_geam = '` مقفل ✓ `' else lock_geam = '` مفتوح ✘ `'    end        if tahadevstorm:get('lock:vico'..msg.chat_id_) then    lock_vico = '` مقفل ✓ `' else lock_vico = '` مفتوح ✘ `'    end        if tahadevstorm:get('lock:inlin'..msg.chat_id_) then    lock_inlin = '` مقفل ✓ `' else lock_inlin = '` مفتوح ✘ `'    end    if tahadevstorm:get('lock:addm'..msg.chat_id_) then    lock_add = '` مقفل ✓ `' else lock_add = '` مفتوح ✘ `'    end        if tahadevstorm:get('lock:fwd'..msg.chat_id_) then    lock_fwd = '` مقفل ✓ `' else lock_fwd = '` مفتوح ✘ `'    end        if tahadevstorm:get('lock:file'..msg.chat_id_) then    lock_file = '` مقفل ✓ `' else lock_file = '` مفتوح ✘ `'    end        if tahadevstorm:get('lock:self'..msg.chat_id_) then    lock_self = '` مقفل ✓ `' else lock_self = '` مفتوح ✘ `'    end    if tahadevstorm:get('lock:bots:kick'..msg.chat_id_) then    lock_bots = '` مقفل ✓ `' else lock_bots = '` مفتوح ✘ `'    end    if tahadevstorm:get('lock:mark'..msg.chat_id_) then    lock_mark = '` مقفل ✓ `' else lock_mark = '` مفتوح ✘ `'    end    if tahadevstorm:get('lock:edit'..msg.chat_id_) then    lock_edit = '` مقفل ✓ `' else lock_edit = '` مفتوح ✘ `'    end    if tahadevstorm:get('lock:spm'..msg.chat_id_) then    lock_spam = '` مقفل ✓ `' else lock_spam = '` مفتوح ✘ `'    end        local text = ' 🎁 • اعدادات المجموعه • 🎁\n•——•💠•۪۫•৩﴾ • 📯 • ﴿৩•۪۫•💠•——•\n\n'..    '📮 ❯ الروابط 【'..lock_links..    '】\n'..'📮 ❯ البوتات 【'..lock_bots..    '】\n'..'📮 ❯ التاك 【'..lock_hash..    '】\n'..'📮 ❯ المعرفات 【'..lock_user..    '】\n'..'📮 ❯ التوجيه 【'..lock_fwd..    '】\n'..'📮 ❯ الدخول 【'..lock_add..    '】\n'..'📮 ❯ التثبيت 【'..lock_pin..    '】\n'..'📮 ❯ السيلفي 【'..lock_self..    '】\n'..'📮 ❯ الاشعارات 【'..lock_tagservr..    '】\n'..'📮 ❯ الماركدون 【'..lock_mark..    '】\n'..'📮 ❯ التعديل 【'..lock_edit..    '】\n'..'📮 ❯ الكلايش 【'..lock_spam..    '】\n'..'📮 ❯ اللستات 【'..lock_inlin..    '】\n'..'📮 ❯ الصوت 【'..lock_vico..    '】\n'..'📮 ❯ المتحركه 【'..lock_gif..    '】\n'..'📮 ❯ الملفات 【'..lock_file..    '】\n'..'📮 ❯ الدردشه 【'..lock_text..    '】\n'..'📮 ❯ الفيديو 【'..lock_ved..    '】\n'..'📮 ❯ الالعاب 【'..lock_geam..    '】\n'..'📮 ❯ الصور 【'..lock_photo..    '】\n'..'📮 ❯ الاغاني 【'..lock_muse..    '】\n'..'📮 ❯ الملصقات 【'..lock_ste..    '】\n'..'📮 ❯ الجهات 【'..lock_phon..    '】\n'..'📮 ❯ التكرار 【'..getadd_or_rem('spam')..    '】\n'..'📮 ❯ الترحيب 【'..getadd_or_rem('welcome')..    '】\n'..'📮 ❯ عدد التكرار 【'..NUM_MSG_MAX..    '】\n'..'📮 ❯ زمن التكرار 【'..TIME_CHECK..    '】\n\n•——•📮•۪۫•৩﴾ • 📯 • ﴿৩•۪۫•📮•——•\n'    storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')     end    
if text and text:match('^ضع تكرار (%d+)$') and is_mod(msg) then tahadevstorm:hset("flooding:settings:"..msg.chat_id_ ,"floodmax" ,text:match('ضع تكرار (.*)')) storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥┊ تم وضع عدد التكرار في المجموعه ( '..text:match('ضع تكرار (.*)')..' )', 1, 'md') end if text and text:match('^ضع زمن التكرار (%d+)$') and is_mod(msg) then tahadevstorm:hset("flooding:settings:"..msg.chat_id_ ,"floodtime" ,text:match('ضع زمن التكرار (.*)')) storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥┊ تم وضع زمن التكرار في المجموعه ( '..text:match('ضع زمن التكرار (.*)')..' )', 1, 'md') end
if text == 'الترحيب' then local tahalink = tahadevstorm:get('welcome:'..msg.chat_id_)  if tahalink then storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..tahalink..'', 1, 'html') else storm_sendMsg(msg.chat_id_, msg.id_, 1, 'ماكو رابط', 1, 'html') end end
if text == 'طرد' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg)   then function kick_by_reply(extra, result, success) if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else kickm(msg,msg.chat_id_,result.sender_user_id_) end end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply) end
if text and text:match('^طرد (%d+)') and is_mod(msg)  then local user = text:match('طرد (%d+)')  if tonumber(user) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌┊لا تستطيع طرد او حظر او كتم البوت', 1, 'md')  return false  end if storm1(msg.chat_id_,user) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ لا تسطيع حضر او كتم او طرد ( الادمنيه و المدراء )', 1, 'md') else  if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else zo = '📮 ❯ العضو <b>{ '..user..' }</b>\n🚀 ❯ تم طرده بنجاح\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>'  storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html') changeChatMemberStatus(msg.chat_id_, user, "Kicked") end end end
if text and text:match('^طرد @(.*)') and is_mod(msg)   then local username = text:match('طرد @(.*)') function kick_username(extra,result,success) if result.id_ then  if tonumber(result.id_) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌┊لا تستطيع طرد او حظر او كتم البوت', 1, 'md')  return false  end if storm1(msg.chat_id_,result.id_) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ لا تسطيع حضر او كتم او طرد ( الادمنيه و المدراء )', 1, 'md') else if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم طرده بنجاح\n'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'html')   end end changeChatMemberStatus(msg.chat_id_, result.id_, "Kicked") end end saddbyusername(username,kick_username) end
if text == 'حظر' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg)   then function banreply(extra, result, success) if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else ban(msg,msg.chat_id_,result.sender_user_id_) end end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),banreply) end
if text and text:match('^حظر (%d+)') and is_mod(msg) then local user = text:match('حظر (%d+)')  if tonumber(user) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌┊لا تستطيع طرد او حظر او كتم البوت', 1, 'md')  return false  end if storm1(msg.chat_id_,user) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ لا تسطيع حضر او كتم او طرد ( الادمنيه و المدراء )', 1, 'md') else if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else tahadevstorm:sadd('storm:baned'..msg.chat_id_,user)  zo = '📮 ❯ العضو <b>{ '..user..' }</b>\n🚀 ❯ تم حظره بنجاح \n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html')  changeChatMemberStatus(msg.chat_id_, user, "Kicked")  end end end
if text and text:match('^حظر @(.*)') and is_mod(msg)   then local username = text:match('حظر @(.*)') function banusername(extra,result,success) if result.id_ then   if tonumber(result.id_) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌┊لا تستطيع طرد او حظر او كتم البوت', 1, 'md')  return false  end if storm1(msg.chat_id_,result.id_) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ لا تسطيع حضر او كتم او طرد ( الادمنيه و المدراء )', 1, 'md') else if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else tahadevstorm:sadd('storm:baned'..msg.chat_id_,result.id_)  zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم حظره بنجاح\n'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'html') end end  changeChatMemberStatus(msg.chat_id_, result.id_, "Kicked")   end  end saddbyusername(username,banusername) end
if text == 'الغاء الحظر' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then function unbanreply(extra, result, success) if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else unban(msg,msg.chat_id_,result.sender_user_id_) end end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),unbanreply) end
if text and text:match('^الغاء الحظر (%d+)') and is_mod(msg) then local user = text:match('الغاء الحظر (%d+)')  if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else tahadevstorm:srem('storm:baned'..msg.chat_id_,user)   zo = '📮 ❯ العضو <b>{ '..user..' }</b>\n🚀 ❯ تم الغاء حظره بنجاح\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html') end changeChatMemberStatus(msg.chat_id_, user, "Left")   end 
if text and text:match('^الغاء الحظر @(.*)') and is_mod(msg) then  local username = text:match('الغاء الحظر @(.*)')  function unbanusername(extra,result,success)  if result.id_ then if not msg.can_be_deleted_ == true then  storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md")  else  tahadevstorm:srem('storm:baned'..msg.chat_id_,result.id_) zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم الغاء حظره \n'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'html')  end changeChatMemberStatus(msg.chat_id_, result.id_, "Left")  end  end  saddbyusername(username,unbanusername) end 
if text == 'المحظورين' and is_mod(msg) then local list = tahadevstorm:smembers('storm:baned'..msg.chat_id_)local t = '💥 • قائمه محظورين الكروب • 💥\nٴ—⚜———༺🚸༻———⚜—  \n' for k, v in pairs(list) do if storm_get_user1 then t = t .. k .. "<b>~➣{</b> " ..storm_get_user1(v).."<b>}</b>\n"  else  t = t .. k .. " ~➣{" ..storm_get_user1(v).."<b>}</b>\n"  end  end if #list == 0 then t = '💥┊ لا يوجد محظورين في هاذه المجموعه' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'html') end  
if text == 'مسح المحظورين' and is_mod(msg) then  tahadevstorm:del('storm:baned'..msg.chat_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥┊ تم مسح المحظورين', 1, 'md') end 
if text == 'رفع مميز' and is_mod(msg) then    function vippyrep(extra, result, success)   vipgroups(msg,msg.chat_id_,result.sender_user_id_)    end  if tonumber(msg.reply_to_message_id_) == 0 then  else    getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),vippyrep)   end  end
if text and text:match('^رفع مميز @(.*)') and is_mod(msg) then  local username = text:match('^رفع مميز @(.*)') function vippyrep(extra,result,success)   if result.id_ then  tahadevstorm:sadd('vip:group'..msg.chat_id_,result.id_)  zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم ترقيته مميز\n'  else zo = '❌ يوجد خطا في الاتصال '   end  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'html')         end  saddbyusername(username,vippyrep) end
if text and text:match('^رفع مميز (%d+)') and is_mod(msg) then local user = text:match('رفع مميز (%d+)')   tahadevstorm:sadd('vip:group'..msg.chat_id_,user)  zo = '📮 ❯ العضو <b>{ '..user..' }</b>\n🚀 ❯ تم رفعه مميز في الكروب\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html')  end
if text ==('تنزيل مميز') and is_mod(msg) then function prom_reply(extra, result, success) demvipgroups(msg,msg.chat_id_,result.sender_user_id_) end if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)   end end
if text and text:match('^تنزيل مميز @(.*)') and is_mod(msg) then local username = text:match('^تنزيل مميز @(.*)')  function vippyrep(extra,result,success)   if result.id_ then  tahadevstorm:srem('vip:group'..msg.chat_id_,result.id_)  zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم تنزيله من المميزين\n'  else zo = '❌ يوجد خطا في الاتصال '   end  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'html')  end saddbyusername(username,vippyrep) end
if text and text:match('^تنزيل مميز (%d+)') and is_mod(msg) then local user = text:match('تنزيل مميز (%d+)')    tahadevstorm:srem('vip:group'..msg.chat_id_,user)   zo = '📮 ❯ العضو <b>{ '..user..' }</b>\n🚀 ❯ تم تنزيله من المميزين\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html')  end
if text == 'المميزين' and is_mod(msg) then  local list = tahadevstorm:smembers('vip:group'..msg.chat_id_) local t = '💥 • قائمه مميزين الكروب • 💥\nٴ—⚜———༺🚸༻———⚜—  \n' for k, v in pairs(list) do if storm_get_user1 then t = t .. k .. "<b>~➣{</b> " ..storm_get_user1(v).."<b>}</b>\n"  else  t = t .. k .. " ~➣{" ..storm_get_user1(v).."<b>}</b>\n"  end  end if #list == 0 then t = '💥┊ لا يوجد مميزين في هاذه المجموعه' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'html') end 
if text == 'مسح المميزين' and is_mod(msg) then  tahadevstorm:del('vip:group'..msg.chat_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥┊ تم مسح المميزين', 1, 'md') end 
if text == 'رفع مميز عام' and is_devtaha(msg) then function vippyrep(extra, result, success) tahadevstorm:sadd('vip:groups',result.sender_user_id_)   zo = '🚸 ❯ العضو <b>{</b> '..storm_get_user(result.sender_user_id_)..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.sender_user_id_..' }</b>\n🚀 ❯ تم ترقيته مميز عام\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html')  end    if tonumber(msg.reply_to_message_id_) == 0 then    else     getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),vippyrep)       end  end
if text and text:match('^رفع مميز عام @(.*)') and is_devtaha(msg) then     local username = text:match('^رفع مميز عام @(.*)')  function vippyuser(extra,result,success)   if result.id_ then   tahadevstorm:sadd('vip:groups',result.id_)   zo = '🚸 ❯ العضو <b>{</b> '..storm_get_user(result.id_)..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم ترقيته مميز عام\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>'  else    text = taha    end    storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html')     end    saddbyusername(username,vippyuser)  end
if text and text:match('^رفع مميز عام (%d+)') and is_devtaha(msg) then     local user = text:match('رفع مميز عام (%d+)')    tahadevstorm:sadd('vip:groups',user)   text = '\n📮 ❯ الايدي <b>{ '..user..' }</b>\n🚀 ❯ تم ترقيته مميز عام\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,text, 1, 'html')  end
if text == 'تنزيل مميز عام' and is_devtaha(msg) then   function vippyrep(extra, result, success)   tahadevstorm:srem('vip:groups',result.sender_user_id_)   zo = '🚸 ❯ العضو <b>{</b> '..storm_get_user(result.sender_user_id_)..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.sender_user_id_..' }</b>\n🚀 ❯ تم تنزيله من المميزين عام\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html')   end   if tonumber(msg.reply_to_message_id_) == 0 then    else  getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),vippyrep)      end   end   
if text and text:match('^تنزيل مميز عام @(.*)') and is_devtaha(msg) then  local username = text:match('^تنزيل مميز عام @(.*)')   function vippyrep(extra,result,success)  if result.id_ then  tahadevstorm:srem('vip:groups',result.id_)  zo = '🚸 ❯ العضو <b>{</b> '..storm_get_user(result.id_)..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم تنزيله من المميزين عام\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>'   else     text = taha  end  storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html')    end  saddbyusername(username,vippyrep)   end  
if text and text:match('^تنزيل مميز عام (%d+)') and is_devtaha(msg) then   local user = text:match('تنزيل مميز عام (%d+)')   tahadevstorm:srem('vip:groups',user) zo = '\n📮 ❯ الايدي <b>{ '..user..' }</b>\n🚀 ❯ تم تنزيله من المميزين عام\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html') end
if text == 'المميزين عام' and is_devtaha(msg) then  local list = tahadevstorm:smembers('vip:groups') local t = '💥 • قائمه المميزين عام • 💥\nٴ—⚜———༺🚸༻———⚜—  \n' for k, v in pairs(list) do if storm_get_user1 then t = t .. k .. "<b>~➣{</b> " ..storm_get_user1(v).."<b>}</b>\n"  else  t = t .. k .. " ~➣{" ..storm_get_user1(v).."<b>}</b>\n"  end  end if #list == 0 then t = '💥┊ لا يوجد مميزين عام في هاذه المجموعه' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'html') end 
if text == 'كتم' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then function mutereply(extra, result, success) mute(msg,msg.chat_id_,result.sender_user_id_) end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),mutereply) end
if text and text:match('^كتم (%d+)') and is_mod(msg) then local user = text:match('كتم (%d+)')  if tonumber(user) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌┊لا تستطيع طرد او حظر او كتم البوت', 1, 'md')  return false  end  if storm1(msg.chat_id_,user) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ لا تسطيع حضر او كتم او طرد ( الادمنيه و المدراء )', 1, 'md') else tahadevstorm:sadd('mutes'..msg.chat_id_,user)  zo = '📮 ❯ العضو <b>{ '..user..' }</b>\n🚀 ❯ تم كتمه بنجاح\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html') end end
if text and text:match('^كتم @(.*)') and is_mod(msg)   then local username = text:match('كتم @(.*)') function muteusername(extra,result,success) if result.id_ then  if tonumber(result.id_) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌┊لا تستطيع طرد او حظر او كتم البوت', 1, 'md')  return false  end  if storm1(msg.chat_id_,result.id_) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊ لا تسطيع حضر او كتم او طرد ( الادمنيه و المدراء )', 1, 'md') else  zo = '📮 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n🚸 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم كتمه بنجاح\n'  tahadevstorm:sadd('mutes'..msg.chat_id_,result.id_)  end end storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'html') end saddbyusername(username,muteusername) end 
if text == 'الغاء الكتم' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then function unmutereply(extra, result, success) unmute(msg,msg.chat_id_,result.sender_user_id_) end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),unmutereply) end  
if text and text:match('^الغاء الكتم (%d+)') and is_mod(msg) then  local user = text:match('الغاء الكتم (%d+)') tahadevstorm:srem('mutes'..msg.chat_id_,user)  zo = '📮 ❯ العضو <b>{ '..user..' }</b>\n?? ❯ تم الغاء كتمه\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html') end 
if text and text:match('^الغاء الكتم @(.*)') and is_mod(msg) then local username = text:match('الغاء الكتم @(.*)') function unmuteusername(extra,result,success) if result.id_ then tahadevstorm:srem('mutes'..msg.chat_id_,result.id_)  zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم الغاء كتمه\n'  else zo = '❌ يوجد خطا في الاتصال '   end  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'html')  end saddbyusername(username,unmuteusername) end 
if text == 'المكتومين' and is_mod(msg) then if not tahadevstorm:get("lock:add"..msg.chat_id_) then local list = tahadevstorm:smembers('mutes'..msg.chat_id_) local t = '💥 • قائمه مكتومين الكروب • 💥\nٴ—⚜———༺🚸༻———⚜—  \n' for k, v in pairs(list) do if storm_get_user1 then t = t .. k .. "<b>~➣{</b> " ..storm_get_user1(v).."<b>}</b>\n"  else  t = t .. k .. " ~➣{" ..storm_get_user1(v).."<b>}</b>\n"  end  end if #list == 0 then t = '💥┊لا يوجد مكتومين في هاذه المجموعه' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'html')       end end
if text == ('مسح المكتومين') and is_mod(msg) then  tahadevstorm:del('mutes'..msg.chat_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥┊ تم مسح المكتومين', 1, 'md') end end
if text == 'رفع القيود' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then function unbanreply(extra, result, success) if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else zo = '📮 ❯ العضو <b>{ '..result.sender_user_id_..' }</b>\n🚀 ❯ تم رفع القيود عنه\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' tahadevstorm:srem('storm:baned'..msg.chat_id_,result.sender_user_id_)  HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  tahadevstorm:srem('tedmembars'..msg.chat_id_,result.sender_user_id_) tahadevstorm:srem('mutes'..msg.chat_id_,result.sender_user_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html')  end changeChatMemberStatus(msg.chat_id_, result.sender_user_id_, "Left")   end  getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),unbanreply) end
if text and text:match('^رفع القيود (%d+)') and is_mod(msg) then local user = text:match('رفع القيود (%d+)')  if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else tahadevstorm:srem('storm:baned'..msg.chat_id_,user)  HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..user.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  tahadevstorm:srem('tedmembars'..msg.chat_id_,user)  zo = '📮 ❯ العضو <b>{ '..user..' }</b>\n🚀 ❯ تم رفع القيود عنه\n<b>=•=•=•=•=•=•=•=•=•=•=•=</b>' tahadevstorm:srem('mutes'..msg.chat_id_,user)   storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'html') end changeChatMemberStatus(msg.chat_id_, user, "Left")   end 
if text and text:match('^رفع القيود @(.*)') and is_mod(msg) then  local username = text:match('رفع القيود @(.*)')  function unbanusername(extra,result,success)  if result.id_ then if not msg.can_be_deleted_ == true then  storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md")  else  tahadevstorm:srem('storm:baned'..msg.chat_id_,result.id_) zo = '🚸 ❯ العضو <b>{</b> @'..username..' <b>}</b>\n📮 ❯ الايدي <b>{ '..result.id_..' }</b>\n🚀 ❯ تم رفع القيود \n' tahadevstorm:srem('mutes'..msg.chat_id_,result.id_)  HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True") tahadevstorm:srem('tedmembars'..msg.chat_id_,result.id_) storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'html')  end changeChatMemberStatus(msg.chat_id_, result.id_, "Left")  end  end  saddbyusername(username,unbanusername) end 
if text and text:match('^مسح (%d+)$') and is_monsh(msg) then  local taha = tonumber(text:match('^مسح (%d+)$')) if taha > 100 then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥┊تستطيح المسح للعدد 100 فقط •', 1, 'md') else function cb(a,b,c) local msgs = b.messages_  for i=1 , #msgs do delete_msg(msg.chat_id_,{[0] = b.messages_[i].id_}) end end getChatHistory(msg.chat_id_, 0, 0, taha + 1,cb) storm_sendMsg(msg.chat_id_, msg.id_, 1,'☑┊تم مسح *{'..taha..'}* رساله في المجموعه', 1, 'md') end end  if tonumber(msg.reply_to_message_id_) > 0 then
if text and text:match("حذف") and is_mod(msg) then delete_msg(msg.chat_id_,{[0] = tonumber(msg.reply_to_message_id_),msg.id_}) end	 end
if text and text:match('^منع (.*)') and is_mod(msg) then local taha = text:match('^منع (.*)') tahadevstorm:sadd('filters:'..msg.chat_id_,taha) storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥┊الكلمه ( `'..taha..'` ) تم منعها في المجموعه بنجاح ✔', 1, 'md') end 
if text and text:match('^الغاء المنع (.*)') and is_mod(msg) then  local taha = text:match('^الغاء المنع (.*)') tahadevstorm:srem('filters:'..msg.chat_id_,taha) storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥┊الكلمه ( `'..taha..'` ) تم الغاء منعها بنجاح ✔', 1, 'md') end 
if text ==('مسح قائمه المنع') and is_mod(msg) then tahadevstorm:del('filters:'..msg.chat_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1,'📇┊تم مسح قائمه المنع', 1, 'md') end 
if text == ('قائمه المنع') and is_mod(msg) then  local list = tahadevstorm:smembers('filters:'..msg.chat_id_) local t = '💥┊ قائمه المنع 📥 • \n\n' for k,v in pairs(list) do t = t..k.." - { `"..v.."` }\n`•➖➖➖➖➖➖➖•`\n"  end if #list == 0 then t = '💥┊قائمه المنع فارغه' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end 
if text and text:match('تثبيت') and msg.reply_to_message_id_ ~= 0 and is_mod(msg) then if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else   local id = msg.id_ local msgs = {[0] = id}  pin(msg.chat_id_,msg.reply_to_message_id_,1)  timstoop(c,1) storm_sendMsg(msg.chat_id_, msg.reply_to_message_id_, 1, "🎟┊ تم تثبيت الرساله", 1, 'md')  end end
if text == 'اطردني' and not tahadevstorm:get("lock:kickme"..msg.chat_id_)  and add_in_ch(msg) then if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else if storm1(msg.chat_id_,msg.sender_user_id_) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌ ❯ لا استطيع طرد { المنشئين او المميزين عام او المطورين او المدراء او المميزين او الادمنيه }\n', 1, 'md')  else  local hash = 'kick:'..msg.chat_id_..':'..msg.sender_user_id_ tahadevstorm:set(hash, "waite") storm_sendMsg(msg.chat_id_, msg.id_, 1, '🚸 ❯ لاتمام العمليه اتبع مايلي\n✔ ❯ ارسل {`نعم`} لاستمرار العمليه \n❌ ❯ ارسل {`لا`} لالغاء العمليه\n', 1, 'md') end end end if text then local hash = 'kick:'..msg.chat_id_..':'..msg.sender_user_id_ if text:match("^نعم$") and tahadevstorm:get(hash) == "waite" then tahadevstorm:set(hash, "نعم") elseif text:match("^لا$") and tahadevstorm:get(hash) == "waite" then storm_sendMsg(msg.chat_id_, msg.id_, 1, '📬 ❯ شكرا لك لن يتم طردك من هنا 🔅\n', 1, 'md') tahadevstorm:del(hash, true) end end local hash = 'kick:'..msg.chat_id_..':'..msg.sender_user_id_ if tahadevstorm:get(hash) then if tahadevstorm:get(hash) == "نعم" then if storm1(msg.chat_id_,msg.sender_user_id_) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌ ❯ لا استطيع طرد { الادمنيه او المدراء او المميزين }\n', 1, 'md') else  kick(msg,msg.chat_id_,msg.sender_user_id_)  storm_sendMsg(msg.chat_id_, msg.id_, 1, '📮 ❯ لقد تم طردك من المجموعه ✔\n', 1, 'md') end tahadevstorm:del('kick:'..msg.chat_id_..':'..msg.sender_user_id_, true) end end
if text == 'نزلني' and not tahadevstorm:get("lock:demrtpa"..msg.chat_id_)  and add_in_ch(msg) then local hash = 'demrtpa:'..msg.chat_id_..':'..msg.sender_user_id_ tahadevstorm:set(hash, "waite") if storm2(msg.chat_id_,msg.sender_user_id_) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌ ❯ لا استطيع تنزيل { المنشئين او المميزين عام او المطورين }\n', 1, 'md')  else  if not is_memar(msg)  then  tahadevstorm:del('demrtpa:'..msg.chat_id_..':'..msg.sender_user_id_, true) storm_sendMsg(msg.chat_id_, msg.id_, 1, '📬 ❯ انت مجرد عضو هنا 😹🍂\n', 1, 'md')  else storm_sendMsg(msg.chat_id_, msg.id_, 1, '🚸 ❯ اهلا عزيزي '..get_rtba(msg)..' 🍂\n✔ ❯ ارسل {`نعم`} ليتم تنزيلك\n❌ ❯ ارسل {`لا`} لالغاء العمليه\n', 1, 'md') end end end if text then local hash = 'demrtpa:'..msg.chat_id_..':'..msg.sender_user_id_ if text:match("^نعم$") and tahadevstorm:get(hash) == "waite" then tahadevstorm:set(hash, "نعم") elseif text:match("^لا$") and tahadevstorm:get(hash) == "waite" then tahadevstorm:del('demrtpa:'..msg.chat_id_..':'..msg.sender_user_id_, true) if is_monsh(msg) then t = 'المدراء'  elseif is_mod(msg) then t = 'الادمنيه'  elseif is_vipgroup(msg) then t = 'المميزين'  end storm_sendMsg(msg.chat_id_, msg.id_, 1, '📬 ❯ حسنآ لن يتم تنزيلك من '..t..'🍃\n', 1, 'md') end end local hash = 'demrtpa:'..msg.chat_id_..':'..msg.sender_user_id_ if tahadevstorm:get(hash) then if tahadevstorm:get(hash) == "نعم" then tahadevstorm:srem('monsha'..msg.chat_id_,msg.sender_user_id_)  tahadevstorm:srem('mods:'..msg.chat_id_,msg.sender_user_id_) tahadevstorm:srem('vip:group'..msg.chat_id_,msg.sender_user_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1, '📮 ❯ لقد تم تنزيلك الان انت عضو 🍀\n', 1, 'md') tahadevstorm:del('demrtpa:'..msg.chat_id_..':'..msg.sender_user_id_, true) end end
if text == "تفعيل الاضافه" and is_owner(msg) then if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else  tahadevstorm:set('add:mepr:'..msg.chat_id_,true) storm_sendMsg(msg.chat_id_, msg.id_, 1,"📮❯ تم تفعيل الاضافه اجباري", 1, 'md') end end
if text == "تعطيل الاضافه" and is_owner(msg) then tahadevstorm:del('add:mepr:'..msg.chat_id_) tahadevstorm:del('meaddwy:'..msg.chat_id_) tahadevstorm:del('meaddtaha:'..msg.chat_id_) local taha = tahadevstorm:keys("addedtaha:*") for i=1,#taha do tahadevstorm:del(taha[i]) end storm_sendMsg(msg.chat_id_, msg.id_, 1,"📮❯ تم تعطيل الاضافه اجباري", 1, 'md') end
if text and text:match("^ضع عدد الاضافه (%d+)$") and is_owner(msg) then local numadded = string.match(text, "^ضع عدد الاضافه (%d+)$") tahadevstorm:set('setadd:'..msg.chat_id_,numadded) storm_sendMsg(msg.chat_id_, msg.id_,  1, "📬❯ تم وضع عدد الاضافه *{ "..numadded..' }*', 1, 'md') end
if text and text:match('اعدادات المجموعه') and is_mod(msg) then  function gpinfo(arg,data) if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else
local taha = [[
📇┊ عدد الادمنيه *{]]..data.administrator_count_..[[}*
🚸┊ المطرودين *{]]..data.kicked_count_..[[}*
🎎┊ الاعضاء *{]]..data.member_count_..[[}*
📬┊ ايدي الكروب *{]]..(msg.chat_id_)..[[}*
]] storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, 'md') end end getChannelFull(msg.chat_id_, gpinfo, nil) end
if text and text:match("^مشاهده منشور$") then tahadevstorm:set('viewchannel'..msg.sender_user_id_,true) storm_sendMsg(msg.chat_id_, msg.id_, 1, '♼┊ حسننا ارسل التوجيه من القناة سارسل عدد المشاهدات', 1, 'md') end 
if text and text:match("^ضع رد تواصل$") and is_devtaha(msg) then   tahadevstorm:setex("sudo:pv" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  storm_sendMsg(msg.chat_id_, msg.id_, 1,'📬┊ارسل لي النص الذي تريده ', 1, 'html') end 
if text and text:match("^ضع كليشه المطور$") and is_devtaha(msg) then tahadevstorm:setex("sudo:dev" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  storm_sendMsg(msg.chat_id_, msg.id_, 1,'📬┊ارسل لي النص الذي تريده ', 1, 'html') end 
if text and text:match("^ضع كليشه ستارت$") and is_devtaha(msg) then tahadevstorm:setex("start:msgofstart" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  storm_sendMsg(msg.chat_id_, msg.id_, 1,'📬┊ارسل لي النص الذي تريده ', 1, 'html') end 
if text==("تعطيل البوت")  and add_in_ch(msg) then    if not is_owner(msg) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖❯❯ عذرا انت لست منشئ في البوت\n📮❯❯ المنشئين فقط يستطيعون التعطيل\n", 1, "md")  else tahadevstorm:del("addfrebot:"..msg.chat_id_, true) tahadevstorm:del("setmoder:"..msg.chat_id_, true) tahadevstorm:srem('bot:gpsby:id', msg.chat_id_) tahadevstorm:srem("botgps", msg.chat_id_) tahadevstorm:srem("moder"..msg.chat_id_, msg.sender_user_id_)
local add_bot_in_group = [[
📇┊اهلا يا <b>{</b> ]]..storm_get_user(msg.sender_user_id_)..[[ <b>}</b>
📫┊تم تعطيل البوت في المجموعه
📮┊للتفعيل اضف البوت الى الكروب
🎳┊ثم ارسل تفعيل البوت
<b>=•=•=•=•=•=•=•=•=•=•=•=•=</b>
🌐┊MEXECOTEAM┇@MEXIC_TV   
]] storm_sendMsg(msg.chat_id_, msg.id_, 1,add_bot_in_group, 1, 'html')  end if not is_devtaha then if not tahadevstorm:get("data:bot:"..msg.chat_id_) then 
local added = [[💥 اهلا عزيزي المطور 💥
📪| لقد تم تعطيل البوت الخدمي في مجموعه
<b>=•=•=•=•=•=•=•=•=•=•=•=</b>
📯┊معلومات المجموعه •
♨┊ايدي المجموعه <b>{ ]]..msg.chat_id_..[[ }</b>
💠┊اسم المجموعه <b>{</b><code>]]..storm_get_title(msg.chat_id_)..[[</code><b>}</b>
<b>=•=•=•=•=•=•=•=•=•=•=•=</b>
📑┊معلومات الشخص الذي قام بتعطيل
📬┊اسم العضو <b>{</b> <code>]]..storm_get_name(msg.sender_user_id_)..[[</code> <b>}</b>
💢┊ايدي العضو <b>{ ]]..msg.sender_user_id_..[[ }</b>
✨┊معرف العضو <b>{</b> ]]..storm_get_user(msg.sender_user_id_)..[[ <b>}</b>
]] storm_sendMsg(SUDO, 0, 1,added, 1, 'html') tahadevstorm:setex("data:bot:"..msg.chat_id_, 100, true) end  end end
if text and text:match('^تفعيل البوت') and add_in_ch(msg) and not tahadevstorm:get("addfrebot:"..msg.chat_id_) and not tahadevstorm:get("setmoder:"..msg.chat_id_) then if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯❯ انا لست ادمن في الكروب 🍃\n", 1, "md") else  if not tahadevstorm:get("lock:add:free"..msg.chat_id_) then tahadevstorm:del('lock:add'..msg.chat_id_)  username = data.administrator_count_
local function cb(extra,result,success) local moder = result.members_   for i = 0 , #moder do   if tahadevstorm:sismember('mods:'..msg.chat_id_,moder[i].user_id_) then   else tahadevstorm:sadd('mods:'..msg.chat_id_,moder[i].user_id_) end  end end    chek_moder(msg.chat_id_,cb)   function gpinfo(arg,data)   local function cb(extra,result,success)  local moder = result.members_    for i = data.administrator_count_ - 1 , #moder do   if tahadevstorm:sismember('moder'..msg.chat_id_,moder[i].user_id_) then  else tahadevstorm:sadd('moder'..msg.chat_id_,moder[i].user_id_) end   end end  chek_moder(msg.chat_id_,cb) end getChannelFull(msg.chat_id_, gpinfo, nil) 
local add_bot_in_group = [[
🃏┊اهلا يا <b>{</b> ]]..storm_get_user(msg.sender_user_id_)..[[ <b>}</b>
📯┊تم تفعيل المجموعه بنجاح ✔
💥┊تم رفعك منشئ للمجموعه ✔
📫┊تم رفع الادمنيه المجموعه ✔
📮┊للتعطيل ارسل تعطيل البوت 🔥
<b>=•=•=•=•=•=•=•=•=•=•=•=•=</b>
🌐┊MEXECOTEAM┇@MEXIC_TV   
]]  tahadevstorm:sadd('bot:gpsby:id', msg.chat_id_) tahadevstorm:sadd("botgps", msg.chat_id_) tahadevstorm:set("addfrebot:"..msg.chat_id_, true)  tahadevstorm:sadd("moder"..msg.chat_id_, msg.sender_user_id_)  tahadevstorm:set("setmoder:"..msg.chat_id_, true)   storm_sendMsg(msg.chat_id_, msg.id_, 1,add_bot_in_group, 1,'html') end  end if not tahadevstorm:get("data:bot:"..msg.chat_id_) then  if not is_devtaha(msg) then
local added = [[💥 اهلا عزيزي المطور 💥
📪| لقد تم تفعيل البوت الخدمي في مجموعه
<b>=•=•=•=•=•=•=•=•=•=•=•=</b>
📯┊معلومات المجموعه •
♨┊ايدي المجموعه <b>{ ]]..msg.chat_id_..[[ }</b>
💠┊اسم المجموعه <b>{</b><code>]]..storm_get_title(msg.chat_id_)..[[</code><b>}</b>
<b>=•=•=•=•=•=•=•=•=•=•=•=</b>
📑┊معلومات الشخص الذي قام بالتفعيل
📬┊اسم العضو <b>{</b> <code>]]..storm_get_name(msg.sender_user_id_)..[[</code> <b>}</b>
💢┊ايدي العضو <b>{ ]]..msg.sender_user_id_..[[ }</b>
✨┊معرف العضو <b>{</b> ]]..storm_get_user(msg.sender_user_id_)..[[ <b>}</b>
]] storm_sendMsg(SUDO, 0, 1,added, 1, 'html')  tahadevstorm:setex("data:bot:"..msg.chat_id_, 1, true)  end end return add_lockal(msg.chat_id_) end        
if text and text:match("^جلب صوره (%d+)$") and not tahadevstorm:get("lock:get:photo"..msg.chat_id_) then  tahaget = text:match("^جلب صوره (%d+)$")  local function getphoto(arg,data,result)  local taha = data.total_count_    if data.photos_[0] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, data.photos_[0].sizes_[1].photo_.persistent_id_,'\n✨ • صورتك رقم ('..tahaget..') • ✨\n⛲ • عدد صورك • 💥 ( '..taha..' )',nil)    else storm_sendMsg(msg.chat_id_, msg.id_, 1,'❌┊انت لا تمتك صوره رقم *{'..tahaget..'}*', 1,'md')  end   end getUserProfilePhotos(msg.sender_user_id_, tahaget - 1, tahaget, getphoto, nil) end
if text == 'تفعيل الايدي' and is_monsh(msg) then   taha = '🚸┊تم تفعيل الايدي  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html")  tahadevstorm:del('lock:id'..msg.chat_id_) tahadevstorm:set('lock:idphoto'..msg.chat_id_,true) end
if text == 'تعطيل الايدي' and is_monsh(msg) then  taha = '🚸┊تم تعطيل الايدي  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") tahadevstorm:set('lock:id'..msg.chat_id_,true) tahadevstorm:del('lock:idphoto'..msg.chat_id_)  end
if text == 'تفعيل ردود البوت' and is_monsh(msg) then    taha = '🚸┊تم تفعيل ردود البوت  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") tahadevstorm:del('lock:reoly:bot'..msg.chat_id_) end
if text == 'تعطيل ردود البوت' and is_monsh(msg) then    taha = '🚸┊تم تعطيل ردود البوت  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") tahadevstorm:set('lock:reoly:bot'..msg.chat_id_,true) end
if text == 'تفعيل ردود المطور' and is_devtaha(msg) then    taha = '🚸┊تم تفعيل ردود المطور  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") tahadevstorm:del('lock:dev'..msg.chat_id_) end
if text == 'تعطيل ردود المطور' and is_devtaha(msg) then    taha = '🚸┊تم تعطيل ردود المطور  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") tahadevstorm:set('lock:dev'..msg.chat_id_,true) end
if text == 'تفعيل جلب الصوره' and is_monsh(msg) then   taha = '🚸┊تم تفعيل جلب الصور  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") tahadevstorm:del('lock:get:photo'..msg.chat_id_) end 
if text == 'تعطيل جلب الصوره' and is_monsh(msg) then   taha = '🚸┊تم تعطيل جلب الصور  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") tahadevstorm:set('lock:get:photo'..msg.chat_id_,true) end
if text == 'تفعيل امر اطردني' and is_monsh(msg) then   taha = '🚸┊تم تفعيل امر اطردني  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") tahadevstorm:del('lock:kickme'..msg.chat_id_) end 
if text == 'تعطيل امر اطردني' and is_monsh(msg) then   taha = '🚸┊تم تعطيل امر اطردني  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") tahadevstorm:set('lock:kickme'..msg.chat_id_,true) end
if text == 'تفعيل امر نزلني' and is_monsh(msg) then   taha = '🚸┊تم تفعيل امر نزلني  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") tahadevstorm:del('lock:demrtpa'..msg.chat_id_) end 
if text == 'تعطيل امر نزلني' and is_monsh(msg) then   taha = '🚸┊تم تعطيل امر نزلني  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") tahadevstorm:set('lock:demrtpa'..msg.chat_id_,true) end
if text == 'تفعيل ردود المجموعه' and is_monsh(msg) then   taha = '🚸┊تم تفعيل ردود المجموعه  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") if not tahadevstorm:get('lock:reply'..msg.chat_id_) then tahadevstorm:del('lock:reply'..msg.chat_id_) end end
if text == 'تعطيل ردود المجموعه' and is_monsh(msg) then   taha = '🚸┊تم تعطيل ردود المجموعه  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html")   if not tahadevstorm:get('lock:reply'..msg.chat_id_) then   tahadevstorm:set('lock:reply'..msg.chat_id_,true) end   end 
if text == 'تفعيل البوت الخدمي' and is_devtaha then local  taha = '🚸┊تم تفعيل البوت الخدمي  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") tahadevstorm:del('lock:add:free'..msg.chat_id_) end 
if text == 'تعطيل البوت الخدمي' and is_devtaha then  taha = '🚸┊تم تعطيل البوت الخدمي  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") tahadevstorm:set('lock:add:free'..msg.chat_id_,true) end
if text == 'تفعيل التواصل' and is_devtaha then local  taha = '🚸┊تم تفعيل بوت التواصل  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") tahadevstorm:del('lock:botl'..bot_id) end 
if text == 'تعطيل التواصل' and is_devtaha then taha = '🚸┊تم تعطيل التواصل  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") tahadevstorm:set('lock:botl'..bot_id,true) end
if text == 'تفعيل الكتابه' and is_devtaha then local  taha = '🚸┊تم تفعيل الكتابه  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") tahadevstorm:del('lock:tepy'..bot_id) end 
if text == 'تعطيل الكتابه' and is_devtaha then taha = '🚸┊تم تعطيل الكتابه  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") tahadevstorm:set('lock:tepy'..bot_id,true) end
if text and text:match("^صورتي (%d+)") and not tahadevstorm:get("lock:get:photo"..msg.chat_id_) then local pro = tonumber(text and text:match("^صورتي (%d+)")) local function myprofile(extra, result, success) if result.total_count_ == 0 then storm_sendMsg(msg.chat_id_, msg.id_,  1, '❌┊عذرا انت لا تضع صوره في حسابك', 1, 'md') else if result.total_count_ >= pro then if result.photos_[0] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_, '\n📮┊صورتك رقم ❯ ['..pro..']\n📇┊عدد صورك ❯ ['..result.total_count_..']\n📬┊حجم صورتك ❯ ['..result.photos_[0].sizes_[1].photo_.size_..']') end else storm_sendMsg(msg.chat_id_, msg.id_,  1, '\n📮┊انت لا تمتلك صوره رقم  *{'..pro..'}*\n\n🎑┊عدد صورك هي *{'..result.total_count_..'}*', 1, 'md') end end end getUserProfilePhotos(msg.sender_user_id_, pro-1, 1000, myprofile) end
if text and text:match('^ايدي$') and msg.reply_to_message_id_ ~= 0  then function id_reply(extra, result, success) if result.forward_info_ then text = '<code>┄┄┄┄┄┄┄┄┄┄┄┄┄┄</code>\n🚸 ❯ معلومات الشخص ❮ 🚸\n📬┊ايدي العضو ❯ <b>{</b> <code>'..result.forward_info_.sender_user_id_..'</code> <b>}</b>\n📬┊معرف العضو ❯ <b>{</b>'..storm_get_user(result.forward_info_.sender_user_id_)..'<b>}</b>\n🚸┊اسم العضو ❯ <b>{</b> <code>'..storm_get_name(result.forward_info_.sender_user_id_)..'</code> <b>}</b>' else text = '' end storm_sendMsg(msg.chat_id_, msg.id_,  1, '🎮┊الايدي ❯ <b>{</b> <code>'..(result.sender_user_id_)..'</code> <b>}</b>\n'..text, 1, 'html') end getMessage(msg.chat_id_,msg.reply_to_message_id_,id_reply) end
if text == "مطورين البوت" or text == "اريد بوت" or text == "المطور" or text == "مطور" then local dev = tahadevstorm:get("dev") if dev then storm_sendMsg(msg.chat_id_, msg.id_,1,''..check_markdown(dev)..'',1,'md') else storm_sendMsg(msg.chat_id_, msg.id_,1,'💢┊عذرا لم يتم وضع كليشه المطور ',1,'md') end end
if text == "حذف كليشه المطور" and is_devtaha(msg) then  tahadevstorm:del("dev") storm_sendMsg( msg.chat_id_, msg.id_, 1, '🚸┊تم حذف كليشه المطور', 1, "html") end 
if text == "جلب رد التواصل" then local pvstart = tahadevstorm:get("pvstart") storm_sendMsg(msg.chat_id_, msg.id_, 1,''..check_markdown(pvstart)..'', 1, 'md') end
if text == "جلب كليشه ستارت" then local start = tahadevstorm:get("start:msgofstart") storm_sendMsg(msg.chat_id_, msg.id_, 1,''..check_markdown(start)..'', 1, 'md') end
if text == "حذف رد التواصل" and is_devtaha(msg) then  tahadevstorm:del("pvstart") storm_sendMsg( msg.chat_id_, msg.id_, 1, '🚸┊تم حذف رد التوصل', 1, "html") end 
if text == "حذف كليشه ستارت" and is_devtaha(msg) then  tahadevstorm:del("start:msgofstart") storm_sendMsg( msg.chat_id_, msg.id_, 1, '🚸┊تم حذف كليشه ستارت', 1, "html") end 
if text == 'رتبتي' then  local msgtaha = 357 local msggstaha = tahadevstorm:get('user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) or 0  local nupmsgg =  tonumber((msggstaha / msgtaha) * 100)   local  sto = 1  for k,v in pairs(tahadevstorm:hkeys("user:messages"..msg.chat_id_..":*")) do if tahadevstorm:get("user:messages"..msg.chat_id_":"..v) > sto then  sto = tahadevstorm:get("user:messages"..msg.chat_id_":"..v) end end local msguser = tonumber(tahadevstorm:get('msg:user:'..msg.chat_id_..':'..msg.sender_user_id_) or 1) local ch =  '@STORMCLI' local msgs = tahadevstorm:get('user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) if is_devtaha(msg) then t = 'مطور اساسي 🕹'  elseif is_sudo(msg) then t = 'مطور 💥'  elseif is_owner(msg) then t = 'المنشئ 🔥'  elseif is_monsh(msg) then t = 'المدير ✨'     elseif is_mod(msg) then t = 'ادمن الكروب 👮'  elseif is_vipgroups(msg) then t = 'مميز عام ✨'  elseif is_vipgroup(msg) then t = 'مميز 🚸'   else t = 'مجرد عضو 🙌' end
local taha = [[
📮 ❯  اهلا بك في معلومات ❮ 📮
ٴٴ—⚜——┈┉━📡━┉┄——⚜
📬┊ ايديك <b>{]]..msg.sender_user_id_..[[}</b>
📯┊ معرفك  <b>{</b>]]..storm_get_user(msg.sender_user_id_)..[[<b>}</b>
🎮┊ رتبتك ( ]]..t..[[ )
📮┊رسائل الكروب ( <b>]]..(tahadevstorm:get('groupmsg:'..msg.chat_id_..':') or 0)..[[ </b>)
📇┊ رسائلك ( <b>]]..(tahadevstorm:get('user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)..[[</b> )
🚀┊تفاعلك ( ]]..formsgg(msguser)..[[ )
💥┊نسبه تفاعلك ( <b>]]..string.sub(nupmsgg, 1,5)..[[ % </b> )
🎳┊ اسمك  ( <code>]]..storm_get_name(msg.sender_user_id_)..[[ </code> )
ٴٴ—⚜——┈┉━📡━┉┄——⚜
📮 ❯ المطور @]]..sudouser..[[
]] storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") end 
if text == 'موقعي' then local msguser = tonumber(tahadevstorm:get('msg:user:'..msg.chat_id_..':'..msg.sender_user_id_) or 1)  local msgtaha = 357 local msggstaha = tahadevstorm:get('user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) or 0  local nupmsgg =  tonumber((msggstaha / msgtaha) * 100)   local  tah = 1  for k,v in pairs(tahadevstorm:hkeys("user:messages"..msg.chat_id_..":*")) do if tahadevstorm:get("user:messages"..msg.chat_id_":"..v) > taha then  tah = tahadevstorm:get("user:messages"..msg.chat_id_":"..v) end end local ch =  '@STORMCLI' local msgs = tahadevstorm:get('user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) if is_devtaha(msg) then t = 'مطور اساسي 🕹'  elseif is_sudo(msg) then t = 'مطور 💥'  elseif is_owner(msg) then t = 'المنشئ 💥'  elseif is_monsh(msg) then t = 'المدير ✨'    elseif is_mod(msg) then t = 'ادمن الكروب 👮'  elseif is_vipgroups(msg) then t = 'مميز عام ✨'  elseif is_vipgroup(msg) then t = 'مميز 🚸'   else t = 'مجرد عضو 🙌' end 
local taha = [[
📮 ❯  اهلا بك في معلومات ❮ 📮
ٴٴ—⚜——┈┉━📡━┉┄——⚜
🚸┊ ايديك <b>{]]..msg.sender_user_id_..[[}</b>
📯┊ معرفك  <b>{</b>]]..storm_get_user(msg.sender_user_id_)..[[<b>}</b>
🎮┊ رتبتك ( ]]..t..[[ )
📇┊رسائل الكروب ( <b>]]..(tahadevstorm:get('groupmsg:'..msg.chat_id_..':') or 0)..[[ </b>)
📇┊ رسائلك ( <b>]]..(tahadevstorm:get('user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)..[[</b> )
🚀┊تفاعلك ( ]]..formsgg(msguser)..[[ )
💥┊نسبه تفاعلك ( <b>]]..string.sub(nupmsgg, 1,5)..[[ % </b> )
📬┊ اسمك  ( <code>]]..storm_get_name(msg.sender_user_id_)..[[ </code> )
ٴ—⚜——┈┉━📡━┉┄——⚜–
📮 ❯ المطور @]]..sudouser..[[
]] storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "html") end 
if text == 'عدد الاضافه' or text == 'شكد اضيف' or text == 'شكد العدد' then local whatnumadded = (tahadevstorm:get('setadd:'..msg.chat_id_) or '0') storm_sendMsg(msg.chat_id_, msg.id_, 1,"📇 ❯❯ عدد الاضافات المطلوبه\n🚸❯❯ *"..whatnumadded.."* اشخاص ❮❮🚸\n", 1, 'md') end
if text == "مسح رسايلي" then  local taha = '\n💥┊عدد رسائلك ( *'..tahadevstorm:get('user:messages:'..msg.chat_id_..':'..msg.sender_user_id_)..'* ) رساله\n🚸┊تم مسح رسائلك سيتم العد من جديد'  storm_sendMsg(msg.chat_id_, msg.id_, 1,taha, 1, 'md')  tahadevstorm:del('user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) end
if text == "رسايلي" or text == "رسائلي" or text == "msg" then local taha = 'عدد رسائلك ( *'..tahadevstorm:get('user:messages:'..msg.chat_id_..':'..msg.sender_user_id_)..'* ) رساله' storm_sendMsg(msg.chat_id_, msg.id_, 1,taha, 1, 'md') end end
if text == "معرفي" then function getmepar(extra,result,success) username = '@'..(result.username_ or 'ماكو معرف ❌')..'' local taha = 'معرفك ([ '..username..' ]) ✨' storm_sendMsg(msg.chat_id_, msg.id_, 1,taha, 1, 'md') end getUser(msg.sender_user_id_, getmepar) end
if text == "اسمي" then local name = tahadevstorm:hget('gps:settings:'..msg.sender_user_id_ ,"setnameid") if not name then  function setname(extra,result,success) snm = result.first_name_ tahadevstorm:hset('gps:settings:'..msg.sender_user_id_ ,"setnameid" , snm) end  getUser(msg.sender_user_id_,setname) name = tahadevstorm:hget('gps:settings:'..msg.sender_user_id_ ,"setnameid") or '...' end local taha = '` '..name..' `' storm_sendMsg(msg.chat_id_, msg.id_, 1,taha, 1, 'md') end
if text == "صورتي" then local function getpro(extra, result, success) if result.photos_[0] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,'') else storm_sendMsg(msg.chat_id_, msg.id_, 1,'📷 • انت لا تمتلك صوره 😹', 1, 'md') end end tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil) end if chat_type == 'super' then
if text == 'باي' or text == 'باي باي' or text == 'مع السلامه' or text == 'مع سلامه'  or text == 'مع السلامة' or text == 'مع سلامة' or text == 'بااي'  or text == 'باااي' or text == 'بايي'  or text == 'جاو' then if  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then local taha = {'تعال خل نكمل سالفتنه وين رايح 😧','جاي اشاقه تعال لضوج ','دفعه مردي وعصى كردي 😌','منو زعلك حته تروح 😥','شبيك ضايج تعال 😨','الله وياك دروح مختنكه ونته موجود ☹️','هاك الف شتري بيها لفتين فلافل 🌝💋','سلملي ع ئمك 🤷‍♀️','بعد وكت وين ',"لله وياكـ💙✨ يا • ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽🍯̯⁾ֆ‘",'تعال وين رايح عندي شغله وياك ','تعال لضل هيج ترا مكلنه شي بسرعه دكول باي 😐','الله وياك والتكسي ع حساب المدير 😂 ماعليه اني ' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md')end end
if text == 'احم' or text == 'ئحم' or text == 'حم' or text == 'أحم' or text == 'أحم' or text == 'احم احم' then if not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then local taha = {'جيبوله مي 😅','شبيك تتحمحم نطو مي خطيه غص بلكمته ','خير 🙊','تفضل ☹️','والله اشكال 🏼‍♀️','احمات 😏','طبوله ع ضهره 🙃','ها خير شبيك ' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end
if text == 'تعالي خاص' or text == 'تعال خاص' or text == 'تعي خاص' or text == 'نع خاص' or text == 'خاص'  or text == 'خاصج'  or text == 'خاصك'  or text == 'شوف الخاص'  or text == 'شوف خاصك'  or text == 'شوفي خاصج' or text == 'تعاي خاص😂'  then if not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then local taha = {'عيب ','خالتك الشكره  احسن ترضها اخويا يزحف ع اختك 😐🤷‍♀️','عب نجب و ولي منا 🙊‍♀️','محضوره دز رساله وتع خاص 🤷🏼‍♀️','شبيك مشايف بنات ؟ 🤤','ولي 🙄','ما 😌','ولي لك 😒','وعود صاك ئنته ؟','ئذا الموضوع حساس اجيك 🌝','تعال حتطفي الكهرباء 😶' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end
if text == "شلونك" or text== "شلونج" or text== "شونكم" or text== "شونك" or text== "شونجج"  then if not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then local taha = {'  اۢنٰـۛتهہ شعليك بيهة','  مــﮫـمـ❥ـوﯢمـ۾☹ ','تٌمآم حٍـيَآتٌيَ ۆآنْتٌ 😊 ','ۆآلُلُہ مۆ ڒٍيَنْ😢 ','   بْخـيَر ۆصٍحٍـہةّ ۆعآفَيَہ😌','  آلُلُةّ ڒٍيَنْ لُۆ مگبْلُ😌 ',"آلـْ ح ـمـِْدِّ اللّـٰھ وانٓــتــٰـہ/ي ࿐❥ 🌎🌸" ,'  مۆ گنْآلُہةّ لُحٍـمدِ لُلُہةّ ','  آةّۆۆۆۆ شُگدِ تٌلُحٍ آنْتٌ ','  بْلُ عبْآس آبْۆ آلُفَآضٍلُ آنْيَ لُحٍـمدِلُلُہةّ  ','تمام وانت/ي شلونك/ج🎈','تمام وانت/ي شلونك/ج🎈'} storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end   end
if text == "بوت"  and not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then  local taha = {'  آنْجٍبْ لُگ آلُبْآرحٍـةّ تٌغَلُطً علُيَةّ 😭😒 ','  ۆعمةّ آنْشُآلُلُہةّ شُبْيَگ يَلُآ گۆلُ 😒 ','   بْعدِ رۆحٍـيَ آمرنْيَ آنْتٌ 😍😘',' نْجٍبْ لُگ عنْدِيَ آسم ۆصٍيَحٍـنْيَ بْيَة 😟😤ّ','  غَيَر يَگعدِ رآحٍـةّ آلُڒٍآحٍـفَ 😝😂 ','  ۆلُگ شُبْيَگ خـبْصٍتٌنْيَ بْس صٍيَحٍ مۆ دِآ آنْسقَ ۆيَةّ بْنْتٌ 😒😤 ',' تٌرآ مشُتٌغَلُ مآ ۆآگفَ ','  آيَ آيَ آجٍتٌيَ آلُمصٍآلُحٍ يَلُآ آحٍـجٍيَ شُعنْدِگ😓 ','   غَيَر يَبْطًلُ ۆبْعدِ مآ يَلُحٍ ۆيَخـلُيَنْيَ آرتٌآحٍ 😰','  لۧاٲ   مو بوت اقرا اسمي✨ ','   شبي معاجبك ',' تاج راسي كول حبيبي 😻🙊😚  ','  ها حياتي اامرني كلبي 😇 ','ها احجي شتريد 😏 صيحلي باسمي بعد لدكول بوت😢   ','   نجب لك صارت قديمه صيحلي باسمي 😒👬💛',' حياتي انت كول بعد روحي 🙊  ',' فضها كول شرايد تعبتوني😢😞  ','   تفصل يروحتي 😻'} storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end
if text == "هلو" or text== "هلا" or text== "هاي"  then if not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then     local taha = {' هـُ‘ـُلُٱ بُـ‘ـُيُـ‘ـُكُ شُـ‘ـُوٌنُـ‘ـكُ 😇  ','   هّـلَأّوٌتٌ عٌلَ نِبًيِّ صّـمًوٌنِ حًأّر وٌلَبًلَبًيِّ 😻','   يِّهّـلَأّ وٌأّلَلَهّ نِوٌرتٌـنِأّ حًمًبًقُلَبًيِّ ','  کْوٌلَ سِـلَأّمً عٌلَيِّکْمً لَتٌـصّـيِّر مًأّيِّعٌ  ','   هّـلَأّ حًيِّأّتٌـيِّ مًنِوٌر أّنِتٌ بًسِـ بًدٍوٌنِ ﺰحًفُـ رجّـأّئأّأّ 😂😂','لَأّ هّـلَهّ وٌلَأّ مًرحًبًأّ  ','  أّهّـوٌوٌوٌ أّجّـهّ أّلَﺰأّحًفُ 😤  ','   کْلَ أّلَهّـلَأّ بًيِّکْ وٌبًجهّـأّتٌـکْ خِـصّـمً أّلَحًجّـيِّ ضًـيِّفُ جّـهّـأّتٌـکْ 😉😂','   يِّعٌمًيِّ هّـلَأّ بًيِّکْ مًنِيِّنِ مًأّ جّـيِّتٌ 😒😣','هلوات عيونـي نورت🌷','هلُۆآتٌ حٍـيَـ{ლ}ـآتٌيَ┆✨😽💞','هـايـات يـروحـي┋🌸','يههلا بيك حياتي 💛🌿'}      storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md')   end end
if text == "سلام عليكم" or text== "سلام"  then if not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then       local taha = {'  وٌعٌلَيِّکْمً أّلَسِـلَأّمً وٌرحًمًةّ أّلَلَهّ وٌبًرکْأّتٌـهّ ','   وٌعٌلَيِّکْمً سِـلَأّمً شُـوٌنِکْ حًيِّأّتٌـيِّ شُـخِـّـبًأّرکْ 😋😇','کْلَ أّلَهّـلَأّ بًيِّکْ حًمًبًيِّ 😆 ','   أّيِّ عٌوٌدٍ ثًـکْيِّلَ يِّسِـلَمً يِّلَأّ عٌيِّنِيِّ کْمًلَ أّلَسِـلَأّمً مًأّلَتٌـکْ وٌبًلَشُ أّﺰحًفُ 😂','   يِّهّـلَأّ وٌأّلَلَهّ أّشُـلَوٌنِکْمً شُـخِــبًأّرکْمً أّبوٌکْ شُـوٌنِهّ ','وعليـكم السلام ورحمـة الله وبركاتهُ','وعليكم السلام والرحمه🏌🏿‍♀️','ﯛ୭ﯠ۶ـہٰٰٰٖٖٖلہٰٰٰٖٖٖيکگہٰٰٰٖٖٖمہٰٰٰٖٖٖہ ٵٴلہٰٰٰٖٖٖسہلہٰٰٰٖٖٖاٴمہٰٰٰٖٖٖہ ┆ ➰✌️🏿'}  storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end
if text == "منور" or text== "منورين" or text== "منوره"  then if not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then       local taha = {'   أّکْيِّدٍ مًنِوٌر بًوٌجّـوٌدٍيِّ أّنِيِّ ☺',' أّيِّ عٌمًيِّ کْلَهّـأّ وٌأّسِـطِأّتٌ مًوٌ صّـوٌجّـکْمً وٌأّلَلَهّـيِّ 😣😢  ',' لَأّ مًوٌ مًنِوٌر وٌأّذِأّ تٌـعٌأّنِدٍ أّدٍفُـرکْ 😒😂 ','   أّفُـتٌـهّـمًنِأّ عٌمًيِّ مًنِوٌ أّنِتٌـ وٌهّـوٌ ','   هّـأّ لَأّﺰمً خِـيِّلَتٌ عٌلَيِّةّ 😂😂',' أّيِّ وٌأّلَلَةّ فُـعٌلَأّ مًنِوٌر هّـلَ صّـأّکْ 😂😓'}   storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end 
if text == "مح" or text== "محح" or text== "محح"  then if not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then       local taha = {' ﺎخٰٰ̲خྀـٓربٰ ﯛ୭ات̲كھٰربْ ♥',' ﻋِﻋٰافيٰۛـۢھٰهۃ ؛ֆ   ','ﺄموﯟعنَ ،😞💓.   ','  أّوٌفُـ أّلَلَلَهّ 😍 شُـهّـلَ بًوٌسِـهّ  ','  دٍيِّيِّيِّ لَکْ ﺰأّحًفُـ لَضًـلَ تٌـبًوٌسِ 😒 ','  أّهّـوٌووٌوٌ لَيِّشُـوٌفُـهّ يِّکْوٌلَ هّـوٌ مًهّـنِدٍ وٌيِّبًوٌسِ بًلَ عٌأّلَمً 😩  ','   دٍنِجّـبً لَکْ ﺰأّحًفُ 😝😂'}  storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md')      end end
if text == "ضايج" or text== "ضوجه" or text== "ضايجه" or text== "حيل ضوجه" then if not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then       local taha = {'   كٰ̲ۛكۛلٰشۢ ،🍿ֆۦ ','  ضايج لئن كلبه مكسور 🙀😿 ','  حـٍبيبي ءّ🙍‍♂️💜 اركـ🕺🏻ـصلج🌚 ','   أّيِّ وٌأّلَلةّ ضًـوٌجّـهّـ وٌنِسِـوٌأّنِ مًأّکْوٌ وٌشُـغُلَ مًأّکْوٌ 😣😢','  أّيِّ أّلَيِّوٌمً کْآبًهّ حًيِّلَ 😞 ','  حًيِِّـأّتٌـيِّ تٌـعٌ نِلَعٌبً لَعٌبًةّ لَبًوٌسِـأّتٌ بًوٌسِـنِيِّ وٌأّبًوٌسِـکْ 😂😢 ','  هّـهّـهّـهّـهّـهّـهّ دٍنِجّـبً وٌيِّنِ أّکْوٌ ضًـوٌجّـهّ 😝 ',' أّلَلَلَلَلَهّـمً لَأّ شُـمًأّتٌـهّ 😂',"حـٍبيبي ءّ🙍‍♂️💜 اركـ🏻ـصلج🌚" } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md')  end end
if text == "صباحو" or text== "صباح الخير"  then if not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then   local taha = {'  صباحو النور اشرقت وانورت🎈 ','صۢبٰاζ النور 😍   ','  صۢبٰاζـۢوٰﯟ ،☀️ عسل 😋😎 ','  صباحو النور يا نور 😻😹 ' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md')   end   end
if text == "زاحف" or text== "زواحف"  then if not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then    local taha = {'  اهوو هم زحف 😢😂 ','  على خالتك¤_¤ 😒 ',' شكو تزحف ولك 😝 خلوني بس اني ازحف   ','  أّسِـمًيِّ 😌','  أّنِتٌ شُـعٌلَيِّکْ بًأّسِـمًيِّ 😕  '}   storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end
if text == "احبك" or text== "احبج" then if not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then    local taha = {'  اشتم ريحـة🙄 زحف يمعودين🎈 ','  مي تو واني اموت بيك/ج♥️🌝 ','  بعد روحي واني احبكم هم بس لتزحفلي رجاا 😸💋 ','  ولك ما تبطل زحفك 😹 صارت قديمه ترا 😂 ','   أّوٌفُ أّلَلَهّـهّـهّـ أّنِيِّ أّمًوٌتٌـنِ بًيِّکْ وٌلَعٌبًأّسِ 😢','متستحي ','ئوف فديتك ربك ','ماحترمك شلون احبك 🌝','حبيبي المطور بس ','ماحبك 🤤','كلبي انته 😶❤️','اموتن بيك ❤️','اموعن اذوبن 💔','ئنته ئلنفس مال اني ❤️😋','شبيك مشايف بنات هيج جفاف ','ئنته ئلعشق ','طيني بوسه وحبك 🤗','لزكت 😕','انت ليش يا ابنية اشوفها ادكول الها احبج صدك متستحي على نفسك 😒💔', 'فدوة الحلك ', 'باع حضي مناقصني زواحف ولي راح احضرك😪😂','اني وانت كلب واحد بالنفس صاعد ونازل 🙊😻','تفووو عليك ماريد حبك 😂🙊','اموت عليك يروحي 😻💋'}      storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md')   end end
if text == "هه" or text== "ههه" or text== "هههه" or text== "ههههه" or text== "هههههه" or text== "ههههههه" or text== "ههههههههه" or text== "هههههههههههه" or text== "هههههههههههههههههه" then if not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then   local taha = {'دووم الضحُــكه  يرويحتي🍃   ',' انت شبيك تخبلت 😨😹😹  ',' دووم الضحكـه 😽  ','   كافي تضخك 😒 انت مو زغير 😎😻😹','انت شبيك تخبلت 😒😨😹😹   ','  وٌأّلَلَهّ مًأّکْوٌ فُـأّيِّدٍهّ وٌيِّأّکْ ','انت شبيك تخبلت 😒😨😹','ضحكتك 🚶 مال فروخ  بطلها 😹😹'}    storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md')  end end
if text =="🌚" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "• فـﮧديت صخـﮧامك🙊👄"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text == "🌚🌚" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "• فـﮧديت صخـﮧامك🙊👄"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text == "🌚🌚🌚" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "• فـﮧديت صخـﮧامك🙊👄"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text == "🌚🌚🌚🌚" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "• فـﮧديت صخـﮧامك🙊👄"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🏻" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شـﮫـۛالـٰٰ̲ضـِۛـوٰ୭ٰۛٳٲ 🌝💙 ۶ الماشي✨🚶🏻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🏻🚶🏻" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شـﮫـۛالـٰٰ̲ضـِۛـوٰ୭ٰۛٳٲ 🌝💙 ۶ الماشي✨🚶"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🏻🚶🏻🚶🏻🚶🏻" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شـﮫـۛالـٰٰ̲ضـِۛـوٰ୭ٰۛٳٲ 🌝💙 ۶ الماشي✨🚶🏻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🏻🚶🏻🚶🏻" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شـﮫـۛالـٰٰ̲ضـِۛـوٰ୭ٰۛٳٲ 🌝💙 ۶ الماشي✨🚶"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙈" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "» ﺷــ๋͜ـﮭڸ خــ๋͜ـجل ﮪ 💗😻̯͡"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙈🙈" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "» ﺷــ๋͜ـﮭڸ خــ๋͜ـجل ﮪ 💗😻̯͡"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙈🙈🙈" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "» ﺷــ๋͜ـﮭڸ خــ๋͜ـجل ﮪ 💗😻̯͡"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙈🙈🙈🙈" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "» ﺷــ๋͜ـﮭڸ خــ๋͜ـجل ﮪ 💗😻̯͡"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙊🙊🙊🙊" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فديت الخجل يبن القرده 😹😢"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙊🙊🙊" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فديت الخجل يبن القرده 😹😹😢"   storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙊🙊" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فديت الخجل يبن القرده 😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙊" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فديت الخجل يبن القرده 😹??"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😍😍😍😍" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "صعد الحب🙄 الله يستر😹💔 من الزحف "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😍😍😍" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "صعد الحب🙄 الله يستر😹💔 من الزحف 😂😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😍😍" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "صعد الحب🙄 الله يستر😹💔 من الزحف 😂😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😍" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "صعد الحب🙄 الله يستر😹💔 من الزحف 😂😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😂😂😂😂" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "دوم الضحـكه😽🎈 "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😂😂😂" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "دوم الضحـكه😽🎈 "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😂😂" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "دوم الضحـكه😽🎈 "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😂" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "دوم الضحـكه😽🎈 "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😉😉😉😉" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "باع الغمزه 🙀 تموت 🙈🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😉😉😉" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "باع الغمزه 🙀 تموت 🙈🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😉😉" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "باع الغمزه 🙀 تموت 🙈🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😉" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "باع الغمزه 🙀 تموت 🙈🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😳😳😳😳" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شبيك 🙀 مصدوم شنو 🙄 جديده عليك حتى تنصدم ♥️🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😳😳😳" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شبيك 🙀 مصدوم شنو 🙄 جديده عليك حتى تنصدم ♥️🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😳😳" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شبيك 🙀 مصدوم شنو 🙄 جديده عليك حتى تنصدم ♥️🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😳" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شبيك 🙀 مصدوم شنو 🙄 جديده عليك حتى تنصدم ♥️🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😠😠😠😠" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "حمه الصيني طفوه 😍😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😠😠😠" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "حمه الصيني طفوه 😍😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😠😠" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "حمه الصيني طفوه 😍😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😠" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "حمه الصيني طفوه 😍😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😡😡😡😡" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "حمه الصيني طفوه 😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😡😡😡" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "حمه الصيني طفوه 😍😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😡😡" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "حمه الصيني طفوه 😍"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😡" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "حمه الصيني طفوه 😍😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😭😭😭😭" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لا تبجي يروحي محد يسوه تبجيله ☺😘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end 
if text =="😭😭😭" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لا تبجي يروحي محد يسوه تبجيله ☺😘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😭" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لا تبجي يروحي محد يسوه تبجيله ☺😘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😭" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لا تبجي يروحي محد يسوه تبجيله ☺😘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😌😌😌😌" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فديت  الرقه مالتك 😉😇🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😌😌😌" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فديت 🙊😻 الرقه مالتك 😉😇🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😌😌" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فديت 😻 الرقه مالتك 😉😇🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😌" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فديت  الرقه مالتك 😉😇"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💃💃💃💃" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شددها ابو سميره 😂 خوش تهز "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💃💃💃" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شددها ابو سميره 😂 خوش تهز 😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💃💃" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شددها ابو سميره 😂 خوش تهز 😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💃" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شددها ابو سميره 😂 خوش تهز 😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="👀" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "هاي وين دا تباوع ولك😹😹🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="👀👀" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "هاي وين دا تباوع ولك😹😹🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😱😱😱😱" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "عزا العزاك هاي شفت ولك 😂😂😍"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😱😱😱" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "عزا العزاك هاي شفت ولك 😂😍"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😱😱" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "عزا العزاك هاي شفت ولك 😂😂😍"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😱" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "عزا العزاك هاي شفت ولك 😂😂😍"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😊😊😊😊" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فديت الخجل كله 😎😍"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😊😊😊" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فديت الخجل كله 😎😍"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😊😊" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فديت الخجل كله 😎😍"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😊" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فديت الخجل كله 😎😍"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😘😘😘😘" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "• ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽̯⁾ֆ‘ يا • ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽🍯̯⁾ֆ‘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😘😘😘" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "• ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽🍯̯⁾ֆ‘ يا • ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽🍯̯⁾ֆ‘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😘😘" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "• ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽🍯̯⁾ֆ‘ يا • ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽🍯̯⁾ֆ‘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😘" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "• ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽🍯̯⁾ֆ‘ يا • ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽🍯̯⁾ֆ‘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="☺☺☺☺" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ابتسامه مال واحد شايل اهموم الدنيا كوله بگلبه 💔😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="☺☺☺" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ابتسامه مال واحد شايل اهموم الدنيا كوله بگلبه 💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="☺☺" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ابتسامه مال واحد شايل اهموم الدنيا كوله بگلبه 💔😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="☺" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ابتسامه مال واحد شايل اهموم الدنيا كوله بگلبه 💔😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😞😞😞😞" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منو مضوجك🙀 دليني عليه😾💪🏼"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😞😞😞" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منو مضوجك دليني عليه😾💪🏼"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😞😞" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منو مضوجك🙀 دليني عليه😾💪🏼"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😞" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منو مضوجك🙀 دليني عليه😾💪🏼"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😻😻😻😻" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "باع الحب صاعد عده فول 😹😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😻😻😻" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "باع الحب صاعد عده فول 😹😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😻😻" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "باع الحب صاعد عده فول 😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😻" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "باع الحب صاعد عده فول 😹😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😇" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "مسويلك مصيبه ودا تبتسم 😻😹😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😇😇" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "مسويلك مصيبه ودا تبتسم 😻😹😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منور يبعد الكلب 🌺😇"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🚶" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منور يبعد الكلب 🌺😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🚶🚶" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منور يبعد الكلب 🌺😻😇"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🚶🚶🚶" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منور يبعد الكلب 🌺😇"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😢😢😢😢" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "عيــونك/ج✨ حرام ينزل دمعهن🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😢😢😢" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "عيـ😻ـونك/ج✨ حرام ينزل😴 دمعهن🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😢😢" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "عيـ😻ـونك/ج✨ حرام ينزل😴 دمعهن🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😢" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "عيـ😻ـونك/ج✨ حرام ينزل😴 دمعهن🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😹😹😹😹" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "دوم الضحكه يالغالي 😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😹😹😹" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "دوم الضحكه يالغالي 😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😹😹" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "دوم الضحكه يالغالي 😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😹" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "دوم الضحكه يالغالي 😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😿😿😿😿" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منو وياك يرويحتي 😓😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😿😿😿" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منو وياك يرويحتي 😓😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😿😿" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منو وياك يرويحتي 😓😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😿" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منو وياك يرويحتي 😓😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😏😏😏😏" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "عود شوفوني اني شخصـية 😣وهو وجـهه وجه الطلي 🙊😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😏😏😏" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "عود شوفوني اني شخصـية 😣وهو وجـهه وجه الطلي 🙊😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😏😏" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "عود شوفوني اني شخصـية 😣وهو وجـهه وجه الطلي 🙊😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😏" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "عود شوفوني اني شخصـية 😣وهو وجـهه وجه الطلي 🙊😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😒😒😒😒" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شبي🙃 ‎‏💛🙈  ggɺᓗɺÎ  ضايج"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😒😒😒" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شبي🙃 ‎‏💛  ggɺᓗɺÎ  ضايج💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😒😒" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شبي🙃 ‎‏💛🙈  ggɺᓗɺÎ  ضايج"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😒" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شبي ‎‏💛🙈  ggɺᓗɺÎ  ضايج"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😝😝😝😝" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لو جوعان 🤔لو مريض نفسي💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😝😝😝" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لو جوعان لو مريض نفسي💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😝😝" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لو جوعان 🤔لو مريض نفسي😹💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😝" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لو جوعان 🤔لو مريض نفسي😹💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😕😕😕" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شكو عاوج حلكك😒😻😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😕😕" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شكو عاوج حلكك😒😻😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😕" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شكو عاوج حلكك😒😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶‍♀️🚶‍♀️🚶‍♀️🚶‍♀️" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "- الجمال البـيـج فـاتح للـغغزل چم بـاب💅🏻💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶‍♀️🚶‍♀️🚶‍♀️" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "- الجمال البـيـج فـاتح للـغغزل چم بـاب💅🏻💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶‍♀️🚶‍♀️" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "- الجمال البـيـج فـاتح للـغغزل چم بـاب💅🏻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶‍♀️" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "- الجمال البـيـج فـاتح للـغغزل چم بـاب💅🏻💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🏻🚶🏻🚶🏻🚶🏻" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "- الجمال البـيـك فـاتح للـغغزل چم بـاب💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🏻🚶🏻🚶🏻" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "- الجمال البـيـك فـاتح للـغغزل چم بـاب💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🏻🚶🏻" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "- الجمال البـيـك فـاتح للـغغزل چم بـاب💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🏻" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "- الجمال البـيـك فـاتح للـغغزل چم بـاب💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end 
if text =="😔😔😔😔" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ليش زعلان يعمري 😔 تعال احجيلي اهمومك💔🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end 
if text =="😔😔😔" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ليش زعلان يعمري 😔 تعال احجيلي اهمومك🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😔😔" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ليش زعلان يعمري 😔 تعال احجيلي اهمومك💔🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😔" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ليش زعلان يعمري 😔 تعال احجيلي اهمومك💔🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😑😑😑😑" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منو مضوجك☹️ פـٍـٍبيبي ءّ‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😑😑😑" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منو مضوجك☹️ פـٍـٍبيبي ءّ🙍‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😑😑" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منو مضوجك☹️ פـٍـٍبيبي ءّ🙍‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😑" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منو مضوجك☹️ פـٍـٍبيبي ءّ🙍‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😐😐😐😐" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شبيك ضايج يروحي 😓😭"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😐😐😐" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شبيك ضايج يروحي 😭"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😐😐" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شبيك ضايج يروحي 😓😭"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😐" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شبيك ضايج يروحي 😓😭"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😋😋😋😋" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لو جوعان 🤔لو مريض نفسي😹💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😋😋😋" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لو جوعان لو مريض نفسي😹💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😋😋" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لو جوعان 🤔لو مريض نفسي😹💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😋" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لو جوعان 🤔لو مريض نفسي😹💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😎😎😎😎" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "مسوي عمليه لعيونك  لو انت خبل🙌"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😎😎😎" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "مسوي عمليه لعيونك 😔 لو انت خبل🙌😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😎😎" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "مسوي عمليه لعيونك 😔 لو انت خبل🙌😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😎" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "مسوي عمليه لعيونك 😔 لو انت خبل🙌😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😴😴😴😴" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "رأح, دكـّــوم تـّــمس๋͜‏ـلّـ๋͜‏ـت ولي نأم 😹☹️😻  "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😴😴😴"  and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "رأح, دكـّــوم تـّــمس๋͜‏ـلّـ๋͜‏ـت ولي نأم 😹☹️😻  "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😴😴" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "رأح, دكـّــوم تـّــمس๋͜‏ـلّـ๋͜‏ـت ولي نأم 😹☹️😻  "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😴" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "رأح, دكـّــوم تـّــمس๋͜‏ـلّـ๋͜‏ـت ولي نأم 😹☹️😻  "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😽😽😽😽" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   " ﭑإ́وُف فديـٍَــت ﭑإ́لـپـــٰٰـوُﮨﮨﮨــهٰ⇣̉ـ  😻🙈🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😽😽😽" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   " ﭑإ́وُف فديـٍَــت ﭑإ́لـپـــٰٰـوُﮨﮨﮨــهٰ⇣̉ـ  😻🙈🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😽😽" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   " ﭑإ́وُف فديـٍَــت ﭑإ́لـپـــٰٰـوُﮨﮨﮨــهٰ⇣̉ـ  😻🙈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💋💋💋💋💋💋💋💋💋💋💋💋💋" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   " ﭑإ́وُف فديـٍَــت ﭑإ́لـپـــٰٰـوُﮨﮨﮨــهٰ⇣̉ـ  😻🙈🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😾😹" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "خاب ديلك😐😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😾" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "خاب ديلك😐"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💔" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ﭑإ́وُف ﭑإ́لـلــهٰ⇣̉ يـٍَﮩﮨﮨﮨـﭑإ́عـِِِِد قلـپـــٰٰـك 😢😞💋 "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💔💔" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ﭑإ́وُف ﭑإ́لـلــهٰ⇣̉ يـٍَﮩﮨﮨﮨـﭑإ́عـِِِِد قلـپـــٰٰـك 😢😞💋 "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💔💔💔" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ﭑإ́وُف ﭑإ́لـلــهٰ⇣̉ يـٍَﮩﮨﮨﮨـﭑإ́عـِِِِد قلـپـــٰٰـك 😢😞💋 "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💔💔💔💔" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ﭑإ́وُف ﭑإ́لـلــهٰ⇣̉ يـٍَﮩﮨﮨﮨـﭑإ́عـِِِِد قلـپـــٰٰـك 😢😞💋 "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="👄" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "قلبوشتي😻💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💙" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "عافيتي💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💜" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "يروحي😻💋انت"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="❤" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "يعمري😻 انت "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💚" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منور ابو كلب الاخضر😐😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💋💋💋💋" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "اوووف شنو هذا الحلك😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💋💋💋" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "اوووف شنو هذا الحلك😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💋💋" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "اوووف شنو هذا الحلك😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💋" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "اوووف شنو هذا الحلك😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙋" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "هلا حبعمري🙂❤️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙋🙋" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "هلا حبعمري❤️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙋🙋🙋" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "هلا حبعمري❤️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐕" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ها عمو شبيك🌝"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐆" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ولا يكعد راحه ابو صابر🌝😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐈" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "بشت بشت😐😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😘🌹" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "هلا حياتي عطرها🙂💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💚" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "هلا حياتي عطرها🙂💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🌝🌝🌝🌝" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شـﮫـۛالـٰٰ̲ضـِۛـوٰ୭ٰۛٳٲ  ۶"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🌝🌝🌝" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شـﮫـۛالـٰٰ̲ضـِۛـوٰ୭ٰۛٳٲ 💙 ۶"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🌝🌝" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شـﮫـۛالـٰٰ̲ضـِۛـوٰ୭ٰۛٳٲ 🌝 ۶"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🌝" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شـﮫـۛالـٰٰ̲ضـِۛـوٰ୭ٰۛٳٲ 🌝💙 ۶"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐍" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ماكو غيرك زاحف🙊🗯"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐍🐍" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ماكو غيرك زاحف🙊🗯"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐍🐍🐍" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ماكو غيرك زاحف🙊🗯"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐍🐍🐍🐍" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ماكو غيرك زاحف🙊🗯"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐅" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منور النجر🌝😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐅🐅" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منور النجر🌝😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐅🐅🐅" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   " منورالنجر "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🌺" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "عطرها حبي🌝💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🍁" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "عطرها حبي🌝💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💐" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "عطرها حبي🌝💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙄🙄🙄🙄" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شلگيت فوگ وتباوع🤔لو انت احول🙄💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙄🙄🙄" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شلگيت فوگ وتباوع🤔لو انت احول🙄"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙄🙄" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شلگيت فوگ وتباوع🤔لو انت احول🙄💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙄" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شلگيت فوگ وتباوع🤔لو انت احول💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="طه" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ﭑإ́لـــﻤ̉̉ـطوُر ﻤ̉̉ـﭑإ́لـــﺗـ͜͡ہــٍّـــِّي إ́لـــعـُُـﮨ́́ﮨ́ﮨق فديـٍّــتـِّـّٰٰ̐ـ͜͜͡ާـه \n@TAHAJ20"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="خليجي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ﭑإ́لـــﻤ̉̉ـطوُر ﻤ̉̉ـﭑإ́لـــﺗـ͜͡ہــٍّـــِّي إ́لـــعـُُـﮨ́́ﮨ́ﮨق فديـٍّــتـِّـّٰٰ̐ـ͜͜͡ާـه \n@TAHAJ20"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="خليجي صاك" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ﭑإ́لـــﻤ̉̉ـطوُر ﻤ̉̉ـﭑإ́لـــﺗـ͜͡ہــٍّـــِّي إ́لـــعـُُـﮨ́́ﮨ́ﮨق فديـٍّــتـِّـّٰٰ̐ـ͜͜͡ާـه \n@TAHAJ20"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="@TAHAJ20" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ﭑإ́لـــﻤ̉̉ـطوُر ﻤ̉̉ـﭑإ́لـــﺗـ͜͡ہــٍّـــِّي إ́لـــعـُُـﮨ́́ﮨ́ﮨق فديـٍّــتـِّـّٰٰ̐ـ͜͜͡ާـه \n@TAHAJ20"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اريد قناة" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "تفضل حياتي @TEAMSTORM"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="قناة" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "تفضل حياتي @TEAMSTORM"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اريد قناه" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "تفضل حياتي @TEAMSTORM"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="قناه" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "تفضل حياتي @TEAMSTORM"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="نرتبط" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ولك ما تبطل زحفك 😡😹 صارت قديمه ترا 😂🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="نكبل" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ولك ما تبطل زحفك 😡😹 صارت قديمه ترا 😂🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="عرفينا" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ولك ما تبطل زحفك 😡😹 صارت قديمه ترا 🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="نتعرف" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ولك ما تبطل زحفك 😡😹 صارت قديمه ترا 🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="نت منين" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شكو تزحف ولك 😹 خلوني بس اني ازحف 🙊😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="خلي نتعرف" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شكو تزحف ولك 😹😹 خلوني بس اني ازحف 🙊😹😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شسمك" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شكو تزحف ولك 😹😹 خلوني بس اني ازحف 😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="عرفنا" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شكو تزحف ولك 😹😹 خلوني بس اني ازحف 🙊😹😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="هاذا شنو" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لۧاٲ   مو بوت اقرا🙃 اسمي✨"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="يمكن بوت" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لۧاٲ   مو بوت اقرا🙃 اسمي✨"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اي بوت" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لۧاٲ   مو بوت😒 اقرا🙃 اسمي✨"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="هاذا بوت" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لۧاٲ   مو بوت😒 اقرا🙃 اسمي✨"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="وين البوت" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لۧاٲ   مو بوت😒 اقرا🙃 اسمي✨"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تعال نلعب" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "تعالو لعبو بمالي 😸😸"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تعاي نلعب" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "تعالو لعبو بمالي 😸😸"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="نلعب" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "تعالو لعبو بمالي 😸😸"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تلعبون" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "تعالو لعبو بمالي 😸😸"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🤔🤔🤔🤔" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ولا يكعد راحه اينشتاين الصغير 😂😂"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🤔🤔🤔" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ولا يكعد راحه اينشتاين الصغير 😂"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🤔🤔" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ولا يكعد راحه اينشتاين الصغير 😂😂"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🤔" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ولا يكعد راحه اينشتاين الصغير 😂"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🖕🖕🖕🖕" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "بحي هاذا لوفه وحطه فتيزك 😹😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🖕🖕🖕" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "بحي هاذا لوفه وحطه فتيزك 😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🖕🖕" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "بحي هاذا لوفه وحطه فتيزك 😹😹😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🖕" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "بحي هاذا لوفه وحطه فتيزك 😹😹😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💋💋💋💋" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فديتك حلكك بحي ☹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💋💋💋" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فديتك حلكك بحي ☹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💋💋" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فديتك حلكك بحي ☹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💋" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فديتك حلكك بحي ☹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تصبح عله خير" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "روح نام 😍😉 حياتي 😌 تصبح عله خير 💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="راح انام" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "روح نام 😍 حياتي  تصبح عله خير 💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="نعسان" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "روح نام 😍😉 حياتي 😌 تصبح عله خير 💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ت ع خ" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "روح نام 😍😉 حياتي  تصبح عله خير "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تصبحون عله خير" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "روح نام 😍😉 حياتي 😌 تصبح عله خير 💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تصبحي عله خير" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "روح نام 😍😉 حياتي 😌 تصبح عله خير 💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تصبحين عله خير" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "روح نام 😍😉 حياتي 😌 تصبح عله خير 💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="صباحووو" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "صباحو النور يا نور 😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="صباحو" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "صباحو النور يا نور 😻😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="صباحوو" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "صباحو النور يا نور 😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="صباح الخير" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "صباحو النور يا نور 😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="دوووم" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لله يديم انفاسك/ج "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="دووووم" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لله يديم انفاسك/ج 😇😚"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="دوم" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لله يديم انفاسك/ج 😇😚"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ددوم" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لله يديم انفاسك/ج 😇"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="دومك" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لله يديم انفاسك/ج 😇😚"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="دومج" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لله يديم انفاسك/ج 😇😚"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ادوم" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لله يديم انفاسك/ج 😇😚"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شونج" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "تمام وانت/ي شلونك/ج 😻🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شلونج" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "تمام وانت/ي شلونك/ج 😻🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شخبارج" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "تمام وانت/ي شلونك/ج 😻🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شلونجن" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "تمام وانت/ي شلونك/ج 😻🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ضايجه" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "حـٍبيبي ءّ🙍‍♂️💜 اركـ🕺🏻ـصلج🌚"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ضايجهه" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "حـٍبيبي ءّ🙍‍♂️💜 اركـ🕺🏻ـصلج"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="حيل ضايجه" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "حـٍبيبي ءّ🙍‍♂️💜 اركـ🕺🏻ـصلج🌚"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ضووجهه" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "حـٍبيبي ءّ🙍‍♂️💜 اركـ🕺🏻ـصلج"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ضوججه" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "حـٍبيبي ءّ‍♂️💜 اركـ💃ـصلك"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ضوجهه" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "حـٍبيبي ءّ🙍‍♂️💜 اركـ💃🏻ـصلك"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اروح" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "مٰٝـٍْ✋ۡـٍٰآ ترٰوۢۛඋ ،💛  احد لازمك🤦🏻‍♂️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اروحح" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "مٰٝـٍْ✋ۡـٍٰآ ترٰوۢۛඋ ،  احد لازمك🤦🏻‍♂️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="راح اروح" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "مٰٝـٍْ✋ۡـٍٰآ ترٰوۢۛඋ ،💛  احد لازمك🏻‍♂️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="رايح" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "مٰٝـٍْ✋ۡـٍٰآ ترٰوۢۛඋ ،💛  احد لازمك🤦🏻‍♂️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اجيييي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ﮪﮪﮧעّ ⁞⁞ُ͡‏   💗 بيك🚶🏻 حمبي 👻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اجي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ﮪﮪﮧעّ ⁞⁞ُ͡‏    بيك🚶🏻 حمبي "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اجييي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ﮪﮪﮧעّ ⁞⁞ُ͡‏   💗 بيك🚶🏻 حمبي 👻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ممكنن" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "أإآيٰٰ    تـٴِﮧ﴿🚶🏻﴾ۣـعالۂ͡†♩❥"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ممكن" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "أإآيٰٰ    تـٴِﮧ﴿🚶🏻﴾ۣـعالۂ͡†♩❥"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ببكن" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "أإآيٰٰ    تـٴِﮧ﴿🚶🏻﴾ۣـعالۂ͡†♩❥"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="مممكن" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "أإآيٰٰ    تـٴِﮧ﴿🚶🏻﴾ۣـعالۂ͡†♩❥"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ديييي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "يمشوك🐕 بيها🙊😹 حمبي"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="دييي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "يمشوك🐕 بيها🙊😹 حمبي"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ديي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "يمشوك🐕 بيها🙊😹 حمبي"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="دي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "يمشوك🐕 بيها🙊😹 حمبي"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="وليييي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "۽ﺈنجٰٓجٰٓہ͡‌ـبۂ 🌝 ٰٓ₎ פـٍـٍبيبي ءّ🙍‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ولييي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "۽ﺈنجٰٓجٰٓہ͡‌ـبۂ 🌝 ٰٓ₎ פـٍـٍبيبي ءّ🙍‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="وليي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "۽ﺈنجٰٓجٰٓہ͡‌ـبۂ 🌝 ٰٓ₎ פـٍـٍبيبي ءّ🙍‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ولي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "۽ﺈنجٰٓجٰٓہ͡‌ـبۂ 🌝 ٰٓ₎ פـٍـٍبيبي ءّ🙍‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="احبكك" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "بعد روحي واني احبكم هم بس لتزحفلي رجاا 😸😸"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ااحبك" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "بعد روحي واني احبكم هم بس لتزحفلي رجاا 😸😸💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="احبككك" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "بعد روحي واني احبكم هم بس لتزحفلي رجاا 😸😸💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="احبكم" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "بعد روحي واني احبكم هم بس لتزحفلي رجاا 😸😸💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اييييي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "يب قابل اغشكم 🙈🎈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اييي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "يب قابل اغشكم 🙈🎈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ايي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "يب قابل اغشكم 🎈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "يب قابل اغشكم 🙈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تعالو" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   " ما اروح المطورين مالتي ميقبلون "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تعالوو" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لا ما اروح المطورين مالتي ميقبلون🎈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تعالووو" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لا ما اروح المطورين مالتي ميقبلون😐🎈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تعالوووو" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لا ما اروح المطورين مالتي ميقبلون😐🎈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شبيك" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "مبينه شي سلامتك/ ج🎈😌"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شبيكم" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "مبينه شي سلامتك/ ج🎈😌"   storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شبيكك" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "مبينه شي سلامتك/ ج🎈😌"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شبيكمم" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "مبينه شي سلامتك/ ج🎈😌"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="جب" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "جب بخشـ👃🏻ـمك פـٍـٍبيبي ءّ🙍‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="انجب" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "جب بخشـ🏻ـمك פـٍـٍبيبي ءّ🙍‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="نجب" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "جب بخشـ👃🏻ـمك פـٍـٍبيبي ءّ🙍‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اانجب" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "جب بخشـ👃🏻ـمك פـٍـٍبيبي ءّ🙍‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="وين" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "• بٌِٰـﮧﮧأرِٰض اَٰلْٰلْٰهَٰہۧ اَٰلْٰـہوٍّاَٰسٌٍعٍِّـﮧهَٰہۧ😽💜ֆ"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="وينن" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "• بٌِٰـﮧﮧأرِٰض اَٰلْٰلْٰهَٰہۧ اَٰلْٰـہوٍّاَٰسٌٍعٍِّـﮧهَٰہۧ😽💜ֆ"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="وين تريد" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "• بٌِٰـﮧﮧأرِٰض اَٰلْٰلْٰهَٰہۧ اَٰلْٰـہوٍّاَٰسٌٍعٍِّـﮧهَٰہۧ😽💜ֆ"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ووين" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "• بٌِٰـﮧﮧأرِٰض اَٰلْٰلْٰهَٰہۧ اَٰلْٰـہوٍّاَٰسٌٍعٍِّـﮧهَٰہۧ😽💜ֆ"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="باييي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "لله وياكـ💙✨ يا • ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽🍯̯⁾ֆ‘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شلونكم" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "آلـْ ح ـمـِْدِّ اللّـٰھ وانٓــتــٰـہ/ي ࿐❥ 🌎🌸"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شلونك" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "آلـْ ح ـمـِْدِّ اللّـٰھ وانٓــتــٰـہ/ي ࿐❥ 🌎🌸"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شونك" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "آلـْ ح ـمـِْدِّ اللّـٰھ وانٓــتــٰـہ/ي ࿐❥ 🌎🌸"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شونكم" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "آلـْ ح ـمـِْدِّ اللّـٰھ وانٓــتــٰـہ/ي ࿐❥ 🌎"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="☹️☹️☹️☹️" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "شبيك متعصب حبي 😱😿 منو وياك 😿😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="☹️☹️☹️" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "شبيك متعصب حبي 😱😿 منو وياك 😿😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="☹️☹️" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "شبيك متعصب حبي 😱😿 منو وياك 😿😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="☹️" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "شبيك متعصب حبي 😱😿 منو وياك 😿😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙂🙂🙂🙂" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "اوف شهل الابتسامه احله من الكمر 😎😻😻😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙂😕😕😕" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "شكو عاوج حلكك😒😻😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙄🤞🏿" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "شبيك صافن على ايدك 😹😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙁💔" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "ضايج لئن كلبه مكسور 🙀😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙂✌️" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "مبتسم على وجهي 😌😹😹😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😹😹😹😹😹😹😹" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "انت شبيك تخبلت 😒😨😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😹😹😹😹😹😹😹😹😹" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "انت شبيك تخبلت 😒😨😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="بربك" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "ي وعلي ابو الحسن 😐"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="كلكم" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "ليش تجمع بحي اني بوت 😞💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="والرب" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "استغفر الله جنان كم مره كتلك لتحلف جذب😑🎈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="حقك" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "ي حقك حمبي اني وياك ضدهم😐🎈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اكلك يول" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "كول حبي بس لا تبول علينا 💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اكول" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "كول وفتح حلكك خل ابول 😸😸🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تعال" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ولي لك ليريدني هو يجيني 😸🌞"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="صوفي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فديته هاذا اخوي ابو الوكفات فديت ابنمي😍😍"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end 
if text =="شغال" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "❞ ءيہـ͜ާي ۶ـٰٰٰོۂٰٰٰٰٰزيہزيۂٰٰٰٰٰـﮯ بـہٰٖآﻗقــ͡ي ﯙأتۂـ͜مــٰཻدد 💕"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="فرخ" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "• ؤخـٰٰ͒ہر آﻧﮧـ͜ާۂٰٰٰٰٰي ڵہٰٰٖٖكي᪼᪳ـۂتہٰٖـﮫﮧٰٰٖٖ ۶ֆ كبلك"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="نصعد" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "مكالمهةة لو زرور 🐸🤘🏿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="وف" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "مو كتلج اريحج لتخافين 🌝💦"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اوي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "هاي تفله بعد ميعور حمبي 💦"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="كحبه" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "يب ادري بيها حته ناجها سويجد 😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="يوجع" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "حته ترتاحين يا عيني 😺"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ولو منا" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "ماولي اذا ما انيجكم 😼🤘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="الله" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "شبي خوما ضوجك خوما كللهم مايكل ناج هذا 🙀🙌🏻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="نيجه" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "تعال بعد عمك افتر وما تحس وي التفال 🐸💚"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="كول انجب" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "خايب ولي لاتفل بطيزك ينطيني اوامر الفرخ 🤘🏿🤡🤘🏿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="انكليزي" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =  "فاج يو ماين 😎"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="مرحبا" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   " مہٰ۪۫ږآحہٰ۪۫بہٰ۪۫ هلا بيك 💑"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="هلاوووووو" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "يههلا بيك نورتنا 💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="خرب" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "خرب وجهك حمتر لتكفر 🌞🌿 "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="سلام" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "يهلا حمبي نورت 💛😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="انت انجب" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "اي حمبي 😸 تعال فتح حلكك 😸💙"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="وين ولك" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "يم خالتك الشكره بن  الصاكه"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اكرهك" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شعور متبادل حبي"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تكرهني" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "شي اكيد احبك حياتي 😸💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اعشقك" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فيدوه اني هم عشقك😊😹🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شباب" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "كباب وتكه وسمج 😸💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ماريا" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ولك هاي الصاكه العشق هاي حبيبت المطور هاي 😸🙊😻😻️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😂😂😂😂😂😂" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "يضحك الفطير 😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😇" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "استريح بحي رايد شي 😹😹😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😖" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "دي وجهك معقد 😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😄" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "حيل فتح حلكك نوب 😹😹😘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😌🙂😌😌😌" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "فديت الغرور كله بحي"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😭😭😭😭😭" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "منو ويك حياتي بس كلي اله اهينه كدامك 😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😫" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ها بحي منو مضوجك "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="☻" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "عساس ثكيل العينتين تاليتك تزحفبل خاص 😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😠" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "طفه طفه 💦💦 تره حمه حيل"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😳🙂😳😳😳" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ها شفت/ي ابوك/ج مصلخ ونصدمت 😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😹😹😹😹😹😹😹😹😹😹😹😹😹" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "اضحك شكو عله كلبك ☹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙊🙊🙊🙊🙊" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "ها قردي شبيك مستحي 😂😂"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙈🙈🙈🙈🙈" and  not tahadevstorm:get('lock:reoly:bot'..msg.chat_id_) then taha =   "صار/ت قرد يعني خجلان ?😹😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end end
if text and text:match("^زخرفه (.*)$") and not text:match("^زخرفه ([%a%d%_]+)$") and not text:match("^زخرفه ([%a%d%_]+) ([%a%d%_]+)$") then
local taha = { string.match(text, "^(زخرفه) (.*)$") }
local b = taha[2] local  q = taha[2]  local  w = taha[2]  local  r = taha[2]  local  e = taha[2] local  t = taha[2]   local  c = taha[2] local  x = taha[2] local  z = taha[2]  local  l = taha[2]  local  k = taha[2] local  j = taha[2]  local  h = taha[2]  local  g = taha[2] local  f = taha[2]
local ta = { ' •💚 ', '🍿﴿', '•  ❥˓  ', '💝﴿ֆ', ' • 🐼🌿', ' •🙊💙', '-✨ ', ' 〄💖‘',' ⚡️💊', '- ⁽🌷', '🔥“', '💜💭', '', '🎩','“̯ 🐼💗 ', '🐝🍷','❥̚͢₎ 😍', '🌸‘', ' 💭💔ۦ', ' 💛💭ۦ', ' ⚡️🔱ۦ','℡ᴖ̈💜', '🌔☄️₎ۦ˛', '💥♩',' ☻🔥“ٰۦ', '℡ ̇ ✨🐯⇣✦', '⁞♩⁽💎🌩₎⇣✿','ۦٰ‏┋❥ ͢˓🦁💛ۦ‏', '⚡️♛ֆ₎', '♛⇣🐰☄️₎✦', '⁾⇣✿┊❥', ' ₎✿💥🎃 ⁞“❥', '😴🌸✿⇣', '❥┊⁽ ℡🦁🌸' } 
b = b:gsub('ا','آ') b = b:gsub("ب","بّہ") b = b:gsub("ت","تَہَٰ") b = b:gsub("ح","حہٰٰ") b = b:gsub("ج","جْۧ") b = b:gsub("خ","خٰ̐ہ") b = b:gsub("د","د") b = b:gsub("ذ","ذِ") b = b:gsub("ر","ر") b = b:gsub("ز","زَ") b = b:gsub("س","سٰٰٓ") b = b:gsub("ش","شِٰہٰٰ") b = b:gsub("ص","صۛہٰٰ") b = b:gsub("ض","ضۜہٰٰ") b = b:gsub("ظ","ظۗہٰٰ") b = b:gsub("غ","غہٰٰ") b = b:gsub("ف","ف͒ہٰٰ") b = b:gsub("ق","قྀ̲ہٰٰٰ") b = b:gsub("ك","ڪٰྀہٰٰٖ") b = b:gsub("ل","ل") b = b:gsub("ن","نَِٰہٰ") b = b:gsub("ه","ھہ") b = b:gsub("و","وِ") b = b:gsub("طۨہٰٰ","ط") b = b:gsub("ث","ثہٰٰ") b = b:gsub("ي","يِٰہ") b = b:gsub("ع","؏ۤـہٰٰ") q = q:gsub('ض', 'ضِـٰٚـ') q = q:gsub('ص', 'صِـٰٚـ') q = q:gsub('ث', 'ثِـٰٚـ') q = q:gsub('ق', 'قِـٰٚـ') q = q:gsub('ف', 'فِ͒ـٰٚـ') q = q:gsub('غ', 'غِـٰٚـ') q = q:gsub('ع', 'عِـٰٚـ') q = q:gsub('خ', 'خِ̐ـٰٚـ') q = q:gsub('ح', 'حِـٰٚـ') q = q:gsub('ج', 'جِـٰٚـِِـٰٚـِْ') q = q:gsub('ش', 'شِـٰٚـ') q = q:gsub('س', 'سِـٰٚـ') q = q:gsub('ي', 'يِـٰٚـ') q = q:gsub('ب', 'بِـٰٚـ') q = q:gsub('ل', 'لِـٰٚـ') q = q:gsub('ا', 'آ') q = q:gsub('ت', 'تِـٰٚـ') q = q:gsub('ن', 'نِـٰٚـ') q = q:gsub('م', 'مِـٰٚـ') q = q:gsub('ك', 'ڪِـٰٚـ') q = q:gsub('ط', 'طِـٰٚـ') q = q:gsub('ذ', 'ذِـٰٚـ') q = q:gsub('ظ', 'ظِـٰٚـ') q = q:gsub('ء', 'ء') q = q:gsub('ؤ', 'ؤ') q = q:gsub('ر', 'ر') q = q:gsub('ى', 'ى') q = q:gsub('ز', 'ز') q = q:gsub('ظ', 'ظِـٰٚـ') q = q:gsub('و', 'ﯛ̲୭') q = q:gsub("ه", "ۿۿہ")   w = w:gsub('ض', 'ض͜ـ')  w = w:gsub('ص', 'ص͜ـ')  w = w:gsub('ث', 'ث͜ـ͜ـ')  w = w:gsub('ق', 'ق͜ـ')  w = w:gsub('ف', 'ف͒͜ـ')  w = w:gsub('غ', 'غ͜ـ')  w = w:gsub('ع', 'ع͜ـ')  w = w:gsub('خ', 'خ̐͜ـ')  w = w:gsub('ح', 'ح͜ـ')  w = w:gsub('ج', 'ج͜ـ')  w = w:gsub('ش', 'ش͜ـ')  w = w:gsub('س', 'س͜ـ')  w = w:gsub('ي', 'ي͜ـ')  w = w:gsub('ب', 'ب͜ـ')  w = w:gsub('ل', 'ل͜ـ')  w = w:gsub('ا', 'آ')  w = w:gsub('ت', 'ت͜ـ')  w = w:gsub('ن', 'ن͜ـ')  w = w:gsub('م', 'م͜ـ')  w = w:gsub('ك', 'ڪ͜ـ')  w = w:gsub('ط', 'ط͜ـ')  w = w:gsub('ظ', 'ظ͜ـ')  w = w:gsub('ء', 'ء')  w = w:gsub('ؤ', 'ؤ')  w = w:gsub('ر', 'ر')  w = w:gsub('ى', 'ى')  w = w:gsub('ز', 'ز')  w = w:gsub('ظ', 'ظـ')  w = w:gsub('و', 'ﯛ̲୭')  w = w:gsub("ه", "ۿۿہ") e = e:gsub('ض', 'ضہ') e = e:gsub('ص', 'صہ') e = e:gsub('ث', 'ثہ') e = e:gsub('ق', 'قہ') e = e:gsub('ف', 'فہ') e = e:gsub('غ', 'غہ') e = e:gsub('ع', 'عہ') e = e:gsub('خ', 'خہ') e = e:gsub('ح', 'حہ') e = e:gsub('ج', 'جہ') e = e:gsub('ش', 'شہ') e = e:gsub('س', 'سہ') e = e:gsub('ي', 'يہ') e = e:gsub('ب', 'بہ') e = e:gsub('ل', 'ل') e = e:gsub('ا', 'آ') e = e:gsub('ت', 'تہ') e = e:gsub('ن', 'نہ') e = e:gsub('م', 'مہ') e = e:gsub('ك', 'كہ') e = e:gsub('ط', 'طہ') e = e:gsub('ظ', 'ظہ') e = e:gsub('ء', 'ء') e = e:gsub('ؤ', 'ؤ') e = e:gsub('ر', 'ر') e = e:gsub('ى', 'ى') e = e:gsub('ز', 'ز') e = e:gsub('و', 'ﯛ̲୭') e = e:gsub("ه", "ۿۿہ") t = t:gsub('ض', 'ضِٰــ') t = t:gsub('ص', 'صِٰــ') t = t:gsub('ث', 'ثِٰــ') t = t:gsub('ق', 'قِٰــ') t = t:gsub('ف', 'فِٰ͒ــ') t = t:gsub('غ', 'غِٰــ') t = t:gsub('ع', 'عِٰــ') t = t:gsub('خ', 'خِٰ̐ــ') t = t:gsub('ح', 'حِٰــ') t = t:gsub('ج', 'جِٰــ') t = t:gsub('ش', 'شِٰــ') t = t:gsub('س', 'سِٰــ') t = t:gsub('ي', 'يِٰــ') t = t:gsub('ب', 'بِٰــ') t = t:gsub('ل', 'لِٰــ') t = t:gsub('ا', 'آ') t = t:gsub('ت', 'تِٰــ') t = t:gsub('ن', 'نِٰــ') t = t:gsub('م', 'مِٰــ') t = t:gsub('ك', 'ڪِٰــ') t = t:gsub('ط', 'طِٰــ') t = t:gsub('ظ', 'ظِٰــ') t = t:gsub('ء', 'ء') t = t:gsub('ؤ', 'ؤ') t = t:gsub('ر', 'ر') t = t:gsub('ى', 'ى') t = t:gsub('ز', 'ز') t = t:gsub('و', 'ﯛ̲୭') t = t:gsub("ه", "໋۠هہؚ")
local test = [[ 
✨┇اهـٰٰٖـَلُآ بـٌْℋــ☃︎ـك حيـٍّْ🄴ٰـﭑتـٰٖۧـٰٰٰٖٖٖۧـ๋͜يَ 🧡🤤)⇣℡⇓ 

☑️┇اضـﹻٰ۫ـغۂٰ۫طﹻٰ۫ﹻۧ عۂ͜ާـلـى ﺂلاسـٰ̲م لـَ͢يـٖۧتم نسُـٰٚـُخـﹻٰ۫ﹻۧهۂٰ۫،🕊🍭

┈┉━━┉ ☬ ┉━━┉┄

*1 •* `]]..b..[[]]..ta[math.random(#ta)]..[[`
---------------------------------
*2 •* `]]..q..[[]]..ta[math.random(#ta)]..[[`
---------------------------------
*3 •* `]]..w..[[]]..ta[math.random(#ta)]..[[`
---------------------------------
*4 •* `]]..e..[[]]..ta[math.random(#ta)]..[[`
---------------------------------
*5 •* `]]..t..[[]]..ta[math.random(#ta)]..[[`

◂⠀━━━━ 🖤 ━━━━⠀▸
📡┊ @VI_P2
]]
storm_sendMsg( msg.chat_id_, msg.id_, 1, test, 1, "md") end
if text and text:match("^زخرفه (.+)$") and not text:match("^زخرفه ([%ج%ح%خ%ه%ع%غ%ف%ق%ث%ص%ض%ط%ك%م%ن%ت%ا%ل%ب%ي%س%ش%ة%و%ر%ز%ژ%د%ذ%ظ%ؤ%ء%ئ%ى%پ%إ%آ%ء%گ%_]+)$") and not text:match("^زخرفه ([%ج%ح%خ%ه%ع%غ%ف%ق%ث%ص%ض%ط%ك%م%ن%ت%ا%ل%ب%ي%س%ش%ة%و%ر%ز%ژ%د%ذ%ظ%ؤ%ء%ئ%ى%پ%إ%آ%ء%گ%_]+) ([%ج%ح%خ%ه%ع%غ%ف%ق%ث%ص%ض%ط%ك%م%ن%ت%ا%ل%ب%ي%س%ش%ة%و%ر%ز%ژ%د%ذ%ظ%ؤ%ء%ئ%ى%پ%إ%آ%ء%گ%_]+)$") then
local taha = { string.match(text, "^(زخرفه) (.+)$") }
local b = taha[2] local  s = taha[2]  local  t = taha[2]  local  m = taha[2]  local  n = taha[2] local  v = taha[2]   local  c = taha[2] local  x = taha[2] local  z = taha[2]  local  l = taha[2]  local  k = taha[2] local  j = taha[2]  local  h = taha[2]  local  g = taha[2] local  f = taha[2]
local ta = { ' •🔥✨ ', '🔅🔥﴿', '•  ❥˓  ', '💝﴿ֆ', ' • 🐼🌿', ' •🙊💙', '-🐥✨ ', ' 〄😻‘',' ⚡️', '- ⁽🌷', '🔥“', '💭', '', '🎩🍿','“̯ 🐼💗 ', '🐝🍷','❥̚͢₎ 🐣', '👄‘', ' 💭ۦ', ' 💛💭ۦ', ' ⚡️ۦ','℡ᴖ̈', '💋☄️₎ۦ˛', '♩',' ☻🔥“ٰۦ', '℡ ̇ ✨🐯⇣✦', '⁞♩⁽💎🌩₎⇣✿','ۦٰ‏┋❥ ͢˓🦁💛ۦ‏', '⚡️♛ֆ₎', '♛⇣🐰☄️₎✦', '⁾⇣✿💖┊❥', ' ₎✿🎃 ⁞“❥', '😴✿⇣', '❥┊⁽ ℡🦁' }
b = b:gsub('a', 'ᴀ') b = b:gsub('b', 'ʙ') b = b:gsub('c', 'ᴄ') b = b:gsub('d', 'ᴅ') b = b:gsub('e', 'ᴇ') b = b:gsub('f', 'ᴈ') b = b:gsub('g', 'ɢ') b = b:gsub('h', 'ʜ') b = b:gsub('i', 'ɪ') b = b:gsub('j', 'ᴊ') b = b:gsub('k', 'ᴋ') b = b:gsub('l', 'ʟ') b = b:gsub('m', 'ᴍ') b = b:gsub('n', 'ɴ') b = b:gsub('o', 'ᴏ') b = b:gsub('p', 'ᴘ') b = b:gsub('q', 'ᴓ') b = b:gsub('r', 'ʀ') b = b:gsub('s', 'ᴤ') b = b:gsub('t', 'ᴛ') b = b:gsub('u', 'ᴜ') b = b:gsub('v', 'ᴠ') b = b:gsub('w', 'ᴡ') b = b:gsub('x', 'ᴥ') b = b:gsub('y', 'ʏ') b = b:gsub('z', 'ᴢ') t = t:gsub('a','ᗩ') t = t:gsub('A','ᗩ') t = t:gsub("b","ᗷ") t = t:gsub("B","ᗷ") t = t:gsub("c","ᑕ") t = t:gsub("C","ᑕ") t = t:gsub("d","ᗪ") t = t:gsub("D","ᗪ") t = t:gsub("e","E") t = t:gsub("E","E") t = t:gsub("f","ᖴ") t = t:gsub("F","ᖴ") t = t:gsub("g","G") t = t:gsub("G","G") t = t:gsub("h","ᕼ") t = t:gsub("H","ᕼ") t = t:gsub("i","I") t = t:gsub("I","I") t = t:gsub("j","ᒍ") t = t:gsub("J","ᒍ") t = t:gsub("k","K") t = t:gsub("K","K") t = t:gsub("l","ᒪ") t = t:gsub("L","ᒪ") t = t:gsub("m","ᗰ") t = t:gsub("M","ᗰ") t = t:gsub("n","ᑎ") t = t:gsub("N","ᑎ") t = t:gsub("o","O") t = t:gsub("O","O") t = t:gsub("p","ᑭ") t = t:gsub("P","ᑭ") t = t:gsub("q","ᑫ") t = t:gsub("Q","ᑫ") t = t:gsub("r","ᖇ") t = t:gsub("R","ᖇ") t = t:gsub("s","ᔕ") t = t:gsub("S","ᔕ") t = t:gsub("t","T") t = t:gsub("T","T") t = t:gsub("u","ᑌ") t = t:gsub("U","ᑌ") t = t:gsub("v","ᐯ") t = t:gsub("V","ᐯ") t = t:gsub("w","ᗯ") t = t:gsub("x","᙭") t = t:gsub("y","Y") t = t:gsub("z","ᘔ") s = s:gsub('a', '🄰') s = s:gsub('b', '🄱') s = s:gsub('c', '🄲') s = s:gsub('d', '🄳') s = s:gsub('e', '🄴') s = s:gsub('f', '🄵') s = s:gsub('g', '🄶') s = s:gsub('h', '🄷') s = s:gsub('i', '🄸') s = s:gsub('j', '🄹') s = s:gsub('k', '🄺') s = s:gsub('l', '🄻') s = s:gsub('m', '🄼') s = s:gsub('n', '🄽') s = s:gsub('o', '🄾') s = s:gsub('p', '🄿') s = s:gsub('q', '🅀') s = s:gsub('r', '🅁') s = s:gsub('s', '🅂') s = s:gsub('t', '🅃') s = s:gsub('u', '🅄') s = s:gsub('v', '🅅') s = s:gsub('w', '🅆') s = s:gsub('x', '🅇') s = s:gsub('y', '🅈') s = s:gsub('z', '🅉') m = m:gsub('a', '̅α')  m = m:gsub('b', '̅в')  m = m:gsub('c', '̅c')  m = m:gsub('d', '̅ɒ')  m = m:gsub('e', '̅є')  m = m:gsub('f', '̅f')  m = m:gsub('g', '̅ɢ')  m = m:gsub('h', '̅н')  m = m:gsub('i', '̅ɪ')  m = m:gsub('j', '̅ᴊ')  m = m:gsub('k', '̅ĸ')  m = m:gsub('l', '̅ℓ')  m = m:gsub('m', '̅м')  m = m:gsub('n', '̅и')  m = m:gsub('o', '̅σ')  m = m:gsub('p', '̅ρ')  m = m:gsub('q', '̅q')  m = m:gsub('r', '̅я')  m = m:gsub('s', '̅s')  m = m:gsub('t', '̅τ')  m = m:gsub('u', '̅υ')  m = m:gsub('v', '̅v')  m = m:gsub('w', '̅ω')  m = m:gsub('x', '̅x')  m = m:gsub('y', '̅y')  m = m:gsub('z', '̅z') n = n:gsub('a', '۰۪۫A۪۫۰') n = n:gsub('b', '۰۪۫B۪۫۰') n = n:gsub('c', '۰۪۫C۪۫۰') n = n:gsub('d', '۰۪۫D۪۫۰') n = n:gsub('e', '۰۪۫E۪۫۰') n = n:gsub('f', '۰۪۫F۪۫۰') n = n:gsub('g', '۰۪۫G۪۫۰') n = n:gsub('h', '۰۪۫H۪۫۰') n = n:gsub('i', '۰۪۫I۪۫۰') n = n:gsub('j', '۰۪۫J۪۫۰') n = n:gsub('k', '۰۪۫K۪۫۰') n = n:gsub('l', '۰۪۫L۪۫۰') n = n:gsub('m', '۰۪۫M۪۫۰') n = n:gsub('n', '۰۪۫N۪۫۰') n = n:gsub('o', '۰۪۫O۪۫۰') n = n:gsub('p', '۰۪۫P۪۫۰') n = n:gsub('q', '۰۪۫Q۪۫۰') n = n:gsub('r', '۰۪۫R۪۫۰') n = n:gsub('s', '۰۪۫S۪۫۰') n = n:gsub('t', '۰۪۫T۪۫۰') n = n:gsub('u', '۰۪۫U۪۫۰') n = n:gsub('v', '۰۪۫V۪۫۰') n = n:gsub('w', '۰۪۫W۪۫۰') n = n:gsub('x', '۰۪۫X۪۫۰') n = n:gsub('y', '۰۪۫Y۪۫۰') n = n:gsub('z', '۰۪۫Z۪۫۰') v = v:gsub('a', 'λ') v = v:gsub('b', 'ß') v = v:gsub('c', 'Ȼ') v = v:gsub('d', 'ɖ') v = v:gsub('e', 'ε') v = v:gsub('f', 'ʃ') v = v:gsub('g', 'Ģ') v = v:gsub('h', 'ħ') v = v:gsub('i', 'ί') v = v:gsub('j', 'ĵ') v = v:gsub('k', 'κ') v = v:gsub('l', 'ι') v = v:gsub('m', 'ɱ') v = v:gsub('n', 'ɴ') v = v:gsub('o', 'Θ') v = v:gsub('p', 'ρ') v = v:gsub('q', 'ƣ') v = v:gsub('r', 'ર') v = v:gsub('s', 'Ș') v = v:gsub('t', 'τ') v = v:gsub('u', 'Ʋ') v = v:gsub('v', 'ν') v = v:gsub('w', 'ώ') v = v:gsub('x', 'Χ') v = v:gsub('y', 'ϓ') v = v:gsub('z', 'Հ')  c = c:gsub('a', 'Ａ') c = c:gsub('b', 'Ｂ') c = c:gsub('c', 'Ｃ') c = c:gsub('d', 'Ｄ') c = c:gsub('e', 'Ｅ') c = c:gsub('f', 'Ｆ') c = c:gsub('g', 'Ｇ') c = c:gsub('h', 'Ｈ') c = c:gsub('i', 'Ｉ') c = c:gsub('j', 'Ｊ') c = c:gsub('k', 'Ｋ') c = c:gsub('l', 'Ｌ') c = c:gsub('m', 'Ｍ') c = c:gsub('n', 'Ｎ') c = c:gsub('o', 'Ｏ') c = c:gsub('p', 'Ｐ') c = c:gsub('q', 'Ｑ') c = c:gsub('r', 'Ｒ') c = c:gsub('s', 'Ｓ') c = c:gsub('t', 'Ｔ') c = c:gsub('u', 'Ｕ') c = c:gsub('v', 'Ｖ') c = c:gsub('w', 'Ｗ') c = c:gsub('x', 'Ｘ') c = c:gsub('y', 'Ｙ') c = c:gsub('z', 'Ｚ') x = x:gsub('a', 'ᴬ') x = x:gsub('b', 'ᴮ') x = x:gsub('c', 'ᶜ') x = x:gsub('d', 'ᴰ') x = x:gsub('e', 'ᴱ') x = x:gsub('f', 'ᶠ') x = x:gsub('g', 'ᴳ') x = x:gsub('h', 'ᴴ') x = x:gsub('i', 'ᴵ') x = x:gsub('j', 'ᴶ') x = x:gsub('k', 'ᴷ') x = x:gsub('l', 'ᴸ') x = x:gsub('m', 'ᴹ') x = x:gsub('n', 'ᴺ') x = x:gsub('o', 'ᴼ') x = x:gsub('p', 'ᴾ') x = x:gsub('q', 'ᵠ') x = x:gsub('r', 'ᴿ') x = x:gsub('s', 'ˁ') x = x:gsub('t', 'ᵀ') x = x:gsub('u', 'ᵁ') x = x:gsub('v', 'ᵛ') x = x:gsub('w', 'ᵂ') x = x:gsub('x', 'ˣ') x = x:gsub('y', 'ʸ') x = x:gsub('z', 'ᶻ') z = z:gsub('a', 'ᾋ') z = z:gsub('b', 'ϐ') z = z:gsub('c', 'Ƈ') z = z:gsub('d', 'Ɖ') z = z:gsub('e', 'Ἕ') z = z:gsub('f', 'Ғ') z = z:gsub('g', 'Ɠ') z = z:gsub('h', 'Ἤ') z = z:gsub('i', 'Ἷ') z = z:gsub('j', 'Ј') z = z:gsub('k', 'Ḱ') z = z:gsub('l', 'Ŀ') z = z:gsub('m', 'Ṃ') z = z:gsub('n', 'Ɲ') z = z:gsub('o', 'Ὃ') z = z:gsub('p', 'Ƥ') z = z:gsub('q', 'Q') z = z:gsub('r', 'Ȓ') z = z:gsub('s', 'Ṩ') z = z:gsub('t', 'Ҭ') z = z:gsub('u', 'Ȗ') z = z:gsub('v', 'V') z = z:gsub('w', 'Ẃ') z = z:gsub('x', 'Ẋ') z = z:gsub('y', 'Ὓ') z = z:gsub('z', 'Ẕ') l = l:gsub('a', '[̲̅a̲̅]') l = l:gsub('b', '[̲̅b̲̅]') l = l:gsub('c', '[̲̅c̲̅]') l = l:gsub('d', '[̲̅d̲̅]') l = l:gsub('e', '[̲̅e̲̅]') l = l:gsub('f', '[̲̅f̲̅]') l = l:gsub('g', '[̲̅g̲̅]') l = l:gsub('h', '[̲̅h̲̅]') l = l:gsub('i', '[̲̅i̲̅]') l = l:gsub('j', '[̲̅j̲̅]') l = l:gsub('k', '[̲̅k̲̅]') l = l:gsub('l', '[̲̅l̲̅]') l = l:gsub('m', '[̲̅m̲̅]') l = l:gsub('n', '[̲̅n̲̅]') l = l:gsub('o', '[̲̅o̲̅]') l = l:gsub('p', '[̲̅p̲̅]') l = l:gsub('q', '[̲̅q̲̅]') l = l:gsub('r', '[̲̅r̲̅]') l = l:gsub('s', '[̲̅s̲̅]') l = l:gsub('t', '[̲̅t̲̅]') l = l:gsub('u', '[̲̅u̲̅]') l = l:gsub('v', '[̲̅v̲̅]') l = l:gsub('w', '[̲̅w̲̅]') l = l:gsub('x', '[̲̅x̲̅]') l = l:gsub('y', '[̲̅y̲̅]') l = l:gsub('z', 'z') k = k:gsub('a', 'ɑ̃̾') k = k:gsub('b', 'в̃̾') k = k:gsub('c', 'c̃̾') k = k:gsub('d', 'd̃̾') k = k:gsub('e', 'ǝ̃̾') k = k:gsub('f', 'г̵̵') k = k:gsub('g', 'G̃̾') k = k:gsub('h', 'н̃̾') k = k:gsub('i', 'ı̃̾') k = k:gsub('j', 'τ̃̾') k = k:gsub('k', 'к̃̾') k = k:gsub('l', 'l̃̾') k = k:gsub('m', 'м̃̾') k = k:gsub('n', 'и̃̾') k = k:gsub('o', 'σ̃̾') k = k:gsub('p', 'ρ̃̾') k = k:gsub('q', 'Q̃̾') k = k:gsub('r', 'я̃̾') k = k:gsub('s', 'ƨ̃̾') k = k:gsub('t', 'т̃̾') k = k:gsub('u', 'υ̃̾') k = k:gsub('v', 'ν̃̾') k = k:gsub('w', 'ω̃̾') k = k:gsub('x', 'x̃̾') k = k:gsub('y', 'ч̃̾') k = k:gsub('z', 'z̃̾') j = j:gsub('a', 'ɑ̝̚') j = j:gsub('b', 'в̝̚') j = j:gsub('c', 'c̝̚') j = j:gsub('d', 'd̝̚') j = j:gsub('e', 'ǝ̝̚') j = j:gsub('f', 'г̵̵') j = j:gsub('g', 'G̝̚') j = j:gsub('h', 'н̝̚') j = j:gsub('i', 'ı̝̚') j = j:gsub('j', 'τ') j = j:gsub('k', 'к̝') j = j:gsub('l', 'l̝̚') j = j:gsub('m', 'м̝̚') j = j:gsub('n', 'и̝̚') j = j:gsub('o', 'σ̝̚') j = j:gsub('p', 'ρ̝̚') j = j:gsub('q', 'Q̝̚') j = j:gsub('r', 'я̝̚') j = j:gsub('s', 'ƨ̝̚') j = j:gsub('t', 'т̝̚') j = j:gsub('u', 'υ̝̚') j = j:gsub('v', 'ν̝̚') j = j:gsub('w', 'ω̝̚') j = j:gsub('x', 'x̝̚') j = j:gsub('y', 'ч̝̚') j = j:gsub('z', 'z̝̚') h = h:gsub('a', 'ค') h = h:gsub('b', '๒') h = h:gsub('c', 'ς') h = h:gsub('d', '๔') h = h:gsub('e', 'є') h = h:gsub('f', 'Ŧ') h = h:gsub('g', 'g') h = h:gsub('h', 'ђ') h = h:gsub('i', 'เ') h = h:gsub('j', 'ן') h = h:gsub('k', 'к') h = h:gsub('l', 'l') h = h:gsub('m', '๓') h = h:gsub('n', 'ภ') h = h:gsub('o', '๏') h = h:gsub('p', 'ק') h = h:gsub('q', 'ợ') h = h:gsub('r', 'г') h = h:gsub('s', 'ร') h = h:gsub('t', 't') h = h:gsub('u', 'ย') h = h:gsub('v', 'ש') h = h:gsub('w', 'ฬ') h = h:gsub('x', 'א') h = h:gsub('y', 'ץ') h = h:gsub('z', 'z')  g = g:gsub('a', 'Á') g = g:gsub('b', 'ß') g = g:gsub('c', 'Č') g = g:gsub('d', 'Ď') g = g:gsub('e', 'Ĕ') g = g:gsub('f', 'Ŧ') g = g:gsub('g', 'Ğ') g = g:gsub('h', 'Ĥ') g = g:gsub('i', 'Ĩ') g = g:gsub('j', 'Ĵ') g = g:gsub('k', 'Ķ') g = g:gsub('l', 'Ĺ') g = g:gsub('m', 'M') g = g:gsub('n', 'Ń') g = g:gsub('o', 'Ő') g = g:gsub('p', 'P') g = g:gsub('q', 'Q') g = g:gsub('r', 'Ŕ') g = g:gsub('s', 'Ś') g = g:gsub('t', 'Ť') g = g:gsub('u', 'Ú') g = g:gsub('v', 'V') g = g:gsub('w', 'Ŵ') g = g:gsub('x', 'Ж') g = g:gsub('y', 'Ŷ') g = g:gsub('z', 'Ź') 
local test = [[ 
✨┇اهـٰٰٖـَلُآ بـٌْℋــ☃︎ـك حيـٍّْ🄴ٰـﭑتـٰٖۧـٰٰٰٖٖٖۧـ๋͜يَ 🧡🤤)⇣℡⇓ 

☑️┇اضـﹻٰ۫ـغۂٰ۫طﹻٰ۫ﹻۧ عۂ͜ާـلـى ﺂلاسـٰ̲م لـَ͢يـٖۧتم نسُـٰٚـُخـﹻٰ۫ﹻۧهۂٰ۫،🕊🍭
┈┉━━┉ ☬ ┉━━┉┄

*1 •* `]]..b..[[]]..ta[math.random(#ta)]..[[`
---------------------------------
*2 •* `]]..m..[[]]..ta[math.random(#ta)]..[[`
---------------------------------
*3 •* `]]..n..[[]]..ta[math.random(#ta)]..[[`
---------------------------------
*4 •* `]]..v..[[]]..ta[math.random(#ta)]..[[`
---------------------------------
*5 •* `]]..c..[[]]..ta[math.random(#ta)]..[[`
---------------------------------
*6 •* `]]..x..[[]]..ta[math.random(#ta)]..[[`
---------------------------------
*7 •* `]]..z..[[]]..ta[math.random(#ta)]..[[`
---------------------------------
*8 •* `]]..l..[[]]..ta[math.random(#ta)]..[[`
---------------------------------
*9 •* `]]..k..[[]]..ta[math.random(#ta)]..[[`
---------------------------------
*10 •* `]]..j..[[]]..ta[math.random(#ta)]..[[`
---------------------------------
*11 •* `]]..h..[[]]..ta[math.random(#ta)]..[[`
---------------------------------
*12 •* `]]..g..[[]]..ta[math.random(#ta)]..[[`
---------------------------------
*13 •* `]]..s..[[]]..ta[math.random(#ta)]..[[`
---------------------------------
*14 •* `]]..t..[[]]..ta[math.random(#ta)]..[[`

◂⠀━━━━ 🖤 ━━━━⠀▸
📡┊ @VI_P2
]]
storm_sendMsg( msg.chat_id_, msg.id_, 1, test, 1, "md") end
if chat_type == 'super' then if text == "id" then
function id_by_reply(extra, result, success) storm_sendMsg(msg.chat_id_, msg.id_, 1, '<b>📫 • ايديه </b> : [ <code>'..result.sender_user_id_..'</code> ]', 1, 'html') end  if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),id_by_reply) end end
if text == ("ايدي") and msg.reply_to_message_id_ == 0 then function getmepar(extra,result,success)  username = '@'..(result.username_ or 'ماكو معرف ❌')..''  local name = tahadevstorm:hget('gps:settings:'..msg.sender_user_id_ ,"setnameid")  if not name then   function setname(extra,result,success)  snm = result.first_name_  tahadevstorm:hset('gps:settings:'..msg.sender_user_id_ ,"setnameid" , snm)  end   getUser(msg.sender_user_id_,setname)  name = tahadevstorm:hget('gps:settings:'..msg.sender_user_id_ ,"setnameid") or '...'  end  local msgtaha = 357   local msggstaha = tahadevstorm:get('user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) or 0   local nupmsgg =  tonumber((msggstaha / msgtaha) * 100)    local  tahah = 1   for k,v in pairs(tahadevstorm:hkeys("user:messages"..msg.chat_id_..":*")) do   if tahadevstorm:get("user:messages"..msg.chat_id_":"..v) > tahah then   tahah = tahadevstorm:get("user:messages"..msg.chat_id_":"..v)  end  end  local msguser = tonumber(tahadevstorm:get('user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) or 1)  local gmsgs = tahadevstorm:get('groupmsg:'..msg.chat_id_..':')  local function getpro(extra, result, success)  if result.photos_[0] then if is_devtaha(msg) then t = 'مطور اساسي ♨'  elseif is_sudo(msg) then t = 'مطور 💥'  elseif is_owner(msg) then t = 'المنشئ 💥'  elseif is_monsh(msg) then t = 'المدير ✨'     elseif is_mod(msg) then t = 'ادمن الكروب 👮'  elseif is_vipgroups(msg) then t = 'مميز عام ✨'  elseif is_vipgroup(msg) then t = 'مميز 🎫'   else t = 'مجرد عضو 🙌'   end if not tahadevstorm:get('lock:id'..msg.chat_id_) then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,'\n🚸 ❯ ايديك  ( '..msg.sender_user_id_..' )\n📯 ❯ معرفك ( '..username..' )\n♨ ❯ موقعك ( '..t..' )\n💠 ❯ تفاعلك ( '..formsgg(msguser)..' )\n📇 ❯ رسائلك ( '..msguser..' )\n📈 ❯ نسبه تفاعلك ( '..string.sub(nupmsgg, 1,5)..' % )\n📷 ❯ عدد صورك ( '..result.total_count_..' )\n', 1, 'md')  else if is_devtaha(msg) then t = 'مطور اساسي ♨'  elseif is_sudo(msg) then t = 'مطور 💥'  elseif is_owner(msg) then t = 'المنشئ 📬'  elseif is_monsh(msg) then t = 'المدير ✨'     elseif is_mod(msg) then t = 'ادمن الكروب 👮'  elseif is_vipgroups(msg) then t = 'مميز عام ✨'  elseif is_vipgroup(msg) then t = 'مميز 🚸'   else t = 'مجرد عضو 😂'   end
storm_sendMsg(msg.chat_id_, msg.id_, 1, '\n💠┊ الكروب ( <b>'..msg.chat_id_:gsub('-100','')..'</b> )\n🏅┊ ايديك  ( <b>'..msg.sender_user_id_..'</b> )\n📇┊ رسـائـلـك ( <b>'..gmsgs..'</b> )\n♻┊ معرفك ( '..username..' )\n📨┊ رسائلك ( <b>'..msguser..'</b> )\n💠┊ تفاعلك ( '..formsgg(msguser)..')\n🚀┊نسبه تفاعلك  ( <b>'..string.sub(nupmsgg, 1,5)..' %</b>)\n📑┊ اسمك  ( <code>'..name..'</code> )', 1, 'html')  end else
storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌┊ انت لا تمتلك صوره في حسابك \n💠┊ الكروب ( <b>'..msg.chat_id_:gsub('-100','')..'</b> )\n🏅┊ ايديك  ( <b>'..msg.sender_user_id_..'</b> )\n📓┊ رسائلك ( <b>'..gmsgs..'</b> )\n♻┊ معرفك ( '..username..' )\n📨┊ رسائلك ( <b>'..msguser..'</b> )\n💠┊ تفاعلك ( '..formsgg(msguser)..')\n📇┊نسبه تفاعلك  ( <b>'..string.sub(nupmsgg, 1,5)..' %</b>)\n🏇┊ اسمك  ( <code>'..name..'</code> )', 1, 'html')  end  end  tdcli_function ({    ID = "GetUserProfilePhotos",    user_id_ = msg.sender_user_id_,    offset_ = 0,    limit_ = 1  }, getpro, nil) end  getUser(msg.sender_user_id_, getmepar)  end
if text and text:match("^الرتبه$") and msg.reply_to_message_id_ ~= 0 then  function id_by_reply(extra, result, success) if result.id_ then if is_devtaha(result) then t = 'مطور اساسي 🕹' elseif is_sudo(result) then t = 'المطور ✨'  elseif is_owner(result) then t = 'المنشئ 📬' elseif is_monsh(result) then t = 'المير ✨' elseif is_mod(result) then t = 'ادمن الكروب 👮' elseif is_vipgroups(result) then t = ' مميز عام 💢' elseif is_vipgroup(result) then t = 'مميز 🚸'  else t = 'مجرد عضو 🙌' end  end  local msgss = tonumber(tahadevstorm:get('user:messages:'..msg.chat_id_..':'..result.sender_user_id_) or 0)  local msgtaha = 357 local msggstaha = tahadevstorm:get('user:messages:'..msg.chat_id_..':'..result.sender_user_id_) or 0  local nupmsgg =  tonumber((msggstaha / msgtaha) * 100)  local  tahah = 1  for k,v in pairs(tahadevstorm:hkeys("user:messages"..msg.chat_id_..":*")) do if tahadevstorm:get("user:messages"..msg.chat_id_":"..v) > tahah then  tahah = tahadevstorm:get("user:messages"..msg.chat_id_":"..v) end end text = '🚸 ❯ اهلا بك في معلوماته ❮ 🚸 \n<code>﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎</code>\n🎮￤ ايديه  <b>{ '..result.sender_user_id_..' }</b>\n📯￤رتبته <b>{ '..t..' }</b>\n📇￤ رسايله <b>{ '..(tahadevstorm:get('user:messages:'..msg.chat_id_..':'..result.sender_user_id_) or 0)..' }</b>\n📮￤ نسبه تفاعله <b>{ '..string.sub(nupmsgg, 1,5)..'% }</b>\n♻￤ تفاعله { '..formsgg(msgss)..' }\n🚀￤ معرفه <b>{</b> '..storm_get_user(result.sender_user_id_)..' <b>}</b>\n🎳￤ اسمه  {<code> '..storm_get_name(result.sender_user_id_)..' </code>}\n<code>﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎</code>\n📮 ❯ المطور @'..sudouser..''
storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'html') end getMessage(msg.chat_id_, msg.reply_to_message_id_,id_by_reply) end end end 
function tdcli_update_callback(data) if (data.ID == "UpdateNewMessage") then   STORM(data.message_,data) elseif data.ID == 'UpdateMessageEdited' then  local function edited_cb(extra,result,success)   if not is_mod(result) and not is_vipgroup(result) and not is_vipgroups(result) and tahadevstorm:get('edit:Lock:'..data.chat_id_) == "lock" then delete_msg(data.chat_id_,{[0] = data.message_id_}) end    STORM(result,data)  end   tdcli_function ({   ID = "GetMessage", chat_id_ = data.chat_id_,   message_id_ = data.message_id_    }, edited_cb, nil)  elseif (data.ID == "UpdateOption" and data.name_ == "my_id") then  tdcli_function ({     ID="GetChats",    offset_order_="9223372036854775807",    offset_chat_id_=0,  limit_=20  }, dl_cb, nil) end end
