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

([[This file was protected with MoonSec V3]]):gsub('.+', (function(a) _CmMEbSnAETjm = a; end)); return(function(r,...)local k;local f;local d;local t;local o;local c;local e=24915;local n=0;local l={};while n<495 do n=n+1;while n<0xc0 and e%0x4dc6<0x26e3 do n=n+1 e=(e+116)%48922 local a=n+e if(e%0x1412)>0xa09 then e=(e+0x19d)%0x8b2d while n<0x94 and e%0xc4a<0x625 do n=n+1 e=(e+905)%14413 local t=n+e if(e%0x9f0)<=0x4f8 then e=(e*0x2af)%0xbd89 local e=18639 if not l[e]then l[e]=0x1 d=getfenv and getfenv();end elseif e%2~=0 then e=(e-0xaf)%0x8659 local e=26000 if not l[e]then l[e]=0x1 o="\4\8\116\111\110\117\109\98\101\114\116\120\81\85\87\104\90\97\0\6\115\116\114\105\110\103\4\99\104\97\114\113\107\101\72\87\119\69\109\0\6\115\116\114\105\110\103\3\115\117\98\69\86\82\110\118\80\121\99\0\6\115\116\114\105\110\103\4\98\121\116\101\98\116\71\98\65\99\88\84\0\5\116\97\98\108\101\6\99\111\110\99\97\116\105\110\119\116\69\84\88\66\0\5\116\97\98\108\101\6\105\110\115\101\114\116\121\95\113\86\75\107\104\101\5";end else e=(e-0x30e)%0x733d n=n+1 local e=75742 if not l[e]then l[e]=0x1 k={};end end end elseif e%2~=0 then e=(e*0x1a7)%0x5a72 while n<0x33e and e%0x1d80<0xec0 do n=n+1 e=(e+171)%7389 local t=n+e if(e%0x1346)>0x9a3 then e=(e+0x52)%0x5e02 local e=64047 if not l[e]then l[e]=0x1 f=string;end elseif e%2~=0 then e=(e*0x389)%0x96a5 local e=59925 if not l[e]then l[e]=0x1 c=tonumber;end else e=(e-0x230)%0x9cf n=n+1 local e=84728 if not l[e]then l[e]=0x1 d=(not d)and _ENV or d;end end end else e=(e+0x228)%0x6bd4 n=n+1 while n<0x235 and e%0x2ebc<0x175e do n=n+1 e=(e+990)%46510 local o=n+e if(e%0x4d0c)<0x2686 then e=(e*0x1f7)%0x96dd local e=21393 if not l[e]then l[e]=0x1 t=function(t)local e=0x01 local function l(n)e=e+n return t:sub(e-n,e-0x01)end while true do local n=l(0x01)if(n=="\5")then break end local e=f.byte(l(0x01))local e=l(e)if n=="\2"then e=k.txQUWhZa(e)elseif n=="\3"then e=e~="\0"elseif n=="\6"then d[e]=function(n,e)return r(8,nil,r,e,n)end elseif n=="\4"then e=d[e]elseif n=="\0"then e=d[e][l(f.byte(l(0x01)))];end local n=l(0x08)k[n]=e end end end elseif e%2~=0 then e=(e*0x214)%0x21b local e=12141 if not l[e]then l[e]=0x1 end else e=(e*0x3c1)%0x11e9 n=n+1 local e=25873 if not l[e]then l[e]=0x1 end end end end end e=(e+265)%30167 end t(o);local e={};for n=0x0,0xff do local l=k.qkeHWwEm(n);e[n]=l;e[l]=n;end local function a(n)return e[n];end local o=(function(r,t)local o,l=0x01,0x10 local n={{},{},{}}local d=-0x01 local e=0x01 local f=r while true do n[0x03][k.EVRnvPyc(t,e,(function()e=o+e return e-0x01 end)())]=(function()d=d+0x01 return d end)()if d==(0x0f)then d=""l=0x000 break end end local d=#t while e<d+0x01 do n[0x02][l]=k.EVRnvPyc(t,e,(function()e=o+e return e-0x01 end)())l=l+0x01 if l%0x02==0x00 then l=0x00 k.y_qVKkhe(n[0x01],(a((((n[0x03][n[0x02][0x00]]or 0x00)*0x10)+(n[0x03][n[0x02][0x01]]or 0x00)+f)%0x100)));f=r+f;end end return k.inwtETXB(n[0x01])end);t(o(189,"KD:)8%Jue5biBf/O8e"));t(o(135,"QT7S?d1IneJa!Gr_Ie_nGrdn!_S_aG7_?dTrJnTeedrnITGT17rI??Gn?S1Jr?!nS?Ja7_JnT!er_!n!_GII!_deIr_aG_dJ!J?n!ITTedT1J7TGIaKJnee?TS_eISrJdJGn?J1T?7J_SaJS7TI_T111_Ida_Tdd_A_JIIde!1d7a_Gdad71JR7!eGTTnMrI1TGrdAr_d_I7_SGSSr!1SnJeSTeI7SneMSn1_ndrG??nGT?Ta7Sea?Gnd?T!J?TaJdTeed!_1!rGdTrdSJa!SS!1rTdJ?1Je7JJr7!edTJ1JrndaGJ1dIG_dJ1?eJS?_aGSrn_;aIea77_T?nnjdI__111r?d1GnSaa_TdnG7?ad7TSAJre1_!I1_e1and1GG_dJ!?S_!sSIa7TnnS_rITrnneeJTd_G1_rJd?!_d^aId>ae77nexanTTI7JJ?nn9SIS_TIRrTd0GT71Je7na_TJ?Ta!J7lGnG__I1Cc?erdSnG_7_Gd7rJ1!G?J7!ee7de7Jnn7KTIG_1I7GS1;G_S!!_7!!eTS?1"));local e=(-6175+(function()local f,l=0,1;(function(l,n,e,d)e(l(n,n,n,n),e(l,e and e,e,d),l(l,l,n and d,n),l(e,l,n and e,e))end)(function(d,n,t,e)if f>160 then return t end f=f+1 l=(l-237)%2828 if(l%792)<396 then l=(l+812)%27828 return e(e(n and t,n,e,e),e(t,t,d,d),n(n,n and e,n,e),d(d,d,e,n))else return e end return e end,function(e,t,n,d)if f>157 then return t end f=f+1 l=(l+832)%31708 if(l%1468)>734 then return d(t(e,n,t,n),e(e,d and t,e,e),e(n,n,t,e),n(d,n,e,d)and n(d,d,e,e))else return d end return e end,function(t,n,d,e)if f>251 then return e end f=f+1 l=(l+508)%43009 if(l%1404)>=702 then return n(n(e,e,t,t and e),d(e,e,n,e),e(n,d,t and d,d),n(t,t,e,d))else return e end return n end,function(t,n,e,d)if f>175 then return t end f=f+1 l=(l*546)%14044 if(l%1498)>749 then return t else return e(t(t,n,d,d)and t(d,t,e,n),e(e,n,d,t),e(e,e,d,e),n(e,d and n,d,n))end return d(n(n,d,e,t)and n(d,e,d and d,t),n(t,n,n and n,t)and t(n,n,e,e),d(e and e,t,e and e,d),d(e and e,e,e,n))end)return l;end)())local ne=(getfenv)or(function()return _ENV end);local h=k.YyiYGPMj or k.ikXJLFDl;local t=3;local ee=1;local d=2;local a=4;local function g(u,...)local s=o(e,"Oq3/X5-M?l%(k.j,,5.6(?%2??MM5?Xr3?5/-MXj/-q5,(,X-?5M/?3W2?5M/./XqGVXjk.ZX?/jq?9hj?q,3-,/j.j3kj%5l%5l--5-/Mq(,.?x-j5w/?3TM55,/k/5qX,5M?-kX?/eq?5MXl/l3kj-,Mj3l(%?lqMk5kjd.5(Rl??{(M(j?(?5M%--/./3j.t-..kj(k/z3l!Zj?. :%K5,?.kkq%/?l?X5.XXq(3XYM,3kl(Ml.3UHk,G.?k7U,,qj5k5X?/%q?Goj?qMq.qX.(.5k%(-lqM/5.jv.5()l??;kMl/%5-.X.533(3jjl.5kkk%(5/!/qpmj?.;d5I,,M.j%(%5?(-,X(5X/%qli-jM.(l?%q?X-k55X-Zqqk)Xj%->X,/8q?ScX,/l3jL5j,j5kqXEX,qA,?jCqkq?uq,/??(-%q?k-.qbX,3qq((nj?.3(M%XM.-/5k/5qkk7,,.lkk%?X?5.-MX,/-7/,.j/??%--(3L3X,<.?kY%?kqM?-1X?/qq?9Gj?j3kX%K??MG-/Xw3?qND%,kk?(rl??%-?5Y/?X-qX,p.?kR%jluMl-255/pqk/-j?.R(?%-??Mq5?XdX/qw,?jDkl(ml??=M%?//?3h4?,X.?kH%?l3M%-=Xl/{ql2 j?.Qk?kX??M}5?Xk3?qq,?,3.%(Cl??SMR5E/?3f3?Q?.?kJ%?l9M?-lX?X3/Xi+j%.z(,%0??Mi5?X/3?q4,?j3k?(3l?%p-.5i/?3Ur?,rjXk#k?lkM?-^X?/<q?#-j?,Uj-%D??M!5?X63lq0,%j3k?(3l??3-?5B/?3V3M,7.?k_%%loMl-h5%X%q?+Lj?.?(?%0??lVM/XN3?q+,?j}.q(y%%?%-?53/?3M{?,).?k7(jl=M?-2X%/ q%vFb?.k(?%*??M)5?X53?33Y-j9k%(Nl%?N-?5:/?X3+?,Y.?k3%?l3M?-3X%/vqlKvj?.T(?%Vl??.5?XK3?q/,?jqk?(^%/?<-?5h/l3Si?,^.(kn%?lx?3-2X?/Hq?4Xj?.7(?QMjl..(.X+3jqB,?j6/5q,,k,5.X(5/?3?F?,8.?aMi.#X(l./kqljM(Cr,3.6(?%+k,.5kkl/?.?3-jXl3(q5l?k.-?54/???Mk-XX?//j3(,%M.3%l%MX--M5qXX3{q5j%j5k(%5l%M/-MXj/kq5h-,Xl-(/%M?./M/?q.mk,/.kk.%q?,M-X(/a/5ql+-,5.k(5%(?,-j5X/l/Xnljqk%(/%9?q-M??Mqq,X53qqq,j%MkkM-lk?.-qj?.l(?%Y??jMk4%llkM5-XXl/(3Xl??--?58/?M5M(55X%NlCklQMk-JX?/RMj-l5-/X(?%(??MR5???lk?X-?//3.33Ejjlk((5/?35Y?,Z.?/XAl,3jXk5XlX3q?U j?j3,5%!?lMs-3X>3?qfq?,?k?(ql??q-?5?/?/333,y.%kU%%lDM?-7-?X-q?+3j?.3(?%-??lu-kX=3(qt,?j*k,(rl?lX-?5q/?3/#?,3.?k-%jlVMl-+5l/Dql:>j?.N(k.-??MF5?5q3?qq,?,3,((all?>-l5S/?3V3?qM.?kq%?lqM?-XX?X3q.VWj(.hkq%D??Mc5?5l3?qq,?j/k?(3l?%eM35U/l3#El,w.(kv(%%-M?-/X?/5q?Upj?.Jkk%=?kM;5lXd3?qL,?,qk?(ql??X-?5=/?3fqj,V.lka%?lPM?-NX?X(q?Z4j?.q(?%V??MJ5?Xh3?/X,?jek?( %0?G-?5Wl.l?-.5/X./X+.k3M?--X?/iq?M/5)/qqkr,,,M&--XV3?qF/jXl/-qX.jjl.%k/%k-/M:5lXX3X%?l?M?-AX?MMM.MX3lX//q+jj(Mz-3Xf3?qm-(X5/k3Xvqjjk,k/lM537?/..?k!%?,?jk.X(?%/533,qMX3qlqM(-.Mkq(Xlx?55%55/(q5_%j/.M(j%k?5M--X7-3/qM,.%M%??.Mk-/Xk/.qq,,j-((%v%5?lM--5Xk35q(,,.jkX%l%XMl5q/%3/q0,q.M,?jq?,(5lq?q-jqMX/j-bk,..q5?X-3?q},?X5XTq5,(.,l%5</k3sm?,>Xq3jqqSXM?-5X?/zq?MX5qXX3Xe5??Mk5?Xv3??/5(53/q3{!kj5kk(l%k?,M%,^j3kF%?lrj(k/(%ll??MX5X/l3(qX??M-5?Xe3?-5-(X5/%,l,k?BM35e/?3DX,55Xkq/N.F3jjkl%(l5q?N5j?.m(?qXjl.3kX%53?ql,?jmk?3MFzjl.k(5%X?lM(-X.?k%%?lYM?kl(-ll?k-/5X/lq.Rj,kM!-qXo3?q>-(X//%qlp?,Xk%(,(W3nqq,s.?kzi(Y3..kq(kl55,55/q.s(.%C??Md((%k?.Mq-%jx./(Al??:(k(5(clX5X5q/%35qXj,%%-F5//Kq?WG/oXX3kq1.(.5k%(-lqM/5.j>k,(Bl??hk.k?l.?/M.-X/.k_%klrM?-6%jll?--Xj?.M(?%I??(X(.(/lk?3-M5lk?(Ml??A-?(3%.lXMk5,X-//%?l?M?-7X?%/M.MX5k/l3-mMu3MP5kX{3?qW-5Xq/qqjl??--?5S/??.MM5XX.3ka.lbMk-aX?/+M.M?X.//(?(q??M>5?l3?.?o-XXl3(qq)kj5kk%/%k?,M%5q/,35%?lkM?->X?l,?k-?X.X33(W/,%.lk?(Xl(qd63jEk?(4 Xj,kl(X%(lXM%5lX-3M%?l%M?-NX?M-?qM3X.q/3X6lj..jkkX=/qqL,?jiq?qk,l,lk.k3M,l5Mq, .kkY%?lu.,kq(5l5q?Flj?.t(?,Xj.j?kk?k?lM35.Xkk%qMl??g-?MA-q3)o%,f.lk8%(l^?%-/X?/Xq?33j?.!(?%Yl,MZ5%Xs3kqu,%jwj?k3l??3-?53/?3/&?d3.,k^%kl9l5-^X?/+q?RMj?.3(?%X??M35?X-XXq7,%jH.q(Rll?A-?5a/k5-c?,x.?kl%?lqM?-XMj/;q?CW/?.t(l%el%%/5?X33?qj,?jNk?.t(X?I-%5h/%3bq,,Hj%.-%?l/M?MkX?/Sq?3xjl.T((%d?(M<-MXxX?qj,?jXk?(ql??k-?5AXX3P<%,2.kkf%%lnMj-,X?/3q?q3j?.q(?%q??MX?jX*3?qCb%jtkl(7lk(--?5S/?Mur?,q.?.3.(l}M%-{-X/Nq?+74?j5(?%3??M35?533?qIy?jWkk(<ll?f-?52/?3.n?,3.?kX%?l3M?M355/Tq(eW;?.^(?%Sl%?l5?XX3?//,?jwk?.0l(?_-k5m/k3aq5,Cj%.%%?l-M?M5X?/dq?KWN%.K(k%8?jM*5%X6X?Xh,?jXk?(Xl??X-?-3Xk3CNj,H.jkA%?loM?-lX?/Mq?}qj?.&(?%Yl?M95kX 3,qN,?jhk?kql??/-?50/?33v?,K,5k<%(lyMl-fX%/0/?6Xj?.X(?%/??M?5?53/%qe,jjej5(Rl??mM%5?/?3M9?,q.?k!%?%3M.-R57/Q//__j?.nk%%l??Ml5?Xl3?q:,?,3.((r%3?!?q5v/?3)q%s-.?k(%?%-M?-KX?X3qj_s,X.Y(%%S??MQ-%533?q.,?,/k?(Ll?l3-%5WX-3dq/,u.?k*(%l%M?-,X?X%q?^bj?j3(j%+l?M*5,X03?q9K%,Mk?kql??%-?5g/?/3q/,yj%kL(llQM?-n5%/kq?q/j?j,(?%N???3?(X6/kqpqkjek?(z%%(/-?-5/?35d?,=.?.3.(lJ?j-u5k/9q?*Cj?j,(?%X???-5?Xq3?33,kjpkk(_((?F-?5E5?3%4?,X.?kX%?l.M?M3X./=qjSTd-.u(?%F???(5?XX3?q-,?j3k?.R%5?6-k5I/k3:2(,ij%k(%?l-M?M9X?/Dq?Bec%.P(k%Q?jMm5%XsX?Xl,?jXk?(Xl?%q-?5pX,3tQj,J.lkA%?lZ?%-%X?/Mq?q.j?.U(?(3%5M8-FXp3lqR,?j9.%k3l??l-?-(/?3oa?{3j-k<(3lw?q-PX?/Q3%_jj?.((?(l??M75?53/%q+aXj+.j(bl??8M%5./?3.E?,3.?kr%?%3?--L5-/*3(iuj?.2k%%/??M,5?X(3?qN,?,3.k(G%??T?354/?3Zq%,M.?.q%?lMM?-UX?X3/q<:,%.:k3%}??MV-%M/3?3/,?,qk?(Ll?l3l(58Xk3}3M,a.?k&(%%%M?M5X?5Xq?upj?j3k-%0ljM05.XS3?qom%,lk?kMl?lX-?5=/?3Gij,J.kko(,lvMl-UXkX-q?_2j?/-(?%q??lf?-X63%qE,ljZk((m%%?--?5X/?X3}?,Q.?k1(.lRM%-+Xk/9q%{Jp?.l(?%3??M35?X/3?33sXjukk(e(5?a-?5v/?3XF?,3.?kX%?l3M?--5(/uq%uvXj.U(l%i??MD5kM-3?qQ,?X-k?(ql?l3l(5T/%3>q-,V.?kKk?(,M?-3X?/3q?qMj?j3k?%Q?(MeMXXZ3?qdq?jMk?(/l??/-?5,/?X13m,G.kkn%lld?X-^X?/5q?;3j?.X(?%3??M-5jXU3%q_5jjwkl(Ul??h-k?-/?3v{?5-.?kq%?(b%3-8X%/4qlrw)%.7.?(???M35?X33?q/,?,3k((Zlk?>?55T/?3_E?<5.?k3%?lXM?-3X?583M_oj%.A(%%!%{M>5?XM3?q3,?j3k?(ql??f?/5!/?3Y{l,8.?k=%?liM?-SX%/Yq?nAj?.M(?%n??.Mkq(-?.MM-.Xlk?(-l??4-?(.%M?XM.5k/.kq%.lKM?-P5%5?q?Gqj?.3(?%I??ldM5X03lq=,ljokl(al?lX-?5//?3Re?,D.?k&%kl=Ml-}X(/_qlDWj?j-(?%B??Mq5?Xz3?qQ,?jGk?");local n=0;k.gpUldeDU(function()k.yiuLQKQc()n=n+1 end)local function e(e,l)if l then return n end;n=e+n;end local l,n,o=r(0,r,e,s,k.btGbAcXT);local function f()local n,l=k.btGbAcXT(s,e(1,3),e(5,6)+2);e(2);return(l*256)+n;end;local j=true;local j=0 local function p()local e=n();local n=n();local t=1;local d=(l(n,1,20)*(2^32))+e;local e=l(n,21,31);local n=((-1)^l(n,32));if(e==0)then if(d==j)then return n*0;else e=1;t=0;end;elseif(e==2047)then return(d==0)and(n*(1/0))or(n*(0/0));end;return k.kaOPTMsj(n,e-1023)*(t+(d/(2^52)));end;local _=n;local function b(n)local l;if(not n)then n=_();if(n==0)then return'';end;end;l=k.EVRnvPyc(s,e(1,3),e(5,6)+n-1);e(n)local e=""for n=(1+j),#l do e=e..k.EVRnvPyc(l,n,n)end return e;end;local _=#k.pZeBA_wj(c('\49.\48'))~=1 local e=n;local function z(...)return{...},k.DgAoFsSR('#',...)end local function y()local s={};local e={};local j={};local c={j,s,nil,e};local e=n()local r={}for d=1,e do local l=o();local n;if(l==1)then n=(o()~=#{});elseif(l==2)then local e=p();if _ and k.MkBZEbMo(k.pZeBA_wj(e),'.(\48+)$')then e=k.ZntXrVzK(e);end n=e;elseif(l==0)then n=b();end;r[d]=n;end;c[3]=o();for k=1,n()do local e=o();if(l(e,1,1)==0)then local o=l(e,2,3);local h=l(e,4,6);local e={f(),f(),nil,nil};if(o==0)then e[t]=f();e[a]=f();elseif(o==#{1})then e[t]=n();elseif(o==u[2])then e[t]=n()-(2^16)elseif(o==u[3])then e[t]=n()-(2^16)e[a]=f();end;if(l(h,1,1)==1)then e[d]=r[e[d]]end if(l(h,2,2)==1)then e[t]=r[e[t]]end if(l(h,3,3)==1)then e[a]=r[e[a]]end j[k]=e;end end;for e=1,n()do s[e-(#{1})]=y();end;return c;end;local function g(l,n,e)local d=n;local d=e;return c(k.MkBZEbMo(k.MkBZEbMo(({k.gpUldeDU(l)})[2],n),e))end local function _(j,e,o)local function le(...)local f,p,c,ne,u,n,s,y,m,b,g,l;local e=0;while-1<e do if 2<e then if e>4 then if e>=2 then repeat if e>5 then e=-2;break;end;l=r(7);until true;else e=-2;end else if e==4 then b=k.DgAoFsSR('#',...)-1;g={};else y={};m={...};end end else if e<1 then f=r(6,58,1,81,j);p=r(6,43,2,52,j);else if 2~=e then c=r(6,33,3,70,j);u=z ne=0;else n=-41;s=-1;end end end e=e+1;end;for e=0,b do if(e>=c)then y[e-c]=m[e+1];else l[e]=m[e+1];end;end;local e=b-c+1 local e;local r;local function k(...)while true do end end while true do if n<-40 then n=n+42 end e=f[n];r=e[ee];if r<32 then if r>15 then if 24>r then if r>19 then if r>21 then if r~=23 then local e=e[d];do return h(l,e,s)end;else l[e[d]]=(e[t]~=0);end else if 20<r then local r,s;for k=0,6 do if k>2 then if 5>k then if-1<=k then repeat if k<4 then l[e[d]]=o[e[t]];n=n+1;e=f[n];break;end;l[e[d]]=o[e[t]];n=n+1;e=f[n];until true;else l[e[d]]=o[e[t]];n=n+1;e=f[n];end else if 5==k then r=e[d];s=l[e[t]];l[r+1]=s;l[r]=s[e[a]];n=n+1;e=f[n];else l(e[d],e[t]);end end else if 1>k then r=e[d];s=l[e[t]];l[r+1]=s;l[r]=s[e[a]];n=n+1;e=f[n];else if-1<k then repeat if k<2 then l[e[d]]=l[e[t]];n=n+1;e=f[n];break;end;r=e[d]l[r]=l[r](h(l,r+1,e[t]))n=n+1;e=f[n];until true;else r=e[d]l[r]=l[r](h(l,r+1,e[t]))n=n+1;e=f[n];end end end end else o[e[t]]=l[e[d]];end end else if 17>=r then if r>16 then local n=e[d]l[n](h(l,n+1,e[t]))else l(e[d],e[t]);end else if 18<r then for r=0,6 do if r<=2 then if 0<r then if r>-2 then for a=25,80 do if 2~=r then l[e[d]]=o[e[t]];n=n+1;e=f[n];break;end;l[e[d]]=o[e[t]];n=n+1;e=f[n];break;end;else l[e[d]]=o[e[t]];n=n+1;e=f[n];end else l[e[d]]=o[e[t]];n=n+1;e=f[n];end else if r>=5 then if 6>r then l[e[d]]=o[e[t]];n=n+1;e=f[n];else l[e[d]]=o[e[t]];end else if-1<=r then repeat if 3~=r then l[e[d]]=o[e[t]];n=n+1;e=f[n];break;end;l[e[d]]=o[e[t]];n=n+1;e=f[n];until true;else l[e[d]]=o[e[t]];n=n+1;e=f[n];end end end end else for r=0,6 do if r>=3 then if r<5 then if 4~=r then l[e[d]]=o[e[t]];n=n+1;e=f[n];else l[e[d]]=o[e[t]];n=n+1;e=f[n];end else if 6>r then l[e[d]]=o[e[t]];n=n+1;e=f[n];else l[e[d]]=o[e[t]];end end else if 0>=r then l[e[d]]=o[e[t]];n=n+1;e=f[n];else if 0<r then for a=48,97 do if r>1 then l[e[d]]=o[e[t]];n=n+1;e=f[n];break;end;l[e[d]]=o[e[t]];n=n+1;e=f[n];break;end;else l[e[d]]=o[e[t]];n=n+1;e=f[n];end end end end end end end else if 27<r then if 30>r then if 24<=r then for k=25,82 do if 29>r then local k;for r=0,5 do if 3>r then if 0>=r then l[e[d]]=l[e[t]][e[a]];n=n+1;e=f[n];else if r~=-1 then repeat if 2>r then l[e[d]]=o[e[t]];n=n+1;e=f[n];break;end;l[e[d]]=l[e[t]][e[a]];n=n+1;e=f[n];until true;else l[e[d]]=o[e[t]];n=n+1;e=f[n];end end else if r>3 then if r~=5 then k=e[d]l[k]=l[k](h(l,k+1,e[t]))n=n+1;e=f[n];else if not l[e[d]]then n=n+1;else n=e[t];end;end else l[e[d]]=l[e[t]][e[a]];n=n+1;e=f[n];end end end break;end;l[e[d]][e[t]]=l[e[a]];n=n+1;e=f[n];do return end;break;end;else l[e[d]][e[t]]=l[e[a]];n=n+1;e=f[n];do return end;end else if r>30 then local r,k;for s=0,6 do if s>=3 then if 4<s then if s>=3 then repeat if s<6 then r=e[d];k=l[e[t]];l[r+1]=k;l[r]=k[e[a]];n=n+1;e=f[n];break;end;l(e[d],e[t]);until true;else r=e[d];k=l[e[t]];l[r+1]=k;l[r]=k[e[a]];n=n+1;e=f[n];end else if s>2 then repeat if 3~=s then r=e[d]l[r]=l[r](h(l,r+1,e[t]))n=n+1;e=f[n];break;end;l(e[d],e[t]);n=n+1;e=f[n];until true;else l(e[d],e[t]);n=n+1;e=f[n];end end else if 0>=s then r=e[d]l[r](h(l,r+1,e[t]))n=n+1;e=f[n];else if s>=-3 then for h=27,76 do if 2>s then l[e[d]]=o[e[t]];n=n+1;e=f[n];break;end;r=e[d];k=l[e[t]];l[r+1]=k;l[r]=k[e[a]];n=n+1;e=f[n];break;end;else r=e[d];k=l[e[t]];l[r+1]=k;l[r]=k[e[a]];n=n+1;e=f[n];end end end end else local e=e[d]l[e]=l[e]()end end else if r>=26 then if 27>r then local a;for r=0,4 do if r>=2 then if r>=3 then if 0~=r then repeat if r~=4 then a=e[d]l[a](h(l,a+1,e[t]))n=n+1;e=f[n];break;end;n=e[t];until true;else n=e[t];end else l[e[d]]=o[e[t]];n=n+1;e=f[n];end else if-4~=r then for a=39,67 do if r>0 then l[e[d]]=o[e[t]];n=n+1;e=f[n];break;end;l[e[d]]=o[e[t]];n=n+1;e=f[n];break;end;else l[e[d]]=o[e[t]];n=n+1;e=f[n];end end end else do return end;end else if 21<r then for k=20,55 do if 25>r then local r,o;for k=0,4 do if k>1 then if k<3 then r=e[d]l[r]=l[r](h(l,r+1,e[t]))n=n+1;e=f[n];else if-1~=k then for h=33,59 do if 3<k then r=e[d]l[r](l[r+1])break;end;r=e[d];o=l[e[t]];l[r+1]=o;l[r]=o[e[a]];n=n+1;e=f[n];break;end;else r=e[d];o=l[e[t]];l[r+1]=o;l[r]=o[e[a]];n=n+1;e=f[n];end end else if k~=-4 then repeat if 1~=k then r=e[d];o=l[e[t]];l[r+1]=o;l[r]=o[e[a]];n=n+1;e=f[n];break;end;l(e[d],e[t]);n=n+1;e=f[n];until true;else r=e[d];o=l[e[t]];l[r+1]=o;l[r]=o[e[a]];n=n+1;e=f[n];end end end break;end;local r,k;r=e[d]l[r](h(l,r+1,e[t]))n=n+1;e=f[n];l[e[d]]=o[e[t]];n=n+1;e=f[n];r=e[d];k=l[e[t]];l[r+1]=k;l[r]=k[e[a]];n=n+1;e=f[n];l(e[d],e[t]);n=n+1;e=f[n];r=e[d]l[r]=l[r](h(l,r+1,e[t]))n=n+1;e=f[n];r=e[d];k=l[e[t]];l[r+1]=k;l[r]=k[e[a]];n=n+1;e=f[n];l(e[d],e[t]);break;end;else local r,o;for k=0,4 do if k>1 then if k<3 then r=e[d]l[r]=l[r](h(l,r+1,e[t]))n=n+1;e=f[n];else if-1~=k then for h=33,59 do if 3<k then r=e[d]l[r](l[r+1])break;end;r=e[d];o=l[e[t]];l[r+1]=o;l[r]=o[e[a]];n=n+1;e=f[n];break;end;else r=e[d];o=l[e[t]];l[r+1]=o;l[r]=o[e[a]];n=n+1;e=f[n];end end else if k~=-4 then repeat if 1~=k then r=e[d];o=l[e[t]];l[r+1]=o;l[r]=o[e[a]];n=n+1;e=f[n];break;end;l(e[d],e[t]);n=n+1;e=f[n];until true;else r=e[d];o=l[e[t]];l[r+1]=o;l[r]=o[e[a]];n=n+1;e=f[n];end end end end end end end else if r>=8 then if 12>r then if 10<=r then if r~=11 then n=e[t];else local e=e[d]l[e](l[e+1])end else if 7<=r then for n=48,52 do if r~=8 then local e=e[d]l[e]=l[e](h(l,e+1,s))break;end;local d=e[d];local n=l[e[t]];l[d+1]=n;l[d]=n[e[a]];break;end;else local d=e[d];local n=l[e[t]];l[d+1]=n;l[d]=n[e[a]];end end else if r<=13 then if r>=10 then for f=48,82 do if r~=12 then l[e[d]]=l[e[t]][e[a]];break;end;if(l[e[d]]~=e[a])then n=n+1;else n=e[t];end;break;end;else if(l[e[d]]~=e[a])then n=n+1;else n=e[t];end;end else if 14<r then local e=e[d]l[e]=l[e](h(l,e+1,s))else l[e[d]]=l[e[t]];end end end else if r>3 then if r<6 then if r<5 then l[e[d]]=o[e[t]];else local n=e[d]l[n](h(l,n+1,e[t]))end else if r>4 then for o=45,64 do if r<7 then local o,u,k,s,b,j,c,r;for r=0,5 do if r<3 then if 1<=r then if r==1 then o=e[d]l[o]=l[o](h(l,o+1,e[t]))n=n+1;e=f[n];else o=e[d];u=l[e[t]];l[o+1]=u;l[o]=u[e[a]];n=n+1;e=f[n];end else l(e[d],e[t]);n=n+1;e=f[n];end else if 4<=r then if r>4 then if l[e[d]]then n=n+1;else n=e[t];end;else o=e[d]l[o]=l[o](h(l,o+1,e[t]))n=n+1;e=f[n];end else r=0;while r>-1 do if r<3 then if r>=1 then if-1<=r then repeat if 2~=r then s=d;break;end;b=t;until true;else s=d;end else k=e;end else if r>=5 then if 2<r then for e=44,83 do if 5<r then r=-2;break;end;l(c,j);break;end;else l(c,j);end else if r>=1 then for e=28,76 do if r<4 then j=k[b];break;end;c=k[s];break;end;else c=k[s];end end end r=r+1 end n=n+1;e=f[n];end end end break;end;do return end;break;end;else local o,j,s,c,b,u,k,r;for r=0,5 do if r<3 then if 1<=r then if r==1 then o=e[d]l[o]=l[o](h(l,o+1,e[t]))n=n+1;e=f[n];else o=e[d];j=l[e[t]];l[o+1]=j;l[o]=j[e[a]];n=n+1;e=f[n];end else l(e[d],e[t]);n=n+1;e=f[n];end else if 4<=r then if r>4 then if l[e[d]]then n=n+1;else n=e[t];end;else o=e[d]l[o]=l[o](h(l,o+1,e[t]))n=n+1;e=f[n];end else r=0;while r>-1 do if r<3 then if r>=1 then if-1<=r then repeat if 2~=r then c=d;break;end;b=t;until true;else c=d;end else s=e;end else if r>=5 then if 2<r then for e=44,83 do if 5<r then r=-2;break;end;l(k,u);break;end;else l(k,u);end else if r>=1 then for e=28,76 do if r<4 then u=s[b];break;end;k=s[c];break;end;else k=s[c];end end end r=r+1 end n=n+1;e=f[n];end end end end end else if 2<=r then if 0<=r then repeat if r<3 then l[e[d]]=_(p[e[t]],nil,o);break;end;l[e[d]][e[t]]=l[e[a]];until true;else l[e[d]]=_(p[e[t]],nil,o);end else if r~=-4 then for n=40,80 do if r>0 then local e=e[d];do return h(l,e,s)end;break;end;local n=e[d];do return l[n](h(l,n+1,e[t]))end;break;end;else local n=e[d];do return l[n](h(l,n+1,e[t]))end;end end end end end else if 48>r then if r>=40 then if 44>r then if r<42 then if r>=39 then repeat if r~=40 then local o,k,s,c,b,u,j,r;o=e[d];k=l[e[t]];l[o+1]=k;l[o]=k[e[a]];n=n+1;e=f[n];r=0;while r>-1 do if 3>r then if 1>r then s=e;else if-1<=r then repeat if 1<r then b=t;break;end;c=d;until true;else c=d;end end else if r<=4 then if 3==r then u=s[b];else j=s[c];end else if r>2 then repeat if 5<r then r=-2;break;end;l(j,u);until true;else r=-2;end end end r=r+1 end n=n+1;e=f[n];o=e[d]l[o]=l[o](h(l,o+1,e[t]))n=n+1;e=f[n];o=e[d];k=l[e[t]];l[o+1]=k;l[o]=k[e[a]];n=n+1;e=f[n];l(e[d],e[t]);n=n+1;e=f[n];o=e[d]l[o]=l[o](h(l,o+1,e[t]))n=n+1;e=f[n];if l[e[d]]then n=n+1;else n=e[t];end;break;end;local r,k;l[e[d]]=o[e[t]];n=n+1;e=f[n];r=e[d];k=l[e[t]];l[r+1]=k;l[r]=k[e[a]];n=n+1;e=f[n];l[e[d]]=l[e[t]];n=n+1;e=f[n];r=e[d]l[r](h(l,r+1,e[t]))n=n+1;e=f[n];do return end;until true;else local r,k,s,c,b,j,u,o;r=e[d];k=l[e[t]];l[r+1]=k;l[r]=k[e[a]];n=n+1;e=f[n];o=0;while o>-1 do if 3>o then if 1>o then s=e;else if-1<=o then repeat if 1<o then b=t;break;end;c=d;until true;else c=d;end end else if o<=4 then if 3==o then j=s[b];else u=s[c];end else if o>2 then repeat if 5<o then o=-2;break;end;l(u,j);until true;else o=-2;end end end o=o+1 end n=n+1;e=f[n];r=e[d]l[r]=l[r](h(l,r+1,e[t]))n=n+1;e=f[n];r=e[d];k=l[e[t]];l[r+1]=k;l[r]=k[e[a]];n=n+1;e=f[n];l(e[d],e[t]);n=n+1;e=f[n];r=e[d]l[r]=l[r](h(l,r+1,e[t]))n=n+1;e=f[n];if l[e[d]]then n=n+1;else n=e[t];end;end else if 39~=r then for f=16,74 do if r~=42 then if(l[e[d]]~=e[a])then n=n+1;else n=e[t];end;break;end;l[e[d]]=l[e[t]][e[a]];break;end;else if(l[e[d]]~=e[a])then n=n+1;else n=e[t];end;end end else if 45<r then if r==47 then local r;for k=0,5 do if 3>k then if 1<=k then if 2~=k then l[e[d]]=o[e[t]];n=n+1;e=f[n];else l[e[d]]=l[e[t]][e[a]];n=n+1;e=f[n];end else l[e[d]]=l[e[t]][e[a]];n=n+1;e=f[n];end else if k>=4 then if k>=3 then repeat if k~=5 then r=e[d]l[r]=l[r](h(l,r+1,e[t]))n=n+1;e=f[n];break;end;if l[e[d]]then n=n+1;else n=e[t];end;until true;else r=e[d]l[r]=l[r](h(l,r+1,e[t]))n=n+1;e=f[n];end else l[e[d]]=l[e[t]][e[a]];n=n+1;e=f[n];end end end else local n=e[d];local d=l[e[t]];l[n+1]=d;l[n]=d[e[a]];end else if r>44 then local e=e[d]l[e]=l[e]()else l[e[d]]=(e[t]~=0);end end end else if 36<=r then if r<38 then if r>36 then if not l[e[d]]then n=n+1;else n=e[t];end;else local r,s;for k=0,6 do if 3<=k then if 4<k then if k~=1 then for r=32,96 do if 6~=k then l[e[d]]=l[e[t]][e[a]];n=n+1;e=f[n];break;end;l[e[d]]=l[e[t]][e[a]];break;end;else l[e[d]]=l[e[t]][e[a]];end else if k>-1 then for o=13,87 do if 3<k then r=e[d]l[r]=l[r](h(l,r+1,e[t]))n=n+1;e=f[n];break;end;l(e[d],e[t]);n=n+1;e=f[n];break;end;else r=e[d]l[r]=l[r](h(l,r+1,e[t]))n=n+1;e=f[n];end end else if k<=0 then l[e[d]][e[t]]=l[e[a]];n=n+1;e=f[n];else if 2==k then r=e[d];s=l[e[t]];l[r+1]=s;l[r]=s[e[a]];n=n+1;e=f[n];else l[e[d]]=o[e[t]];n=n+1;e=f[n];end end end end end else if r>35 then for o=18,86 do if r>38 then local o,c,s,k,j,b,u,r;o=e[d];c=l[e[t]];l[o+1]=c;l[o]=c[e[a]];n=n+1;e=f[n];r=0;while r>-1 do if r>=3 then if 4>=r then if r==3 then b=s[j];else u=s[k];end else if 3~=r then repeat if 6~=r then l(u,b);break;end;r=-2;until true;else r=-2;end end else if r>0 then if-1<r then repeat if r~=2 then k=d;break;end;j=t;until true;else k=d;end else s=e;end end r=r+1 end n=n+1;e=f[n];o=e[d]l[o]=l[o](h(l,o+1,e[t]))n=n+1;e=f[n];o=e[d];c=l[e[t]];l[o+1]=c;l[o]=c[e[a]];n=n+1;e=f[n];r=0;while r>-1 do if 3>r then if r<1 then s=e;else if-3<r then repeat if r<2 then k=d;break;end;j=t;until true;else k=d;end end else if r<=4 then if r~=1 then for e=45,85 do if 3<r then u=s[k];break;end;b=s[j];break;end;else u=s[k];end else if r>=3 then repeat if r~=5 then r=-2;break;end;l(u,b);until true;else r=-2;end end end r=r+1 end n=n+1;e=f[n];l[e[d]]=(e[t]~=0);n=n+1;e=f[n];o=e[d];do return l[o](h(l,o+1,e[t]))end;break;end;local n=e[d];do return l[n](h(l,n+1,e[t]))end;break;end;else local n=e[d];do return l[n](h(l,n+1,e[t]))end;end end else if 33<r then if r>=32 then for n=27,93 do if 34~=r then l[e[d]]=_(p[e[t]],nil,o);break;end;local n=e[d]l[n]=l[n](h(l,n+1,e[t]))break;end;else local n=e[d]l[n]=l[n](h(l,n+1,e[t]))end else if r>32 then l[e[d]]=o[e[t]];n=n+1;e=f[n];l[e[d]]=o[e[t]];n=n+1;e=f[n];l[e[d]]=o[e[t]];n=n+1;e=f[n];l[e[d]]=o[e[t]];n=n+1;e=f[n];l[e[d]]=o[e[t]];n=n+1;e=f[n];l[e[d]]=o[e[t]];n=n+1;e=f[n];l[e[d]]=o[e[t]];else l(e[d],e[t]);end end end end else if r<56 then if r>=52 then if r>=54 then if 53<r then repeat if r<55 then n=e[t];break;end;local f,r,o,k,h,a;local n=0;while n>-1 do if 3>=n then if 2<=n then if n>-2 then for e=10,78 do if 3>n then o=t;break;end;k=l;break;end;else o=t;end else if-3~=n then for l=23,92 do if n>0 then r=d;break;end;f=e;break;end;else r=d;end end else if n>5 then if 6==n then l[a]=h;else n=-2;end else if n>4 then a=f[r];else h=k[f[o]];end end end n=n+1 end until true;else n=e[t];end else if 50<r then for f=11,92 do if r~=52 then if not l[e[d]]then n=n+1;else n=e[t];end;break;end;l[e[d]][e[t]]=l[e[a]];break;end;else if not l[e[d]]then n=n+1;else n=e[t];end;end end else if r>49 then if r==50 then local n=e[d]local d,e=u(l[n](h(l,n+1,e[t])))s=e+n-1 local e=0;for n=n,s do e=e+1;l[n]=d[e];end;else l[e[d]]=o[e[t]];end else if r>=45 then repeat if 48~=r then for r=0,3 do if r>1 then if r>1 then for h=39,53 do if 2<r then if(l[e[d]]~=e[a])then n=n+1;else n=e[t];end;break;end;l[e[d]]=o[e[t]];n=n+1;e=f[n];break;end;else l[e[d]]=o[e[t]];n=n+1;e=f[n];end else if r>=-4 then repeat if r>0 then o[e[t]]=l[e[d]];n=n+1;e=f[n];break;end;l[e[d]]=(e[t]~=0);n=n+1;e=f[n];until true;else l[e[d]]=(e[t]~=0);n=n+1;e=f[n];end end end break;end;local r,k,j,b,c;for o=0,6 do if o>2 then if 4>=o then if o>=2 then for a=34,89 do if o>3 then r=e[d]l[r]=l[r](h(l,r+1,s))n=n+1;e=f[n];break;end;r=e[d]j,b=u(l[r](h(l,r+1,e[t])))s=b+r-1 c=0;for e=r,s do c=c+1;l[e]=j[c];end;n=n+1;e=f[n];break;end;else r=e[d]l[r]=l[r](h(l,r+1,s))n=n+1;e=f[n];end else if o>2 then for h=43,89 do if o>5 then r=e[d];k=l[e[t]];l[r+1]=k;l[r]=k[e[a]];break;end;r=e[d]l[r]=l[r]()n=n+1;e=f[n];break;end;else r=e[d]l[r]=l[r]()n=n+1;e=f[n];end end else if o>0 then if-2<o then repeat if o<2 then l(e[d],e[t]);n=n+1;e=f[n];break;end;l[e[d]]=(e[t]~=0);n=n+1;e=f[n];until true;else l(e[d],e[t]);n=n+1;e=f[n];end else r=e[d];k=l[e[t]];l[r+1]=k;l[r]=k[e[a]];n=n+1;e=f[n];end end end until true;else local r,k,b,j,c;for o=0,6 do if o>2 then if 4>=o then if o>=2 then for a=34,89 do if o>3 then r=e[d]l[r]=l[r](h(l,r+1,s))n=n+1;e=f[n];break;end;r=e[d]b,j=u(l[r](h(l,r+1,e[t])))s=j+r-1 c=0;for e=r,s do c=c+1;l[e]=b[c];end;n=n+1;e=f[n];break;end;else r=e[d]l[r]=l[r](h(l,r+1,s))n=n+1;e=f[n];end else if o>2 then for h=43,89 do if o>5 then r=e[d];k=l[e[t]];l[r+1]=k;l[r]=k[e[a]];break;end;r=e[d]l[r]=l[r]()n=n+1;e=f[n];break;end;else r=e[d]l[r]=l[r]()n=n+1;e=f[n];end end else if o>0 then if-2<o then repeat if o<2 then l(e[d],e[t]);n=n+1;e=f[n];break;end;l[e[d]]=(e[t]~=0);n=n+1;e=f[n];until true;else l(e[d],e[t]);n=n+1;e=f[n];end else r=e[d];k=l[e[t]];l[r+1]=k;l[r]=k[e[a]];n=n+1;e=f[n];end end end end end end else if 60>r then if r<58 then if 55~=r then for h=42,83 do if 56~=r then local k,h;for r=0,6 do if r<=2 then if r<1 then k=e[d];h=l[e[t]];l[k+1]=h;l[k]=h[e[a]];n=n+1;e=f[n];else if r>0 then repeat if r>1 then l[e[d]]=o[e[t]];n=n+1;e=f[n];break;end;l[e[d]]=l[e[t]];n=n+1;e=f[n];until true;else l[e[d]]=o[e[t]];n=n+1;e=f[n];end end else if 5<=r then if r~=1 then for a=38,83 do if 6>r then l[e[d]]=o[e[t]];n=n+1;e=f[n];break;end;l[e[d]]=o[e[t]];break;end;else l[e[d]]=o[e[t]];n=n+1;e=f[n];end else if r==4 then l[e[d]]=o[e[t]];n=n+1;e=f[n];else l[e[d]]=o[e[t]];n=n+1;e=f[n];end end end end break;end;if l[e[d]]then n=n+1;else n=e[t];end;break;end;else local k,h;for r=0,6 do if r<=2 then if r<1 then k=e[d];h=l[e[t]];l[k+1]=h;l[k]=h[e[a]];n=n+1;e=f[n];else if r>0 then repeat if r>1 then l[e[d]]=o[e[t]];n=n+1;e=f[n];break;end;l[e[d]]=l[e[t]];n=n+1;e=f[n];until true;else l[e[d]]=o[e[t]];n=n+1;e=f[n];end end else if 5<=r then if r~=1 then for a=38,83 do if 6>r then l[e[d]]=o[e[t]];n=n+1;e=f[n];break;end;l[e[d]]=o[e[t]];break;end;else l[e[d]]=o[e[t]];n=n+1;e=f[n];end else if r==4 then l[e[d]]=o[e[t]];n=n+1;e=f[n];else l[e[d]]=o[e[t]];n=n+1;e=f[n];end end end end end else if r~=55 then repeat if r<59 then o[e[t]]=l[e[d]];break;end;if l[e[d]]then n=n+1;else n=e[t];end;until true;else if l[e[d]]then n=n+1;else n=e[t];end;end end else if 62>r then if r~=59 then repeat if 61>r then local n=e[d]local d,e=u(l[n](h(l,n+1,e[t])))s=e+n-1 local e=0;for n=n,s do e=e+1;l[n]=d[e];end;break;end;local k;for r=0,6 do if 2>=r then if 1<=r then if-1~=r then repeat if 1~=r then l[e[d]]=o[e[t]];n=n+1;e=f[n];break;end;l[e[d]]=l[e[t]][e[a]];n=n+1;e=f[n];until true;else l[e[d]]=o[e[t]];n=n+1;e=f[n];end else l[e[d]]=o[e[t]];n=n+1;e=f[n];end else if 4<r then if 4<=r then for o=43,92 do if r~=6 then k=e[d]l[k]=l[k](h(l,k+1,e[t]))n=n+1;e=f[n];break;end;if l[e[d]]then n=n+1;else n=e[t];end;break;end;else k=e[d]l[k]=l[k](h(l,k+1,e[t]))n=n+1;e=f[n];end else if 2<=r then for o=10,81 do if r~=4 then l[e[d]]=l[e[t]][e[a]];n=n+1;e=f[n];break;end;l[e[d]]=l[e[t]][e[a]];n=n+1;e=f[n];break;end;else l[e[d]]=l[e[t]][e[a]];n=n+1;e=f[n];end end end end until true;else local n=e[d]local d,e=u(l[n](h(l,n+1,e[t])))s=e+n-1 local e=0;for n=n,s do e=e+1;l[n]=d[e];end;end else if r>=60 then repeat if r~=62 then local n=e[d]l[n]=l[n](h(l,n+1,e[t]))break;end;local e=e[d]l[e](l[e+1])until true;else local e=e[d]l[e](l[e+1])end end end end end end n=1+n;end;end;return le end;local d=0xff;local a={};local r=(1);local t='';(function(n)local l=n local f=0x00 local e=0x00 l={(function(o)if f>0x28 then return o end f=f+1 e=(e+0xf6a-o)%0x38 return(e%0x03==0x1 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x9c);a[r]=ne();r=r+d;end return true end)'RObTs'and l[0x3](0x1dd+o))or(e%0x03==0x0 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x41);t={t..'\58 a',t};a[r]=y();r=r+(1);t[1]='\58'..t[1];d[2]=0xff;end return true end)'YdVCf'and l[0x2](o+0x149))or(e%0x03==0x2 and(function(l)if not n[l]then e=e+0x01 n[l]=(0xb8);d[2]=(d[2]*(g(function()a()end,h(t))-g(d[1],h(t))))+1;a[r]={};d=d[2];r=r+d;end return true end)'embcE'and l[0x1](o+0x38f))or o end),(function(r)if f>0x2d then return r end f=f+1 e=(e+0x12cf-r)%0x41 return(e%0x03==0x2 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x9e);end return true end)'xWEfx'and l[0x2](0x120+r))or(e%0x03==0x0 and(function(l)if not n[l]then e=e+0x01 n[l]=(0xb0);end return true end)'eRrDp'and l[0x3](r+0xed))or(e%0x03==0x1 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x1c);t='\37';d={function()d()end};t=t..'\100\43';end return true end)'rPqer'and l[0x1](r+0x163))or r end),(function(d)if f>0x20 then return d end f=f+1 e=(e+0xf65-d)%0x44 return(e%0x03==0x1 and(function(l)if not n[l]then e=e+0x01 n[l]=(0xf4);end return true end)'qvdCI'and l[0x3](0x19a+d))or(e%0x03==0x0 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x4a);end return true end)'rFWad'and l[0x1](d+0x2e7))or(e%0x03==0x2 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x30);end return true end)'kmoZG'and l[0x2](d+0x1fd))or d end)}l[0x2](0xcd9)end){};local e=_(h(a));return e(...);end return g((function()local n={}local e=0x01;local l;if k.JZAYeIdV then l=k.JZAYeIdV(g)else l=''end if k.MkBZEbMo(l,k.EPXkmRhn)then e=e+0;else e=e+1;end n[e]=0x02;n[n[e]+0x01]=0x03;return n;end)(),...)end)((function(e,l,n,d,t,f)local f;if e<=3 then if e>=2 then if-2~=e then repeat if e~=2 then do return l(1),l(4,t,d,n,l),l(5,t,d,n)end;break;end;do return 16777216,65536,256 end;until true;else do return 16777216,65536,256 end;end else if 0==e then do return l(1),l(4,t,d,n,l),l(5,t,d,n)end;else do return function(l,e,n)if n then local e=(l/2^(e-1))%2^((n-1)-(e-1)+1);return e-e%1;else local e=2^(e-1);return(l%(e+e)>=e)and 1 or 0;end;end;end;end end else if 6>e then if 0<e then repeat if e>4 then local e=d;do return function()local n=l(n,e(e,e),e(e,e));e(1);return n;end;end;break;end;local e=d;local o,t,d=t(2);do return function()local n,f,l,r=l(n,e(e,e),e(e,e)+3);e(4);return(r*o)+(l*t)+(f*d)+n;end;end;until true;else local e=d;do return function()local n=l(n,e(e,e),e(e,e));e(1);return n;end;end;end else if e>6 then if 6<e then repeat if e~=7 then do return n(e,nil,n);end break;end;do return setmetatable({},{['__\99\97\108\108']=function(e,d,t,l,n)if n then return e[n]elseif l then return e else e[d]=t end end})end until true;else do return n(e,nil,n);end end else do return t[n]end;end end end end),...)

return module
