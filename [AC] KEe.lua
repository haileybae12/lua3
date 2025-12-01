local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local char = Player.Character

local gPlayers = game:GetService("Players")
local admin = gPlayers.LocalPlayer.Name

local services={}
local cmds={}
local std={}

local Version = '2.1'

wait(0.1)

services.players=gPlayers
services.lighting=game:GetService('Lighting')
services.workspace=game:GetService('Workspace')
services.events = {}
local user = gPlayers.LocalPlayer

local cmdprefix=';'
local scriptprefix='\\'
local split=" "

--| Tables |--

--| Admins |--

local AdminFolder = Instance.new("Folder", game.ContextActionService)
AdminFolder.Name = "AdminList"
AdminFolder.RobloxLocked = true
_G.Admin = function(Admin)
	local SValue = Instance.new("StringValue", AdminFolder)
	SValue.Value = Admin
	SValue.RobloxLocked = true
end

-- These are my friends that don't have Seven, remove then off the list if you'd like.
local admins = {
	'None',
	'None',
	'None',
	'None'
}

--| CMD List |--

CMDs = {
    '1. cmds',
    '2. ftgr',
    '3. ftgt',
    '4. ftgy',
    '5. ftgf',
    '6. ftgg',
    '7. ftgh',
    '8. shadar',
    '9. shadat',
    '10. shaday',
    '11. shadaf',
    '12. shadag',
    '13. shadah',
    '14. icebr',
    '15. icebt',
    '16. iceby',
    '17. icebf',
    '18. icebg',
    '19. icebh',
    '20. rashr',
    '21. rasht',
    '22. rashy',
    '23. rashf',
    '24. rashg',
    '25. rashh',
    '26. fastlvl', --spam left control
    '27. addnin',
    '28. addtai',
    '29. addra',
    '30. addgen',
    '31. addsum',
    '32. goto plr',
    '33. ctp', --click to tp
    '34. byakar',
    '35. byakat',
    '36. byakay',
    '37. byakaf',
    '38. byakag',
    '39. byakah',
    '40. byakbr',
    '41. byakbt',
    '42. byakby',
    '43. byakbf',
    '44. byakrg',
    '45. byakah',
    '46. byakcr',
    '47. byakct',
    '48. byakcy',
    '49. byakcf',
    '50. byakcg',
    '51. byakch',
    '52. shadar',
    '53. shadat',
    '54. shaday',
    '55. shadaf',
    '56. shadag',
    '57. shadah', --rest of the shadow moves are further down the list, SORRY :(
    '58. tenscr',
    '59. tensar',
    '60. tensat',
    '61. tensay',
    '62. tensaf',
    '63. tensag',
    '64. tensah',
    '65. tensbr',
    '66. tensbt',
    '67. tensby',
    '68. tensbf',
    '69. tensbg',
    '70. tensbh',
    '71. tenscr',
    '72. tensct',
    '73. tenscy',
    '74. tenscf',
    '75. tenscg',
    '76. tensch',
    '77. infchak', --inf chakra
    '78. infblo', --inf block
    '79. stormar',
    '80. stormat',
    '81. stormay',
    '82. stormaf',
    '83. stormag',
    '84. stormah',
    '85. stormbr',
    '86. stormbt',
    '87. stormby',
    '88. stormbf',
    '89. stormbg',
    '90. stormbh',
    '91. stormcr',
    '92. stormct',
    '93. stormcy',
    '94. stormcf',
    '95. stormcg',
    '96. stormch',
    '97. kamr',
    '98. kamt',
    '99. kamy',
    '100. kamf',
    '101. kamg',
    '102. kamh',
    '103. allmodes',
    '104. firear',
    '105. fireat',
    '106. fireay',
    '107. fireaf',
    '108. fireag',
    '109. fireah',
    '110. firebr',
    '111. firebt',
    '112. fireby',
    '113. firebf',
    '114. firebg',
    '115. firebh',
    '116. firecr',
    '117. firect',
    '118. firecy',
    '119. firecf',
    '120. firecg',
    '121. firech',
    '122. firedr',
    '123. firedt',
    '124. firedy',
    '125. firedf',
    '126. firedg',
    '127. firedh',
    '128. fireer',
    '129. fireet',
    '130. fireey',
    '130. fireef',
    '132. fireeg',
    '133. fireeh',
    '134. mikunai1',
    '135. mikunai2',
    '136. mikunai3',
    '137. shur1',
    '138. shur2',
    '139. shur3',
    '140. ocho1',
    '141. ocho2',
    '142. ocho3',
    '143. katan1',
    '144. katan2',
    '145. katan3',
    '146. exec1',
    '147. exec2',
    '148. exec3',
    '149. trip1',
    '150. trip2',
    '151. trip3',
    '152. sasa1',
    '153. sasa2',
    '154. sasa3',
    '155. hira1',
    '156. hira2',
    '157. hira3',
    '158. same1',
    '159. same2',
    '160. same3',
    '161. gunb1',
    '162. gunb2',
    '163. gunb3',
    '164. thunswo1',
    '165. thunswo2',
    '166. thunswo3',
    '167. kunai1',
    '168. kunai2',
    '169. kunai3',
    '170. sai1',
    '171. sai2',
    '172. sai3',
    '173. sasa1',
    '174. sasa2',
    '175. sasa3',
    '176. omoi1',
    '177. omoi2',
    '178. omoi3',
    '179. mirf1',
    '180. mirf2',
    '181. mirf3',
    '182. windm1',
    '183. windm2',
    '184. windm3',
    '185. sasb1',
    '186. sasb2',
    '187. sasb3',
    '188. spin1',
    '189. spin2',
    '190. spin3',
    '191. spin4',
    '192. tpbyp', --bypass tp
    '193. sasb3',
    '194. dblexp',
    '195. vers',
    '196. waterar',
    '197. waterat',
    '198. wateray',
    '199. wateraf',
    '200. waterag',
    '201. waterah',
    '202. waterbr',
    '203. waterbt',
    '204. waterby',
    '205. waterbf',
    '206. waterbg',
    '207. waterah',
    '208. watercr',
    '209. waterct',
    '210. watercy',
    '211. watercf',
    '212. watercg',
    '213. waterch',
    '214. waterdr',
    '215. waterdt',
    '216. waterdy',
    '217. waterdf',
    '218. waterdg',
    '219. waterdh',
    '220. waterer',
    '221. wateret',
    '222. waterey',
    '223. wateref',
    '224. watereg',
    '225. watereh',
    '226. akar',
    '227. akat',
    '228. akay',
    '229. akaf',
    '230. akag',
    '231. akah',
    '232. akbr',
    '233. akbt',
    '234. akby',
    '235. akbf',
    '236. akbg',
    '237. akbh',
    '238. akcr',
    '239. akct',
    '240. akcy',
    '241. akcf',
    '242. akcg',
    '243. akch',
    '244. rinar',
    '245. rinat',
    '246. rinay',
    '247. rinaf',
    '248. rinag',
    '249. rinah',
    '250. rinbr',
    '251. rinbt',
    '252. rinby',
    '253. rinbf',
    '254. rinbg',
    '255. rinbh',
    '256. rincr',
    '257. rinct',
    '258. rincy',
    '259. rincf',
    '260. rincg',
    '261. rinch',
    '262. sharar',
    '263. sharat',
    '264. sharay',
    '265. sharaf',
    '266. sharag',
    '267. sharah',
    '268. sharbr',
    '269. sharbt',
    '270. sharby',
    '271. sharbf',
    '272. sharbg',
    '273. sharbh',
    '274. sharcr',
    '275. sharct',
    '276. sharcy',
    '277. sharcf',
    '278. sharcg',
    '279. sharch',
    '280. magar',
    '281. magat',
    '282. magay',
    '283. magaf',
    '284. magag',
    '284. magah',
    '285. magbr',
    '286. magbt',
    '287. magby',
    '288. magbf',
    '289. magbg',
    '290. magbh',
    '291. magcr',
    '292. magct',
    '293. magcy',
    '294. magcf',
    '295. magcg',
    '296. magch',
    '297. momoar',
    '298. momoat',
    '299. momoay',
    '300. momoaf',
    '301. momoag',
    '302. momoah',
    '303. momobr',
    '304. momobt',
    '305. momoby',
    '306. momobf',
    '307. momobg',
    '308. momobh',
    '309. momocr',
    '310. momoct',
    '311. momocy',
    '312. momocf',
    '313. momocg',
    '314. momoch',
    '315. tensar',
    '316. tensat',
    '317. tensay',
    '318. tensaf',
    '319. tensag',
    '320. tensah',
    '321. tensbr',
    '322. tensbt',
    '323. tensby',
    '324. tensbf',
    '325. tensbg',
    '326. tensbh',
    '327. tenscr',
    '328. tensct',
    '329. tenscy',
    '331. tenscf',
    '332. tenscg',
    '333. tensch',
    '334. woodar',
    '335. woodat',
    '336. wooday',
    '337. woodaf',
    '338. woodag',
    '339. woodah',
    '340. woodbr',
    '350. woodbt',
    '351. woodby',
    '352. woodbf',
    '353. woodbg',
    '354. woodbh',
    '355. woodcr',
    '356. woodct',
    '357. woodcy',
    '358. woodcf',
    '359. woodcg',
    '360. woodch',
    '361. shadbr',
    '362. shadbt',
    '363. shadby',
    '364. shadbf',
    '365. shadbg',
    '366. shadbh',
    '367. shadcr',
    '368. shadct',
    '369. shadcy',
    '370. shadcf',
    '371. shadcg',
    '372. shadch',
    '373. lavaar',
    '374. lavaat',
    '375. lavaay',
    '376. lavaaf',
    '377. lavaag',
    '378. lavaah',
    '379. lavabr',
    '380. lavabt',
    '381. lavaby',
    '382. lavabf',
    '383. lavabg',
    '384. lavabh',
    '385. lavacr',
    '386. lavact',
    '387. lavacy',
    '388. lavacf',
    '389. lavacg',
    '390. lavach',
    '391. ligar',
    '392. ligat',
    '393. ligay',
    '394. ligaf',
    '395. ligag',
    '396. ligah',
    '397. ligbr',
    '398. ligbt',
    '399. ligby',
    '400. ligbf',
    '401. ligbg',
    '402. ligbh',
    '403. ligcr',
    '404. ligct',
    '405. ligcy',
    '406. ligcf',
    '407. ligcg',
    '408. ligch',
    '409. ligdr',
    '410. ligdt',
    '411. ligdy',
    '412. ligdf',
    '413. ligdg',
    '414. ligdh',
    '415. liger',
    '416. liget',
    '417. ligey',
    '418. ligef',
    '419. ligeg',
    '420. ligeh',
    '421. srar',
    '422. srat',
    '423. sray',
    '424. sraf',
    '425. srag',
    '426. srah',
    '427. srbr',
    '428. srbt',
    '429. srby',
    '430. srbf',
    '431. srbg',
    '432. srbh',
    '433. abuar',
    '434. abuat',
    '435. abuay',
    '436. abuaf',
    '437. abuag',
    '438. abuah',
    '439. abubr',
    '440. abubt',
    '441. abuby',
    '442. abubf',
    '443. abubg',
    '444. abubh',
    '445. abucr',
    '446. abuct',
    '447. abucy',
    '448. abucf',
    '449. abucg',
    '450. abuch',
    '451. deadar',
    '452. deadat',
    '453. deaday',
    '454. deadaf',
    '455. deadag',
    '456. deadah',
    '457. deadbr',
    '458. deadbt',
    '459. deadby',
    '460. deadbf',
    '461. deadbg',
    '462. deadbh',
    '463. deadcr',
    '464. deadct',
    '467. deadcy',
    '468. deadcf',
    '469. deadcg',
    '470. deadch',
    '471. madar',
    '472. madat',
    '473. maday',
    '474. madaf',
    '475. madag',
    '476. madah',
    '477. madbr',
    '478. madbt',
    '479. madby',
    '480. madbf',
    '481. madbg',
    '482. madbh',
    '483. madcr',
    '484. madct',
    '487. madcy',
    '488. madcf',
    '489. madcg',
    '490. madch',
}


--| Lib |--

updateevents=function()
	for i,v in pairs(services.events) do services.events:remove(i) v:disconnect() end
	for i,v in pairs(gPlayers:players())do
		local ev = v.Chatted:connect(function(msg) do_exec(msg,v) end)
		services.events[#services.events+1] = ev
	end
end

std.inTable=function(tbl,val)
    if tbl==nil then return false end

    for _,v in pairs(tbl)do
        if v==val then return true end
    end 
	return false
end

std.out=function(str)
    print(str)
end

std.list=function(tbl)
    local str=''
    for i,v in pairs(tbl)do
        str=str..tostring(v)
        if i~=#tbl then str=str..', ' end
    end 
	return str
end

std.endat=function(str,val)
    local z=str:find(val)
    if z then 
		return str:sub(0,z-string.len(val)),true
    else 
		return str,false 
	end
end

std.first=function(str) return str:sub(1,1) end

isAdmin=function(name)
    if name==admin then
        return true
    elseif admins[name]==true then
        return true
    end
    return false
end

local exec=function(str)
    spawn(function()
        local script, loaderr = loadstring(str)
        if not script then
            error(loaderr)
        else
        	script()
		end
    end)
end

local findCmd=function(cmd_name)
    for i,v in pairs(cmds)do
        if v.NAME:lower()==cmd_name:lower() or std.inTable(v.ALIAS,cmd_name:lower())then
            return v
        end
    end
end

local getCmd=function(msg)
    local cmd,hassplit=std.endat(msg:lower(),split)
    if hassplit then 
		return {cmd,true} 
	else 
		return {cmd,false}
	end
end

local getprfx=function(strn)
    if strn:sub(1,string.len(cmdprefix))==cmdprefix then return{'cmd',string.len(cmdprefix)+1}
    elseif strn:sub(1,string.len(scriptprefix))==scriptprefix then return{'exec',string.len(scriptprefix)+1}
    end return
end

local getArgs=function(str)
    local args={}
    local new_arg=nil
    local hassplit=nil
    local s=str
    repeat
        new_arg,hassplit=std.endat(s:lower(),split)
        if new_arg~='' then
            args[#args+1]=new_arg
            s=s:sub(string.len(new_arg)+string.len(split)+1)
        end
    until hassplit==false
    return args
end

local function execCmd(str, plr)
    local s_cmd
    local a
    local cmd
    s_cmd = getCmd(str)
    cmd = findCmd(s_cmd[1])
    if cmd == nil then return end
    a = str:sub(string.len(s_cmd[1]) + string.len(split) + 1)
    local args=getArgs(a)

    pcall(function()
	cmd.FUNC(args, plr)
	end)
end

function do_exec(str,plr)
	if not isAdmin(plr.Name)then return end	
	
    str=str:gsub('/e ','')

    local t=getprfx(str)
    if t==nil then return end
    str=str:sub(t[2])
    if t[1]=='exec' then
        exec(str)
    elseif t[1]=='cmd' then
        execCmd(str, plr)
    end
end

updateevents()
_G.exec_cmd = execCmd
--game.Players.LocalPlayer.Chatted:connect(doexec)

local _char=function(plr_name)
    for i,v in pairs(game.Players:GetChildren())do
        if v:IsA'Player'then
            if v.Name==plr_name then return v.Character end
        end
    end
    return
end

local _plr=function(plr_name)
    for i,v in pairs(game.Players:GetChildren())do
        if v:IsA'Player'then
            if v.Name==plr_name then return v end
        end
    end
    return
end

function addcmd(name,desc,alias,func)
    cmds[#cmds+1]=
    {
        NAME=name;
        DESC=desc;
        ALIAS=alias;
        FUNC=func;
    }
end

local function getPlayer(name)
	local nameTable = {}
	name=name:lower()
	if name == "me" then
		nameTable[#nameTable+1]=admin
	elseif name == "others" then
		for i,v in pairs(gPlayers:GetChildren()) do
            if v:IsA'Player'then
                if v.Name~=admin then
                    nameTable[#nameTable+1]=v.Name
                end
            end
		end
	elseif name == "all" then
		for i,v in pairs(gPlayers:GetChildren()) do
            if v:IsA'Player'then 
                nameTable[#nameTable+1]=v.Name
            end
		end
	else
		for i,v in pairs(gPlayers:GetChildren()) do
			local lname = v.Name:lower()
			local i,j = lname:find(name)
			if i == 1 then
				return {v.Name}
			end
		end
	end
	return nameTable
end


game.Lighting.Outlines = false -- Outlines are disgusting

--| Commands |--

    addcmd('goto','go to a player',{},
    function(args)
    local players=getPlayer(args[1])
    if players ~= nil and _char(players[1]):FindFirstChild("HumanoidRootPart") then
    _char(admin).HumanoidRootPart.CFrame = _char(players[1]).HumanoidRootPart.CFrame
    end
    end)
    
        addcmd('ctp','ctp',{},
    function(args)
plr = game.Players.LocalPlayer
hum = plr.Character.HumanoidRootPart
mouse = plr:GetMouse()

mouse.KeyDown:connect(function(key)
if key == "l" then
if mouse.Target then
hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
end
end
end)
    end)
    
        addcmd('save','save local player',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("save")
end)
    
    addcmd('ftgr','ftgr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "ftg")
end)
 
addcmd('ftgt','ftgt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "ftg")
end)
 
addcmd('ftgy','ftgy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "ftg")
end)
 
addcmd('ftgf','ftgf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "ftg")
end)
 
addcmd('ftgg','ftgg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "ftg")
end)
 
addcmd('ftgh','ftgh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "ftg")
end)

--end ftg move

addcmd('rashr','rashr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "rashomon")
end)
 
addcmd('rasht','rasht',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "rashomon")
end)
 
addcmd('rashy','rashy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "rashomon")
end)
 
addcmd('rashf','rashf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "rashomon")
end)
 
addcmd('rashg','rashg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "rashomon")
end)
 
addcmd('rashh','rashh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "rashomon")
end)

--end rashomon move

addcmd('shadar','shadar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "shadowa")
end)
 
addcmd('shadat','shadat',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "shadowa")
end)
 
addcmd('shaday','shaday',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "shadowa")
end)
 
addcmd('shadaf','shadaf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "shadowa")
end)
 
addcmd('shadag','shadag',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "shadowa")
end)
 
addcmd('shadah','shadah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "shadowa")
end)

--end shadow moves

addcmd('icebr','icebr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "iceb")
end)

addcmd('icebt','icebt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "iceb")
end)

addcmd('iceby','iceby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "iceb")
end)

addcmd('icebf','icebf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "iceb")
end)

addcmd('icebg','icebg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "iceb")
end)

addcmd('icebh','icebh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "iceb")
end)

--end ice moves

addcmd('tenscr','tenscr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "tenseiganc")
end)

addcmd('tensct','tensct',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "tenseiganc")
end)

addcmd('tenscy','tenscy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "tenseiganc")
end)

addcmd('tenscf','tenscf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "tenseiganc")
end)

addcmd('tenscg','tenscg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "tenseiganc")
end)

addcmd('tensch','tensch',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "tenseiganc")
end)

addcmd('tensar','tensar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "tenseigana")
end)

addcmd('tensat','tensat',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "tenseigana")
end)

addcmd('tensay','tensay',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "tenseigana")
end)

addcmd('tensaf','tensaf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "tenseigana")
end)

addcmd('tensag','tensag',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "tenseigana")
end)

addcmd('tensah','tensah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "tenseigana")
end)

addcmd('tensbr','tensbr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "tenseiganb")
end)

addcmd('tensbt','tensbt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "tenseiganb")
end)

addcmd('tensby','tensby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "tenseiganb")
end)

addcmd('tensbf','tensbf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "tenseiganb")
end)

addcmd('tensbg','tensbg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "tenseiganb")
end)

addcmd('tensbh','tensbh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "tenseiganb")
end)

--end tenseigan moves

addcmd('stormar','stormar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "storma")
end)

addcmd('stormat','stormat',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "storma")
end)

addcmd('stormay','stormay',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "storma")
end)

addcmd('stormah','stormah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "storma")
end)

addcmd('stormah','stormah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "storma")
end)

addcmd('stormah','stormah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "storma")
end)

addcmd('stormbr','stormbr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "stormb")
end)

addcmd('stormbt','stormbt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "stormb")
end)

addcmd('stormby','stormby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "stormb")
end)

addcmd('stormbf','stormbf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "stormb")
end)

addcmd('stormbg','stormbg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "stormb")
end)

addcmd('stormbh','stormbh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "stormb")
end)

addcmd('stormcr','stormcr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "stormc")
end)

addcmd('stormct','stormct',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "stormc")
end)

addcmd('stormcy','stormcy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "stormc")
end)

addcmd('stormcf','stormcf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "stormc")
end)

addcmd('stormcg','stormcg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "stormc")
end)

addcmd('stormch','stormch',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "stormc")
end)

--end storm moves

addcmd('byakar','byakar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "byakugana")
end)

addcmd('byakat','byakat',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "byakugana")
end)

addcmd('byakay','byakay',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "byakugana")
end)

addcmd('byakaf','byakaf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "byakugana")
end)

addcmd('byakag','byakag',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "byakugana")
end)

addcmd('byakah','byakah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "byakugana")
end)

addcmd('byakbr','byakbr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "byakuganb")
end)

addcmd('byakbt','byakbt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "byakuganb")
end)

addcmd('byakby','byakby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "byakuganb")
end)

addcmd('byakbf','byakbf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "byakuganb")
end)

addcmd('byakbg','byakbg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "byakuganb")
end)

addcmd('byakbh','byakbh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "byakuganb")
end)

addcmd('byakcr','byakcr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "byakuganc")
end)

addcmd('byakct','byakct',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "byakuganc")
end)

addcmd('byakcy','byakcy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "byakuganc")
end)

addcmd('byakcf','byakcf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "byakuganc")
end)

addcmd('byakcg','byakcg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "byakuganc")
end)

addcmd('byakch','byakch',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "byakuganc")
end)

--end byakugan moves

addcmd('akar','akar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "chojia")
end)

addcmd('akat','akat',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "chojia")
end)

addcmd('akay','akay',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "chojia")
end)

addcmd('akaf','akaf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "chojia")
end)

addcmd('akag','akag',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "chojia")
end)

addcmd('akah','akah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "chojia")
end)

addcmd('akbr','akbr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "chojib")
end)

addcmd('akbt','akbt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "chojib")
end)

addcmd('akby','akby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "chojib")
end)

addcmd('akbf','akbf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "chojib")
end)

addcmd('akbg','akbg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "chojib")
end)

addcmd('akbh','akbh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "chojib")
end)

addcmd('akcr','akcr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "chojic")
end)

addcmd('akct','akct',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "chojic")
end)

addcmd('akcy','akcy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "chojic")
end)

addcmd('akcf','akcf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "chojic")
end)

addcmd('akcg','akcg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "chojic")
end)

addcmd('akch','akch',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "chojic")
end)

--end akimichi moves

addcmd('rinar','rinar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "rinnegana")
end)

addcmd('rinat','rinat',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "rinnegana")
end)

addcmd('rinay','rinay',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "rinnegana")
end)

addcmd('rinaf','rinaf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "rinnegana")
end)

addcmd('rinag','rinag',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "rinnegana")
end)

addcmd('rinah','rinah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "rinnegana")
end)

addcmd('rinbr','rinbr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "rinneganb")
end)

addcmd('rinbt','rinbt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "rinneganb")
end)

addcmd('rinby','rinby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "rinneganb")
end)

addcmd('rinbf','rinbf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "rinneganb")
end)

addcmd('rinbg','rinbg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "rinneganb")
end)

addcmd('rinbh','rinbh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "rinneganb")
end)

addcmd('rincr','rincr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "rinneganc")
end)

addcmd('rinct','rinct',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "rinneganc")
end)

addcmd('rincy','rincy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "rinneganc")
end)

addcmd('rincf','rincf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "rinneganc")
end)

addcmd('rincg','rincg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "rinneganc")
end)

addcmd('rinch','rinch',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "rinneganc")
end)

--end rinnegan moves

addcmd('sharar','sharar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "sharingana")
end)

addcmd('sharat','sharay',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "sharingana")
end)

addcmd('sharaf','sharaf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "sharingana")
end)

addcmd('sharag','sharag',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "sharingana")
end)

addcmd('sharah','sharah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "sharingana")
end)

addcmd('sharar','sharar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "sharingana")
end)

addcmd('sharbr','sharbr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "sharinganb")
end)

addcmd('sharbt','sharbt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "sharinganb")
end)

addcmd('sharby','sharby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "sharinganb")
end)

addcmd('sharbf','sharbf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "sharinganb")
end)

addcmd('sharbg','sharbg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "sharinganb")
end)

addcmd('sharbh','sharbh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "sharinganb")
end)

addcmd('sharcr','sharcr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "sharinganc")
end)

addcmd('sharct','sharct',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "sharinganc")
end)

addcmd('sharcy','sharcy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "sharinganc")
end)

addcmd('sharcf','sharcf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "sharinganc")
end)

addcmd('sharcg','sharcg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "sharinganc")
end)

addcmd('sharch','sharch',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "sharinganc")
end)

--end sharingan moves

addcmd('magar','magar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "sanda")
end)

addcmd('magat','magat',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "sanda")
end)

addcmd('magay','magay',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "sanda")
end)

addcmd('magaf','magaf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "sanda")
end)

addcmd('magag','magag',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "sanda")
end)

addcmd('magah','magah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "sanda")
end)

addcmd('magbr','magbr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "sandb")
end)

addcmd('magbt','magbt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "sandb")
end)

addcmd('magby','magby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "sandb")
end)

addcmd('magbf','magbf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "sandb")
end)

addcmd('magbg','magbg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "sandb")
end)

addcmd('magbh','magbh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "sandb")
end)

addcmd('magcr','magcr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "sandc")
end)

addcmd('magct','magct',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "sandc")
end)

addcmd('magcy','magcy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "sandc")
end)

addcmd('magcf','magcf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "sandc")
end)

addcmd('magcg','magcg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "sandc")
end)

addcmd('magch','magch',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "sandc")
end)

--end magnet moves

addcmd('momoar','momoar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "momoa")
end)

addcmd('momoat','momoat',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "momoa")
end)

addcmd('momoay','momoay',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "momoa")
end)

addcmd('momoaf','momoaf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "momoa")
end)

addcmd('momoag','momoag',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "momoa")
end)

addcmd('momoah','momoah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "momoa")
end)

addcmd('momobr','momobr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "momob")
end)

addcmd('momobt','momobt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "momob")
end)

addcmd('momoby','momoby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "momob")
end)

addcmd('momobf','momobf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "momob")
end)

addcmd('momobg','momobg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "momob")
end)

addcmd('momobh','momobh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "momob")
end)

addcmd('momocr','momocr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "momoc")
end)

addcmd('momoct','momoct',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "momoc")
end)

addcmd('momocy','momocy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "momoc")
end)

addcmd('momocf','momocf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "momoc")
end)

addcmd('momocg','momocg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "momoc")
end)

addcmd('momoch','momoch',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "momoc")
end)

--end momoshiki moves

addcmd('tensar','tensar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "tenseigana")
end)

addcmd('shadowar','gives shadowa on player',{''},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
local r = gPlayers[v].keyinput
r:FireServer("equippowerz", "r", "shadowa")
     end
end)

addcmd('abubt','gives shadowa on player',{''},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
local r = gPlayers[v].keyinput
r:FireServer("equippowerz", "t", "aburameb")
     end
end)

addcmd('abucy','gives shadowa on player',{''},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
local r = gPlayers[v].keyinput
r:FireServer("equippowerz", "y", "aburamec")
     end
end)

addcmd('tensat','tensat',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "tenseigana")
end)

addcmd('tensay','tensay',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "tenseigana")
end)

addcmd('tensaf','tensaf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "tenseigana")
end)

addcmd('tensag','tensag',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "tenseigana")
end)

addcmd('tensah','tensah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "tenseigana")
end)

addcmd('tensbr','tensbr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "tenseiganb")
end)

addcmd('tensbt','tensbt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "tenseiganb")
end)

addcmd('tensby','tensby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "tenseiganb")
end)

addcmd('tensbf','tensbf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "tenseiganb")
end)

addcmd('tensbg','tensbg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "tenseiganb")
end)

addcmd('tensbh','tensbh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "tenseiganb")
end)

addcmd('tenscr','tenscr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "tenseiganc")
end)

addcmd('tensct','tensct',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "tenseiganc")
end)

addcmd('tenscy','tenscy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "tenseiganc")
end)

addcmd('tenscf','tenscf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "tenseiganc")
end)

addcmd('tenscg','tenscg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "tenseiganc")
end)

addcmd('tensch','tensch',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "tenseiganc")
end)

--end tenseigan moves

addcmd('srar','srar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "sasrinnegana")
end)

addcmd('srat','srat',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "sasrinnegana")
end)

addcmd('sray','sray',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "sasrinnegana")
end)

addcmd('sraf','sraf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "sasrinnegana")
end)

addcmd('srag','srag',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "sasrinnegana")
end)

addcmd('srah','srah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "sasrinnegana")
end)

addcmd('srbr','srbr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "sasrinneganb")
end)

addcmd('srbt','srbt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "sasrinneganb")
end)

addcmd('srby','srby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "sasrinneganb")
end)

addcmd('srbf','srbf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "sasrinneganb")
end)

addcmd('srbg','srbg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "sasrinneganb")
end)

addcmd('srbh','srbh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "sasrinneganb")
end)

addcmd('srcr','srcr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "sasrinneganc")
end)

addcmd('srct','srct',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "sasrinneganc")
end)

addcmd('srcy','srcy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "sasrinneganc")
end)

addcmd('srcf','srcf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "sasrinneganc")
end)

addcmd('srcg','srcg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "sasrinneganc")
end)

addcmd('srch','srch',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "sasrinneganc")
end)

--end sr moves

addcmd('woodar','woodar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "wooda")
end)

addcmd('woodat','woodat',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "wooda")
end)

addcmd('wooday','wooday',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "wooda")
end)

addcmd('woodaf','woodaf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "wooda")
end)

addcmd('woodag','woodag',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "wooda")
end)

addcmd('woodah','woodah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "wooda")
end)

addcmd('woodbr','woodbr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "woodb")
end)

addcmd('woodbt','woodbt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "woodb")
end)

addcmd('woodby','woodby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "woodb")
end)

addcmd('woodbf','woodbf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "woodb")
end)

addcmd('woodbg','woodbg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "woodb")
end)

addcmd('woodbh','woodbh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "woodb")
end)

addcmd('woodcr','woodcr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "woodc")
end)

addcmd('woodct','woodct',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "woodc")
end)

addcmd('woodcy','woodcy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "woodc")
end)

addcmd('woodcf','woodcf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "woodc")
end)

addcmd('woodcg','woodcg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "woodc")
end)

addcmd('woodch','woodch',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "woodc")
end)

--end wood moves

addcmd('shadbr','shadbr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "shadowb")
end)

addcmd('shadbt','shadbt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "shadowb")
end)

addcmd('shadby','shadby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "shadowb")
end)

addcmd('shadbf','shadbf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "shadowb")
end)

addcmd('shadbg','shadbg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "shadowb")
end)

addcmd('shadbh','shadbh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "shadowb")
end)

addcmd('shadcr','shadcr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "shadowc")
end)

addcmd('shadct','shadct',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "shadowc")
end)

addcmd('shadcy','shadcy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "shadowc")
end)

addcmd('shadcf','shadcf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "shadowc")
end)

addcmd('shadcg','shadcg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "shadowc")
end)

addcmd('shadch','shadch',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "shadowc")
end)

--end shadow moves


addcmd('lavaar','lavaar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "lavaa")
end)

addcmd('lavaat','lavaat',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "lavaa")
end)

addcmd('lavaay','lavaay',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "lavaa")
end)

addcmd('lavaaf','lavaaf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "lavaa")
end)

addcmd('lavaag','lavaag',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "lavaa")
end)

addcmd('lavaah','lavaah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "lavaa")
end)

addcmd('lavabr','lavabr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "lavab")
end)

addcmd('lavabt','lavabt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "lavab")
end)

addcmd('lavaby','lavaby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "lavab")
end)

addcmd('lavabf','lavabf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "lavab")
end)

addcmd('lavabg','lavabg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "lavab")
end)

addcmd('lavabh','lavabh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "lavab")
end)

addcmd('lavacr','lavacr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "lavac")
end)

addcmd('lavact','lavact',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "lavac")
end)

addcmd('lavacy','lavacy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "lavac")
end)

addcmd('lavacf','lavacf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "lavac")
end)

addcmd('lavacg','lavacg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "lavac")
end)

addcmd('lavach','lavach',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "lavac")
end)

--end lava moves

addcmd('abuar','lavaar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "aburamea")
end)

addcmd('abuat','lavaat',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "aburamea")
end)

addcmd('abuay','lavaay',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "aburamea")
end)

addcmd('abuaf','lavaaf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "aburamea")
end)

addcmd('abuag','lavaag',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "aburamea")
end)

addcmd('abuah','lavaah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "aburamea")
end)

addcmd('abubr','lavabr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "aburameb")
end)

addcmd('abubt','lavabt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "aburameb")
end)

addcmd('abuby','lavaby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "aburameb")
end)

addcmd('abubf','lavabf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "aburameb")
end)

addcmd('abubg','lavabg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "aburameb")
end)

addcmd('abubh','lavabh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "aburameb")
end)

addcmd('abucr','lavacr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "aburamec")
end)

addcmd('abuct','lavact',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "aburamec")
end)

addcmd('abucy','lavacy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "aburamec")
end)

addcmd('abucf','lavacf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "aburamec")
end)

addcmd('abucg','lavacg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "aburamec")
end)

addcmd('abuch','lavach',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "aburamec")
end)

--end aburame moves
 
addcmd('allmodes','allmodes',{},
function(args)
local Element = "Sub"
game.Players.LocalPlayer.PlayerGui.MainGui.menu[Element].zetsu.lock.Image = ("rbxassetid://1494129610")
local Element = "Sub"
game.Players.LocalPlayer.PlayerGui.MainGui.menu[Element].slugsummon.lock.Image = ("rbxassetid://1494129610")
local Element = "Sub"
game.Players.LocalPlayer.PlayerGui.MainGui.menu[Element].gourd.lock.Image = ("rbxassetid://1494129610")
local Element = "Sub"
game.Players.LocalPlayer.PlayerGui.MainGui.menu[Element].woodsage.lock.Image = ("rbxassetid://1494129610")
local Element = "Sub"
game.Players.LocalPlayer.PlayerGui.MainGui.menu[Element].cursemark.lock.Image = ("rbxassetid://1494129610")
local Element = "Sub"
game.Players.LocalPlayer.PlayerGui.MainGui.menu[Element].gates.lock.Image = ("rbxassetid://1494129610")
local Element = "Sub"
game.Players.LocalPlayer.PlayerGui.MainGui.menu[Element].kisame.lock.Image = ("rbxassetid://1494129610")
local Element = "Sub"
game.Players.LocalPlayer.PlayerGui.MainGui.menu[Element].konan.lock.Image = ("rbxassetid://1494129610")
local Element = "Sub"
game.Players.LocalPlayer.PlayerGui.MainGui.menu[Element].hidan.lock.Image = ("rbxassetid://1494129610")
local Element = "Sub"
game.Players.LocalPlayer.PlayerGui.MainGui.menu[Element].sevenh.lock.Image = ("rbxassetid://1494129610")
local Element = "Sub"
game.Players.localPlayer.PlayerGui.MainGui.menu[Element].mist.lock.Image =("rbxassetid://1494129610")
local Element = "Sub"
game.Players.localPlayer.PlayerGui.MainGui.menu[Element].icedragon.lock.Image =("rbxassetid://1494129610")
local Element = "Sub"
game.Players.localPlayer.PlayerGui.MainGui.menu[Element].kamui.lock.Image =("rbxassetid://1494129610")
local Element = "Sub"
game.Players.localPlayer.PlayerGui.MainGui.menu[Element].susanoo.lock.Image =("rbxassetid://1494129610")
local Element = "Sub"
game.Players.LocalPlayer.PlayerGui.MainGui.menu[Element].hawksummon.lock.Image = ("rbxassetid://1494129610")
local Element = "Sub"
game.Players.LocalPlayer.PlayerGui.MainGui.menu[Element].frogsummon.lock.Image = ("rbxassetid://1494129610")
local Element = "Sub"
game.Players.LocalPlayer.PlayerGui.MainGui.menu[Element].snakesummon.lock.Image = ("rbxassetid://1494129610")
local Element = "Sub"
game.Players.LocalPlayer.PlayerGui.MainGui.menu[Element].ftg.lock.Image = ("rbxassetid://1494129610")
local Element = "Sub"
game.Players.LocalPlayer.PlayerGui.MainGui.menu[Element].rashomon.lock.Image = ("rbxassetid://1494129610")
local Element = "Sub"
game.Players.LocalPlayer.PlayerGui.MainGui.menu[Element].jin.lock.Image = ("rbxassetid://1494129610")
local Element = "Sub"
game.Players.LocalPlayer.PlayerGui.MainGui.menu[Element].toadsage.lock.Image = ("rbxassetid://1494129610")
end)

--end unlock allmodes

addcmd('addnin','addnin',{},
function(args)
while wait() do
game.Players.LocalPlayer.keyinput:FireServer("addpoint", "Ninjutsu")
end
end)
 
addcmd('addtai','addtai',{},
function(args)
while wait() do
game.Players.LocalPlayer.keyinput:FireServer("addpoint", "Taijutsu")
end
end)
 
addcmd('addra','addra',{},
function(args)
while wait() do
game.Players.LocalPlayer.keyinput:FireServer("addpoint", "Rage")
end
end)
 

addcmd('addsum','addsum',{},
function(args)
while wait() do
game.Players.LocalPlayer.keyinput:FireServer("addpoint", "Defense")
end
end)

addcmd('addgen','addgen',{},
function(args)
while wait() do
game.Players.LocalPlayer.keyinput:FireServer("addpoint", "Stamina")
end
end)

--end stats

addcmd('fastlvl','fastlvl',{},
function(args)
local function Combat()
coroutine.wrap(function()
for i=1, 100 do
while wait() do
game.Players.LocalPlayer.keyinput:FireServer("firepower", 4)
wait()
game.Players.LocalPlayer.keyinput:FireServer("charge", true)
end
end
end)()
end

local User = game:GetService("UserInputService")
User.InputBegan:Connect(function(Key,IsChat)
if IsChat then return end
if Key.KeyCode == Enum.KeyCode.LeftControl then
Combat()
end
end)
end)

--end fastlvl

addcmd('mikunai1','mikunai1',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "1", "minatokunai")
end)

addcmd('mikunai2','mikunai2',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "2", "minatokunai")
end)

addcmd('mikunai3','mikunai3',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "3", "minatokunai")
end)

addcmd('shur1','shur1',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "1", "shuriken")
end)

addcmd('shur2','shur2',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "2", "shuriken")
end)

addcmd('shur3','shur3',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "3", "shruiken")
end)

addcmd('ocho1','ocho1',{}, --orochimaru sword
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "1", "ocho")
end)

addcmd('ocho2','ocho2',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "2", "ocho")
end)

addcmd('ocho3','ocho3',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "3", "ocho")
end)

addcmd('katan1','katan1',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "1", "katana")
end)

addcmd('katan2','katan2',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "2", "katana")
end)

addcmd('katan3','katan3',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "3", "katana")
end)

addcmd('exec1','exec1',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "1", "executioner")
end)

addcmd('exec2','exec2',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "2", "executioner")
end)

addcmd('exec3','exec3',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "3", "executioner")
end)

addcmd('trip1','trip1',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "1", "triplebladed")
end)

addcmd('trip2','trip2',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "2", "triplebladed")
end)

addcmd('trip3','trip3',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "3", "triplebladed")
end)

addcmd('sasa1','sasa1',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "1", "sasukea")
end)

addcmd('sasa2','sasa2',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "2", "sasukea")
end)

addcmd('sasa3','sasa3',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "3", "sasukea")
end)

addcmd('hira1','hira1',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "1", "hira")
end)

addcmd('hira2','hira2',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "2", "hira")
end)

addcmd('hira3','hira3',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "3", "hira")
end)

addcmd('same1','same1',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "1", "samehada")
end)

addcmd('same2','same2',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "2", "samehada")
end)

addcmd('same3','same3',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "3", "samehada")
end)

addcmd('gunb1','gunb1',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "1", "gunbai")
end)

addcmd('gunb2','gunb2',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "2", "gunbai")
end)

addcmd('gunb3','gunb3',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "3", "gunbai")
end)

addcmd('thunswo1','thunswo1',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "1", "swordthunder")
end)

addcmd('thunswo2','thunswo2',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "2", "swordthunder")
end)

addcmd('thunswo3','thunswo3',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "3", "swordthunder")
end)

addcmd('kunai1','kunai1',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "1", "kunai")
end)

addcmd('kunai2','kunai2',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "2", "kunai")
end)

addcmd('kunai3','kunai3',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "3", "kunai")
end)

addcmd('sai1','sai1',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "1", "sai")
end)

addcmd('sai2','sai2',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "2", "sai")
end)

addcmd('sai3','sai3',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "3", "sai")
end)

addcmd('omoi1','omoi1',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "1", "omoi")
end)

addcmd('omoi2','omoi2',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "2", "omoi")
end)

addcmd('omoi3','omoi3',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "3", "omoi")
end)

addcmd('mirf1','mirf1',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "1", "mirfune")
end)

addcmd('mirf2','mirf2',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "2", "mirfune")
end)

addcmd('mirf3','mirf3',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "3", "mirfune")
end)

addcmd('windm1','windm1',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "1", "windmill")
end)

addcmd('windm2','windm2',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "2", "windmill")
end)

addcmd('windm3','windm3',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "3", "windmill")
end)

addcmd('sasb1','sasb1',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "1", "sasukeb")
end)

addcmd('sasb2','sasb2',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "2", "sasukeb")
end)

addcmd('sasb3','sasb3',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equipwep", "3", "sasukeb")
end)

--end weps

addcmd('firear','firear',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "firea")
end)

addcmd('fireat','fireat',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "firea")
end)

addcmd('fireay','fireay',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "firea")
end)

addcmd('fireaf','fireaf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "firea")
end)

addcmd('fireag','fireag',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "firea")
end)

addcmd('fireah','fireah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "firea")
end)

addcmd('firebr','frirebr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "fireb")
end)

addcmd('firebt','firebt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "fireb")
end)

addcmd('fireby','fireby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "fireb")
end)

addcmd('firebf','firebf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "fireb")
end)

addcmd('firebg','firebg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "fireb")
end)

addcmd('firebh','firebh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "fireb")
end)

addcmd('firecr','firecr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "firec")
end)

addcmd('firect','firect',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "firec")
end)

addcmd('firecy','firecy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "firec")
end)

addcmd('firecf','firecf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "firec")
end)

addcmd('firecg','firecg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "firec")
end)

addcmd('firech','firech',{''},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "firec")
end)

addcmd('firedr','firedr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "fired")
end)

addcmd('firedt','firedt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "fired")
end)

addcmd('firedy','firedy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "fired")
end)

addcmd('firedf','firedf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "fired")
end)

addcmd('firedg','firedg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "fired")
end)

addcmd('firedh','firedh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "fired")
end)

addcmd('fireer','fireer',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "firee")
end)

addcmd('fireet','fireet',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "firee")
end)

addcmd('fireey','fireey',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "firee")
end)

addcmd('fireef','fireef',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "firee")
end)

addcmd('fireeg','fireeg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "firee")
end)

addcmd('fireeh','fireeh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "firee")
end)

--end fire

addcmd('waterar','waterar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "watera")
end)

addcmd('waterat','waterat',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "watera")
end)

addcmd('wateray','wateray',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "watera")
end)

addcmd('wateraf','wateraf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "watera")
end)

addcmd('waterag','waterag',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "watera")
end)

addcmd('waterah','waterah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "watera")
end)

--end watera

addcmd('waterbr','waterbr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "waterb")
end)

addcmd('waterbt','waterbt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "waterb")
end)

addcmd('waterby','waterby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "waterb")
end)

addcmd('waterbf','waterbf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "waterb")
end)

addcmd('waterbg','waterbg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "waterb")
end)

addcmd('waterbh','waterbh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "waterb")
end)

--end waterb

addcmd('watercr','watercr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "waterc")
end)

addcmd('waterct','waterct',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "waterc")
end)

addcmd('watercy','watercy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "waterc")
end)

addcmd('watercf','watercf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "waterc")
end)

addcmd('watercg','watercg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "waterc")
end)

addcmd('waterch','waterch',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "waterc")
end)

--end waterc

addcmd('waterdr','waterdr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "waterd")
end)

addcmd('waterdt','waterdt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "waterd")
end)

addcmd('waterdy','waterdy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "waterd")
end)

addcmd('waterdf','waterdf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "waterd")
end)

addcmd('waterdg','waterdg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "waterd")
end)

addcmd('waterdh','waterdh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "waterd")
end)

--end waterd

addcmd('waterer','waterer',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "watere")
end)

addcmd('wateret','wateret',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "watere")
end)

addcmd('waterey','waterey',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "watere")
end)

addcmd('wateref','wateref',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "watere")
end)

addcmd('watereg','watereg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "watere")
end)

addcmd('watereh','watereh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "watere")
end)

--end water

addcmd('ligar','ligar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "lightninga")
end)

addcmd('ligat','ligat',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "lightninga")
end)

addcmd('ligay','ligay',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "lightninga")
end)

addcmd('ligaf','ligaf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "lightninga")
end)

addcmd('ligag','ligag',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "lightninga")
end)

addcmd('ligah','ligah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "lightninga")
end)

--end lightninga

addcmd('ligbr','ligbr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "lightningb")
end)

addcmd('ligbt','ligbt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "lightningb")
end)

addcmd('ligby','ligby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "lightningb")
end)

addcmd('ligbf','ligbf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "lightningb")
end)

addcmd('ligbg','ligbg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "lightningb")
end)

addcmd('ligbh','ligbh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "lightningb")
end)

--end waterb

addcmd('ligcr','ligcr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "lightningc")
end)

addcmd('ligct','ligct',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "lightningc")
end)

addcmd('ligcy','ligcy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "lightningc")
end)

addcmd('ligcf','ligcf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "lightningc")
end)

addcmd('ligcg','ligcg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "lightningc")
end)

addcmd('ligch','ligch',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "lightningc")
end)

--end waterc

addcmd('ligdr','ligdr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "lightningd")
end)

addcmd('ligdt','ligdt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "lightningd")
end)

addcmd('ligdy','ligdy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "lightningd")
end)

addcmd('ligdf','ligdf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "lightningd")
end)

addcmd('ligdg','ligdg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "lightningd")
end)

addcmd('ligdh','ligdh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "lightningd")
end)

--end waterd

addcmd('liger','liger',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "lightninge")
end)

addcmd('liget','liget',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "lightninge")
end)

addcmd('ligey','ligey',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "lightninge")
end)

addcmd('ligef','ligef',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "lightninge")
end)

addcmd('ligeg','ligeg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "lightninge")
end)

addcmd('ligeh','ligeh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "lightninge")
end)

--end lightning

addcmd('infchak','infchak',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("charge", true)
end)

addcmd('infblo','infchak',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("block", true)
end)

addcmd('spin4','spin4',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("respin", 4)
end)

addcmd('spin3','spin3',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("respin", 3)
end)

addcmd('spin2','spin2',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("respin", 2)
end)

addcmd('spin1','spin1',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("respin", 1)
end)

addcmd('dblexp','gives double exp',{},
function(args)
game.Players.LocalPlayer.dblexp.Value = true
end)

addcmd('tpbyp','bypasses anti tp',{},
function(args)
if not getgenv().MTAPIMutex then loadstring(game:HttpGet("https://pastebin.com/raw/UwFCVrhS", true))() end
game.Players.LocalPlayer.Character.HumanoidRootPart:AddPropertyEmulator("Position")
game.Players.LocalPlayer.Character.HumanoidRootPart:AddPropertyEmulator("CFrame")
end)

addcmd('kamr','kamr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "kamui")
end)

addcmd('kamt','kamt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "kamui")
end)

addcmd('kamy','kamy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "kamui")
end)

addcmd('kamf','kamf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "kamui")
end)

addcmd('kamg','kamg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "kamui")
end)

addcmd('kamh','kamh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "kamui")
end)

--end Kamui

--bone kg moves

addcmd('deadar','deadar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "Shikotsumyakua")
end)

addcmd('deadat','deadat',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "Shikotsumyakua")
end)

addcmd('deadaf','deadaf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "Shikotsumyakua")
end)

addcmd('deadag','deadag',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "Shikotsumyakua")
end)

addcmd('deadah','deadah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "Shikotsumyakua")
end)

addcmd('deadar','deadar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "Shikotsumyakua")
end)

addcmd('deadbr','deadbr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "Shikotsumyakub")
end)

addcmd('deadbt','deadbt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "Shikotsumyakub")
end)

addcmd('deadby','deadby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "Shikotsumyakub")
end)

addcmd('deadbf','deadbf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "Shikotsumyakub")
end)

addcmd('deadbg','deadbg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "Shikotsumyakub")
end)

addcmd('deadbh','deadbh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "Shikotsumyakub")
end)

addcmd('deadcr','deadcr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "Shikotsumyakuc")
end)

addcmd('deadct','deadct',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "Shikotsumyakuc")
end)

addcmd('deadcy','deadcy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "Shikotsumyakuc")
end)

addcmd('deadcf','deadcf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "Shikotsumyakuc")
end)

addcmd('deadcg','deadcg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "Shikotsumyakuc")
end)

addcmd('deadch','deadch',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "Shikotsumyakuc")
end)

--end dead bone moves

--madara susanoo moves

addcmd('madar','madar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "madarasharingana")
end)

addcmd('madat','madat',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "madarasharingana")
end)

addcmd('madaf','madaf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "madarasharingana")
end)

addcmd('maday','madag',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "madarasharingana")
end)

addcmd('madag','madah',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "madarasharingana")
end)

addcmd('madah','madar',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "madarasharingana")
end)

addcmd('madbr','madbr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "madarasharinganb")
end)

addcmd('madbt','madbt',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "madarasharinganb")
end)

addcmd('madby','madby',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "madarasharinganb")
end)

addcmd('madbf','madbf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "madarasharinganb")
end)

addcmd('madbg','madbg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "madarasharinganb")
end)

addcmd('madbh','madbh',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "madarasharinganb")
end)

addcmd('madcr','madcr',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "r", "madarasharinganc")
end)

addcmd('madct','madct',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "t", "madarasharinganc")
end)

addcmd('madcy','madcy',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "y", "madarasharinganc")
end)

addcmd('madcf','madcf',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "f", "madarasharinganc")
end)

addcmd('madcg','madcg',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "g", "madarasharinganc")
end)

addcmd('madch','madch',{},
function(args)
game.Players.LocalPlayer.keyinput:FireServer("equippowerz", "h", "madarasharinganc")
end)

--end madara susanoo moves

-- Extras --

addcmd('prefix','changes prefix',{},
function(args)
	cmdprefix = args[1]
	Notify('Changed prefix to "' .. args[1] .. '"')
end)

addcmd('admins','prints admins',{},
function(args)
	for i,v in pairs(AdminFolder:GetChildren()) do
		if v:IsA("StringValue") then
			print("-" .. v.Value)
			Notify('Printed Admins, Check Console')
		end
	end
end)

addcmd('version','shows version',{''},
function(args)
	Notify("Version is " .. Version)
end)

--| Admin |--

for i,v in pairs(admins) do
	local admin = Instance.new("StringValue", AdminFolder)
	admin.Value = v
	admin.RobloxLocked = true
end

spawn(function ()
    while wait(0.1) do
		for _,a in pairs(game.ContextActionService:GetChildren()) do
		    if a.Name == "AdminList" then
			    for _,b in pairs(a:GetChildren()) do
				    if b:IsA("StringValue") then
					    for _,c in pairs(game.Players:GetChildren()) do
						    if c.Name == b.Value then
							    execCmd('admin ' .. c.Name)
						    end
					    end
				    end
			    end
		    end
	    end
    end
end)





















--| Don't.. Touch.. |--






--| CMD Bar |--

CMDbar = Instance.new('ScreenGui', game.CoreGui)
CMDbar.Name = 'GUI'
cmdBAR = Instance.new('TextBox', CMDbar)
cmdBAR.Name = 'CMDbar'
cmdBAR.Active = true
cmdBAR.BackgroundColor = BrickColor.new(0,0,0)
cmdBAR.BackgroundTransparency = 0.5
cmdBAR.BorderColor = BrickColor.new(0,0,0)
cmdBAR.BorderSizePixel = 0
cmdBAR.Position = UDim2.new(0,0,1,-25)
cmdBAR.Size = UDim2.new(0,200,0,20)
cmdBAR.Font = 'SourceSans'
cmdBAR.FontSize = 'Size18'
cmdBAR.Text = 'Press ; to Execute a Command'
cmdBAR.TextColor = BrickColor.new(255,255,255)

--| Data |--

DATA = Instance.new('Folder', game.ContextActionService)
DATA.Name = 'Data'

Paper = Instance.new('BlockMesh', DATA)
Paper.Name = 'Paper'
Paper.Scale = Vector3.new(1,1,0.1)

ayylmao = Instance.new('Hat', DATA)
ayylmao.Name = 'ayylmao'
ayyHandle = Instance.new('Part', ayylmao)
ayyHandle.Name = 'Handle'
ayyHandle.Size = Vector3.new(2,2.4,2)
ayyHandle.FormFactor = 'Plate'
ayyMesh = Instance.new('SpecialMesh', ayyHandle)
ayyMesh.Scale = Vector3.new(1,1.02,1)
ayyMesh.MeshType = 'FileMesh'
ayyMesh.MeshId = 'http://www.roblox.com/asset/?id=13827689'
ayyMesh.TextureId = 'http://www.roblox.com/asset/?id=13827796'

Float = Instance.new('Part', DATA)
Float.Name = 'Float'
Float.Transparency = 1
Float.Size = Vector3.new(6,1,6)
Float.Anchored = true

cmdGUI = Instance.new('ScreenGui', DATA)
cmdGUI.Name = 'CMDs'
cmdMAIN = Instance.new('Frame', cmdGUI)
cmdMAIN.Name = 'MAIN'
cmdMAIN.Active = true
cmdMAIN.BackgroundColor = BrickColor.new(0,0,0)
cmdMAIN.BackgroundTransparency = 0.5
cmdMAIN.BorderColor = BrickColor.new(0,0,0)
cmdMAIN.BorderSizePixel = 0
cmdMAIN.Position = UDim2.new(0,10,0,350)
cmdMAIN.Size = UDim2.new(0,170,0,15)
cmdMAIN.Draggable = true
cmdCMDs = Instance.new('ScrollingFrame', cmdMAIN)
cmdCMDs.Name = 'CMDs'
cmdCMDs.BackgroundColor = BrickColor.new(0,0,0)
cmdCMDs.BackgroundTransparency = 0.8
cmdCMDs.BorderColor = BrickColor.new(0,0,0)
cmdCMDs.BorderSizePixel = 0
cmdCMDs.Position = UDim2.new(0,0,0,15)
cmdCMDs.Size = UDim2.new(0,200,0,150)
cmdCMDs.CanvasSize = UDim2.new(0,0,0,0)
cmdCMDs.TopImage = 'rbxasset://textures/blackBkg_square.png'
cmdCMDs.MidImage = 'rbxasset://textures/blackBkg_square.png'
cmdCMDs.BottomImage = 'rbxasset://textures/blackBkg_square.png'
cmdCMDs.ScrollBarThickness = 2
cmdExit = Instance.new('TextButton', cmdMAIN)
cmdExit.Name = 'Exit'
cmdExit.BackgroundColor = BrickColor.new(255,0,0)
cmdExit.BackgroundTransparency = 0.5
cmdExit.BorderColor = BrickColor.new(255,0,0)
cmdExit.BorderSizePixel = 0
cmdExit.Position = UDim2.new(0,185,0,0)
cmdExit.Size = UDim2.new(0,15,0,15)
cmdExit.Text = ""
ExitScript = Instance.new('LocalScript', cmdExit)
ExitScript.Source =
[[
script.Parent.MouseButton1Down:connect(function()
	script.Parent.Parent.Parent:Destroy()
end)
]]
cmdMin = Instance.new('TextButton', cmdMAIN)
cmdMin.Name = 'MM'
cmdMin.BackgroundColor = BrickColor.new(140,140,140)
cmdMin.BackgroundTransparency = 0.5
cmdMin.BorderColor = BrickColor.new(140,140,140)
cmdMin.BorderSizePixel = 0
cmdMin.Position = UDim2.new(0,170,0,0)
cmdMin.Size = UDim2.new(0,15,0,15)
cmdMin.Text = ""
MinScript = Instance.new('LocalScript', cmdMin)
MinScript.Source =
[[
local CMDs = script.Parent.Parent.CMDs

script.Parent.MouseButton1Down:connect(function()
	if CMDs.Visible == true then
		CMDs.Visible = false
	elseif CMDs.Visible == false then
		CMDs.Visible = true
	end
end)
]]
cmdEx = Instance.new('TextLabel', cmdMAIN)
cmdEx.Name = 'Example'
cmdEx.BackgroundColor = BrickColor.new(0,0,0)
cmdEx.BackgroundTransparency = 0.8
cmdEx.BorderColor = BrickColor.new(0,0,0)
cmdEx.BorderSizePixel = 0
cmdEx.Position = UDim2.new(0,5,0,20)
cmdEx.Size = UDim2.new(0,190,0,20)
cmdEx.Visible = false
cmdEx.TextColor = BrickColor.new(255,255,255)
cmdEx.TextXAlignment = 'Left'

duckGUI = Instance.new('ScreenGui', DATA)
duckGUI.Name = 'Duck'
duckImage = Instance.new('ImageLabel', duckGUI)
duckImage.BackgroundTransparency = 1
duckImage.Position = UDim2.new(0,-300,1,-150)
duckImage.Size = UDim2.new(0,300,0,300)
duckImage.Rotation = -30
duckImage.Image = 'rbxassetid://301388647'
duckScript = Instance.new('LocalScript', duckGUI)
duckScript.Source =
[[
local duck = script.Parent.ImageLabel

wait(2)

duck:TweenPosition(UDim2.new(1, 0, 1, -150), "InOut", "Quad", 3, true, nil)
]]

espMAIN = Instance.new('BillboardGui', DATA)
espMAIN.Name = 'MAIN'
espMAIN.AlwaysOnTop = true
espMAIN.ExtentsOffset = Vector3.new(0,1,0)
espMAIN.Size = UDim2.new(0,5,0,5)
espMAIN.StudsOffset = Vector3.new(0,1,0)
espDot = Instance.new('Frame', espMAIN)
espDot.BackgroundColor = BrickColor.new(42,181,255)
espDot.BackgroundTransparency = 0.3
espDot.BorderSizePixel = 0
espDot.Position = UDim2.new(-0.5,0,-0.5,0)
espDot.Size = UDim2.new(2,0,2,0)
espDot.Visible = false
espDot.ZIndex = 10
espName = Instance.new('TextLabel', espMAIN)
espName.Name = 'Name'
espName.BackgroundColor = BrickColor.new(0,0,0)
espName.BackgroundTransparency = 1
espName.BorderColor = BrickColor.new(0,0,0)
espName.BorderSizePixel = 0
espName.Position = UDim2.new(0,0,0,-35)
espName.Size = UDim2.new(1,0,10,0)
espName.Visible = false
espName.ZIndex = 10

notifyMAIN = Instance.new('ScreenGui', DATA)
notifyMAIN.Name = 'Notification'
notifyNOT = Instance.new('Frame', notifyMAIN)
notifyNOT.Name = 'NOTIFY'
notifyNOT.BackgroundColor = BrickColor.new(0,0,0)
notifyNOT.BackgroundTransparency = 0.5
notifyNOT.BorderColor = BrickColor.new(255,255,255)
notifyNOT.BorderSizePixel = 2
notifyNOT.Position = UDim2.new(0,-200,0.7,0)
notifyNOT.Size = UDim2.new(0,200,0,30)
notifyNOTE = Instance.new('TextLabel', notifyNOT)
notifyNOTE.Name = 'NOTE'
notifyNOTE.BackgroundColor = BrickColor.new(255,255,255)
notifyNOTE.BackgroundTransparency = 1
notifyNOTE.BorderColor = BrickColor.new(255,255,255)
notifyNOTE.BorderSizePixel = 0
notifyNOTE.Size = UDim2.new(1,0,1,0)
notifyNOTE.ZIndex = 10
notifyNOTE.FontSize = 'Size18'
notifyNOTE.Font = 'SourceSans'
notifyNOTE.Text = 'NOTIFY'
notifyNOTE.TextColor = BrickColor.new(255,255,255)
notifyNOTE.TextStrokeColor3 = Color3.new(255,255,255)
notifyNOTE.TextStrokeTransparency = 0.8

tpTool = Instance.new('HopperBin', DATA)
tpTool.Name = 'Teleport'
tpScript = Instance.new('LocalScript', tpTool)
tpScript.Source =
[[
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()

local Tool = script.Parent

Mouse.Button1Down:connect(function()
	if Mouse.Target and Tool.Active then
		Player.Character.HumanoidRootPart.CFrame = Mouse.Hit + Vector3.new(0,2,0)
	end
end)
]]

modJAIL = Instance.new('Model', DATA)
modJAIL.Name = 'JAIL'
botJAIL = Instance.new('Part', modJAIL)
botJAIL.Name = 'BOTTOM'
botJAIL.BrickColor = BrickColor.new('Black')
botJAIL.Transparency = 0.5
botJAIL.Position = Vector3.new(-6.2,0.5,-11.6)
botJAIL.Anchored = true
botJAIL.Locked = true
botJAIL.Size = Vector3.new(6,1,6)
botJAIL.TopSurface = 'Smooth'
botJAIL.BottomSurface = 'Smooth'
topJAIL = Instance.new('Part', modJAIL)
topJAIL.Name = 'BOTTOM'
topJAIL.BrickColor = BrickColor.new('Black')
topJAIL.Transparency = 0.5
topJAIL.Position = Vector3.new(-6.2,7.5,-11.6)
topJAIL.Anchored = true
topJAIL.Locked = true
topJAIL.Size = Vector3.new(6,1,6)
topJAIL.TopSurface = 'Smooth'
topJAIL.BottomSurface = 'Smooth'
p1 = Instance.new('Part', modJAIL)
p1.Name = 'MAIN'
p1.BrickColor = BrickColor.new('Black')
p1.Transparency = 1
p1.Position = Vector3.new(-8.7,4,-11.6)
p1.Rotation = Vector3.new(-180,0,-180)
p1.Anchored = true
p1.Locked = true
p1.Size = Vector3.new(1,6,4)
p1.TopSurface = 'Smooth'
p1.BottomSurface = 'Smooth'
p2 = Instance.new('Part', modJAIL)
p2.BrickColor = BrickColor.new('Black')
p2.Transparency = 0.5
p2.Position = Vector3.new(-3.7,4,-14.1)
p2.Anchored = true
p2.Locked = true
p2.Size = Vector3.new(1,6,1)
p2.TopSurface = 'Smooth'
p2.BottomSurface = 'Smooth'
p3 = Instance.new('Part', modJAIL)
p3.BrickColor = BrickColor.new('Black')
p3.Transparency = 0.5
p3.Position = Vector3.new(-8.7,4,-9.1)
p3.Anchored = true
p3.Locked = true
p3.Size = Vector3.new(1,6,1)
p3.TopSurface = 'Smooth'
p3.BottomSurface = 'Smooth'
p4 = Instance.new('Part', modJAIL)
p4.BrickColor = BrickColor.new('Black')
p4.Transparency = 0.5
p4.Position = Vector3.new(-3.7,4,-9.1)
p4.Anchored = true
p4.Locked = true
p4.Size = Vector3.new(1,6,1)
p4.TopSurface = 'Smooth'
p4.BottomSurface = 'Smooth'
p5 = Instance.new('Part', modJAIL)
p5.BrickColor = BrickColor.new('Black')
p5.Transparency = 0.5
p5.Position = Vector3.new(-8.7,4,-14.1)
p5.Anchored = true
p5.Locked = true
p5.Size = Vector3.new(1,6,1)
p5.TopSurface = 'Smooth'
p5.BottomSurface = 'Smooth'
p6 = Instance.new('Part', modJAIL)
p6.BrickColor = BrickColor.new('Black')
p6.Transparency = 1
p6.Position = Vector3.new(-6.2,4,-14.1)
p6.Rotation = Vector3.new(0,90,0)
p6.Anchored = true
p6.Locked = true
p6.Size = Vector3.new(1,6,4)
p6.TopSurface = 'Smooth'
p6.BottomSurface = 'Smooth'
p7 = Instance.new('Part', modJAIL)
p7.BrickColor = BrickColor.new('Black')
p7.Transparency = 1
p7.Position = Vector3.new(-3.7,4,-11.6)
p7.Anchored = true
p7.Locked = true
p7.Size = Vector3.new(1,6,4)
p7.TopSurface = 'Smooth'
p7.BottomSurface = 'Smooth'
p8 = Instance.new('Part', modJAIL)
p8.BrickColor = BrickColor.new('Black')
p8.Transparency = 1
p8.Position = Vector3.new(-6.2,4,-9.1)
p8.Rotation = Vector3.new(0,90,0)
p8.Anchored = true
p8.Locked = true
p8.Size = Vector3.new(1,6,4)
p8.TopSurface = 'Smooth'
p8.BottomSurface = 'Smooth'

-- CMDs GUI --

CMDsFolder = Instance.new("Folder", game.CoreGui)

for i,v in pairs(CMDs) do
	CMDsValue = Instance.new("StringValue", CMDsFolder)
	CMDsValue.Value = v
	CMDsValue.RobloxLocked = true
end

local function commands()
	local cmds = DATA.CMDs:Clone()
	cmds.Parent = Player.PlayerGui
	local CMDsV = CMDsFolder:GetChildren()
	for i = 1, #CMDsV do
		local YSize = 25
		local Position = ((i * YSize) - YSize)
		local newcmd = cmds.MAIN.Example:Clone()
		newcmd.Parent = cmds.MAIN.CMDs
		newcmd.Visible = true
		newcmd.Position = UDim2.new(0,5,0, Position + 5)
		newcmd.Text = "" .. CMDsV[i].Value
		cmds.MAIN.CMDs.CanvasSize = UDim2.new(0,0,0, Position + 30)
	end
end

addcmd('cmds','prints cmds',{},
function(args)
	commands()
end)

--| Command Bar |--

CMDbar.CMDbar.FocusLost:connect(function(enterpressed)
	if enterpressed and CMDbar.CMDbar.Text ~= "" then
		spawn(function ()
			execCmd(CMDbar.CMDbar.Text, Player)
		end)
	end
	CMDbar.CMDbar:TweenPosition(UDim2.new(0, -200, 1, -25), "InOut", "Quad", 0.5, true, nil)
end)

Mouse.KeyDown:connect(function(Key)
	if Key:byte() == 59 then
		CMDbar.CMDbar:TweenPosition(UDim2.new(0, 0, 1, -25), "InOut", "Quad", 0.5, true, nil)
		CMDbar.CMDbar:CaptureFocus()
	end
end)

--| More Functions |--

local NOTIFY = DATA.Notification
NOTIFY.Parent = game.CoreGui

local duck = DATA.Duck:Clone()
duck.Parent = Player.PlayerGui

local usingNOTE = false

function Notify(msg)
	if usingNOTE == false then
		if NOTIFY.NOTIFY and NOTIFY.NOTIFY.NOTE then
			spawn(function()
				NOTIFY.NOTIFY:TweenPosition(UDim2.new(0, 0, 0.7, 0), "InOut", "Quad", 0.5, true, nil)
				NOTIFY.NOTIFY.NOTE.Text = msg
				usingNOTE = true
				wait(2.5)
				NOTIFY.NOTIFY:TweenPosition(UDim2.new(0, -200, 0.7, 0), "InOut", "Quad", 0.5, true, nil)
				usingNOTE = false
		    end)
		end
	end
end

--| Notifications |--

if game.Workspace.FilteringEnabled == true then
	NOTIFY.NOTIFY.BorderColor = BrickColor.new(255,0,0)
	Notify('Filtering is ENABLED.')
elseif game.Workspace.FilteringEnabled == false then
	NOTIFY.NOTIFY.BorderColor = BrickColor.new(0,255,0)
	Notify('Filtering is DISABLED.')
end

wait(3)

	NOTIFY.NOTIFY.BorderColor = BrickColor.new(255,0,0)
	Notify('Loaded NxB Commands')
	wait(3)
	Notify('Welcome ' ..Player.Name)

Player.PlayerGui.Duck:Destroy()

--[[
addcmd('name','desc',{''},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	end
end)
--]]