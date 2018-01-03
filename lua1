removeFromParent
if 
	setCascadeColorEnabled(true) --透明值 共享
	
	sp1->retain(); 	引用加1
	sp1->release(); 自动释放
	
	cc.Director:getInstance():getTextureCache():removeTexture(sprite:getTexture())
	sprite:getTexture():setAntiAliasTexParameters()
	setBlendFunc
	D:\lua-protobuf\protobuf-2.4.1\python>setup.py install
	assert(data_1.EvendGemId~=0,"不能为0")
	--内容缩放因子      背景图片资源宽高／屏幕宽高
	cc.Director:getInstance():setContentScaleFactor(1024 / 960)
	cc.FileUtils:getInstance():isFileExist(data.Pic) 判断文件和文件夹是否存在
	--弹窗提示	Enumeration.UnionMemberPos()
	cc.Director:getInstance():getWinSize()

	addNodeEventListener用于注册系统事件的监听，如触摸事件、帧事件、按键事件等。
	addEventListener用于注册自定义事件的监听，节点必须经过组件扩展后才能使用。 

	cc.Director:getInstance():runWithScene(scene) --运行场景
	cc.Director:getInstance():popScene()          --弹出场景
	cc.Director:getInstance():pushScene(scene)    --压入场景
	cc.Director:getInstance():replaceScene(scene) --停止先前场景，运行下一场景

	cc.LayerMultiplex:create(layer)--多层管理
	cc.LayerGradient:create(cc.c4b(255,0,0,125),cc.c4b(0,0,255,125))

	cc.Application:getInstance():getTargetPlatform() -- 返回当前使用的操作系统
	cc.PLATFORM_OS_WINDOWS 0 | cc.PLATFORM_OS_MAC     2  | cc.PLATFORM_OS_IPHONE  4
	cc.PLATFORM_OS_IPAD    5 |cc.PLATFORM_OS_ANDROID  3

	getBoundingBox --有时候数值不对  *****
	--点和矩形的碰撞
	local rect = self._truePath[1]:getBoundingBox()
		  local sp2X = sp2:getPositionX()
		  local sp2Y = sp2:getPositionY()
		  if cc.rectContainsPoint(rect, cc.p(sp2X, sp2Y)) then
	   -- 检查触摸点的位置是否在矩形内
			 print("碰上")
		  end
	(sprite2->getBoundingBox().intersectsRect(sprite1->getBoundingBox()))

	math.randomseed(os.time())    -- 拿当前时间当种子 避免随机重复
	math.random(1,7)
	---调用父类删除自己
	ignoreAnchorPointForPosition(false)--解除对层的锚点设置

	btn:setOpacity(0)
	icon:setRotation(0)
	getLocalZOrder
	setLocalZOrder
	setGlobalZOrder()
	getGlobalZOrder(),
	require("socket")
	socket.sleep(10)
	
	require "lfs"
	if not io.exists(self.path) then
		lfs.mkdir(self.path) --目录不存在，创建此目录
	end
	
	local node = cc.uiloader:seekNodeByTag(scene,99)

	initWithSpriteFrameName()

	repeat  until true 循环
	while () do end

	module("CommonFunc", package.seeall)

	for k = 4, 1, -1 do  -- 4 3 2 1
	 
	local runningScene = cc.Director:getInstance():getRunningScene()
	if runningScene.__cname == "HeroScene" then
		runningScene:updataUI()
	end

	local point = node:convertToNodeSpace(touch:getLocation())--世界坐标相对于该节点的位子
	local point = node:convertToWorldSpaceAR(cc.p(0,0))--获得节点在世界坐标的位子
		print(point.x)
		print(point.y)

	1、cc.rectIntersectsRect(ra,rb) 判断两个矩形是否相交，若相交，返回true
	用例：
	var rectA = cc.rect(0,0,5,10);
	var rectB = cc.rect(4,9,5,10);
	var r = cc.rectIntersectsRect(rectA, rectB);
	if(!r) throw "Fail rectIntersectsRect 1”;
	2、cc.rectContainsPoint(rect,point) 判断某个矩形中是否包含某个点，若包含，返回true
	3、cc.pointEqualToPoint(point1,point2) 判断两个点是否相等，相等返回true
	4、cc.rectEqualToRect(rect1,rect2)判断两个矩形是否相等
	5、cc._rectEqualToZero(rect)判断该矩形是否为0矩阵
	6、cc.rectOverlapsRect(rectA,rectB)判断两个矩形是否部分重叠
	7、cc.rectIntersection(rectA,rectB)返回两个矩形重叠部分
	8、cc.rectUnion(rectA,rectB)返回包含这两个矩形的最小矩形

--***背景音乐**

	local bgMusicPath = cc.FileUtils:getInstance():fullPathForFilename("mp3/wangfei.mp3")
	cc.SimpleAudioEngine:getInstance():playMusic(bgMusicPath,true)
	cc.SimpleAudioEngine:getInstance():stopMusic()
	
--异常处理 http://www.benmutou.com/archives/1728
	
	end
	end
	end

--*******************************************************************************
--*********************************table****************************************
--*******************************************************************************
if
	local tab = {"aaa","bbb","vvv"}
	print(table.concat(tab, ","))
	==>>  "aaa,bbb,vvv"
end
	
--*******************************************************************************
--*********************************定时器****************************************
--*******************************************************************************
if
	if self.id then
		cc.Director:getInstance():getScheduler():unscheduleScriptEntry(self.id)-- 取消定时器
		 self.id = nil
	end
		self.i = 0
		function tick()
			self.i = self.i + 1
			print(self.i)
		end
		self.id = cc.Director:getInstance():getScheduler():scheduleScriptFunc(handler(self,self.tick), 1, false)
		
		--每帧调用
	   MyScene.handler_ = scheduler.scheduleUpdateGlobal(tick)
	 MyScene.handler_ = scheduler.performWithDelayGlobal(tick, 1)
	--------------------------------------------------------------------------------
	local scheduler = require(cc.PACKAGE_NAME .. ".scheduler")
	scheduler.performWithDelayGlobal(function()
		self._moveing = false
		
		end, 1)
		
	scheduler.unscheduleGlobal(scheduler)	
end
--*******************************************************************************
--***************************tableView重复cell解决*******************************
--*******************************************************************************
if
	if nil == cell then
		cell = cc.TableViewCell:new()
	end 
		cell:removeAllChildren()
		...
		...
		cell:addChild(...)
	--竖拖拉算法
	tableView:setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL)
		local line = math.ceil(#gamData/3) - idx
		local index = (line - 1)*3 + i
	--横拖拉算法
	tableView:setDirection(cc.SCROLLVIEW_DIRECTION_HORIZONTAL)
		local line = math.ceil(#gamData/3) * idx
		local index = i + line
end
--*******************************************************************************
--**************************************点九*************************************
--*******************************************************************************

if

	local bg = ccui.Scale9Sprite:create("common/editform.png")
	bg:setContentSize(self:getContentSize())
	self:addChild(bg)
	bg:setPosition(bg:getContentSize().width/2,bg:getContentSize().height/2)
	
	local spBg = display.newScale9Sprite("common/form.png")
	layer:addChild(spBg)
	spBg:setContentSize(layer:getContentSize())
	spBg:setPosition(layer:getContentSize().width/2, layer:getContentSize().height/2)
end

--*******************************************************************************
--***********************************按钮隔层************************************
--*******************************************************************************
if 
	local norDown = cc.LayerColor:create(cc.c4b(255,0,0,0))
	norDown:setContentSize(cc.size(4000,4000))
	local menuItem = cc.MenuItemSprite:create(norDown, nil)
	norDown:setAnchorPoint(0, 0)
	norDown:setPosition(0, 0)

	local menu = cc.Menu:create(menuItem)
	menuItem:setAnchorPoint(0, 0)
	menuItem:setPosition(0, 0)
	self:addChild(menu, -1)
	menu:setPosition(-1000,-1000)
	
	local norDown = cc.LayerColor:create(cc.c4b(255,0,0,125))
	local menuItem = cc.MenuItemSprite:create(norDown, nil)
	norDown:setAnchorPoint(0, 0)
	norDown:setPosition(0, 0)

	local menu = cc.Menu:create(menuItem)
	menuItem:setAnchorPoint(0.5, 0.5)
	menuItem:setPosition(0, 0)
	self:addChild(menu, -1)
	menu:setPosition(0,0)
end
--*******************************************************************************
--***********************************骨骼动画************************************
--*******************************************************************************
if 
	stopAllActions()
	
	local adm = ccs.ArmatureDataManager:getInstance()
	adm:addArmatureFileInfo("hero/9001406/9001406.ExportJson")
	adm:addArmatureFileInfo("hero/mount88000/mount88000.ExportJson")
	
	local mount = ccs.Armature:create("mount88000")
	mount:getAnimation():play("stand",-1,1)--"attack""dead""walk""stand"

	local heromid = ccs.Armature:create("9001406")
	heromid:getAnimation():play("H_skill",-1,1)--"H_thump""M_attack""H_skill"
    local bone = mount:getBone("heromid")
    bone:addDisplay(heromid, 0)
    bone:changeDisplayWithIndex(0, true)
	
	self:addChild(mount)
---------------------------------------移动--------------------------------------
	local point = object:convertToWorldSpaceAR(cc.p(0,0))   --对象到世界坐标的位子	  object是layer上的node
	local point2 = self:convertToNodeSpace(point)           --世界坐标到对象的位子    self=layer
	action = cc.MoveTo:create(1,point2)
	self.mount:runAction(action)
	
	local forwardBy = cc.MoveBy:create(2, cc.p(200, 0))  --向右移动200
    local backBy = forwardBy:reverse()   --原路返回
    action = cc.Repeat:create(cc.Sequence:create(forwardBy, backBy, NULL), 4) -- Sequence 动画列队     Repeat播放次数
    self.mount:runAction(action)
end
--*******************************************************************************
--***********************************多点触摸************************************
--*******************************************************************************
if 
	local GothicScene = class("GothicScene" , function()
		return cc.Scene:create()
	end)
	function GothicScene:ctor()
		local sprite = display.newSprite("background/gothic19201280.jpg")   --自己随便找个图片资源吧
		sprite:align(display.CENTER, display.cx, display.cy)
		sprite:addTo(self)
		sprite:setTouchEnabled(true)                        
		sprite:setTouchMode(cc.TOUCHES_ALL_AT_ONCE)       
		sprite:addNodeEventListener(cc.NODE_TOUCH_EVENT, function (event) 
			dump(event)	
			if event.name == "began" then
				print("触摸开始")
			elseif event.name == "added" then
				print("增加了一个触摸点")
			elseif event.name == "moved" then
				print("移动了一个触摸点")
			elseif event.name == "removed" then
				print("移除了一个触摸点")  
			elseif event.name == "ended" then
				print("触摸结束")
			end 
			return true
		end)
	end

	function GothicScene:create()
		local gothic = GothicScene.new()
		gothic:createScene()
		return gothic
	end

	function GothicScene:createScene()
	end

	return GothicScene
end
--*******************************************************************************
--***************************单点触摸和捕获触摸**********************************
--*******************************************************************************
if 
	local layer = display.newLayer()
    self:addChild(layer)
    layer:setTouchEnabled(true)
    layer:setTouchSwallowEnabled(false)
    layer:setTouchMode(cc.TOUCH_MODE_ONE_BY_ONE)
    layer:addNodeEventListener(cc.NODE_TOUCH_EVENT, function (event)
        if event.name == "began" then
             print("layer began")
        elseif event.name == "moved" then
            print("layer moved")
        elseif event.name == "ended" then
             print("layer ended")
        end
 
        return true
    end)
 
    layer:addNodeEventListener(cc.NODE_TOUCH_CAPTURE_EVENT, function (event)
        if event.name == "began" then
            print("layer capture began")
        elseif event.name == "moved" then
            print("layer capture moved")
        elseif event.name == "ended" then
            print("layer capture ended")
        end
 
        return true
    end)
end
--*******************************************************************************
--***********************************生命周期************************************
--*******************************************************************************
if 
	local layer = display.newLayer()  
	layer:setContentSize(bgForm:getContentSize())
	bgForm:addChild(layer)
	layer:addNodeEventListener(cc.NODE_EVENT, function (event)
	dump(event)
		if event.name == "enter" then
		  print("enter")
		elseif event.name == "exit" then
		  print("exit")
		elseif event.name == "cleanup" then
		  print("cleanup")
		elseif event.name == "enterTransitionFinish" then
		  print("enterTransitionFinish")
		elseif event.name == "exitTransitionStart" then
		  print("exitTransitionStart")
		end
	end)
	http://blog.csdn.net/w337198302/article/details/39138003
end
--*******************************************************************************
-- 动画连播
-- 当我们不知道 数组里有几个元素时  使用cc.Sequence:create(... ...) 就不能确定添
-- 加的元素个数 这时候 可以使用下面的方法 实现动画叠加
--*******************************************************************************
if 
		local point = self._shortPath[1]:getConvertToMapPlace()
		local a1 = cc.MoveTo:create(playtime, point) 
		local action = cc.Sequence:create(a1)
		for k , v  in pairs(self._shortPath) do
			if (k+1) > #self._shortPath then
				break
			end
			point = self._shortPath[k+1]:getConvertToMapPlace()
			a1 = cc.MoveTo:create(playtime, point) 
			action = cc.Sequence:create(action,a1)
		end
end

--*******************************************************************************
--						垃圾收集器函数
--*******************************************************************************
if
	作为开发人员，我们确实有过让Lua自动内存管理。为此，有以下几种方法。

	collectgarbage("collect"): 执行垃圾回收的一个完整周期。

	collectgarbage("count"): 返回当前使用的千字节的程序内存量

	collectgarbage("restart"): 如果垃圾收集器已经停止，将重新启动它。

	collectgarbage("setpause"): 设置给定为第二参数除以100至垃圾收集器暂停变量的值。它的用途是作为讨论的一点上面。

	collectgarbage("setstepmul"): 设置给定为第二参数除以100到垃圾步骤乘数的变量的值。它的用途是作为讨论的一点上面。

	collectgarbage("step"): 运行垃圾回收的一步。第二个参数是越大step也会变大。在收集的垃圾将返回true，如果触发的步骤是一个垃圾收集周期的最后一步。

	collectgarbage("stop"): 停止垃圾收集器，如果它的运行。

	使用垃圾收集器例如一个简单的例子如下所示。

	mytable = {"apple", "orange", "banana"}

	print(collectgarbage("count"))

	mytable = nil

	print(collectgarbage("count"))

	print(collectgarbage("collect"))

	print(collectgarbage("count"))
	当我们运行上面的程序，会得到下面的输出。请注意，这样的结果会有所不同，由于在操作系统中，Lua自动内存管理功能可能也有差异。
	20.9560546875
	20.9853515625
	0
	19.4111328125
end

--*******************************************************************************
--						底部按钮左到右1排列
--*******************************************************************************
if 
	local layer = cc.LayerColor:create(cc.c4b(255,0,0,125))
	layer:setContentSize(display.width,display.height)
	layer:addTo(self)
	layer:setPosition(self:getContentSize().width/2 ,layer:getContentSize().width/2, 
		self:getContentSize().height/2 ,layer:getContentSize().height/2)
	
	--组队按钮   战船按钮
	local path = {}
	path[#path+1]={"button/daobtn2.png","button/daobtn2.png"}
	path[#path+1]={"button/daobtn1.png","button/daobtn1.png"}
	local space = 0
	for i = 1 , 2 do
		local item = cc.MenuItemImage:create(path[i][1],path[i][2])
		item:registerScriptTapHandler(handler(self,self.onButtonCallback))
		item:setTag(i)
		local menu = cc.Menu:create()
		--menu:setSwallowsTouches(false)
		menu:setContentSize(item:getContentSize())
		menu:ignoreAnchorPointForPosition(false)
		menu:setAnchorPoint(0.5,0)
		
		if i == 1 then
			space = menu:getContentSize().width + 10
		end
		
		menu:setPosition(layer:getContentSize().width*0.93 - space * (i - 1) ,layer:getContentSize().height*0.03)	
		
		item:setPosition(menu:getContentSize().width/2,menu:getContentSize().height/2)
		menu:addChild(item)
		layer:addChild(menu)
		-- table.insert(self._menu,menu)
	end
end
------------------------------------------------------------------------------------------
--点击在框内 pop
------------------------------------------------------------------------------------------
if 
	function ChipWpInfoPop:onTouchBegan(touch, event)
		local locationInNode = self._bg:convertToNodeSpace(touch:getLocation())
		if locationInNode.x > 0 and locationInNode.x < self._bg:getContentSize().width and
			locationInNode.y > 0 and locationInNode.y < self._bg:getContentSize().height then
			self.touch = true
		end
		return true  
	end

	function ChipWpInfoPop:onTouchMoved(touch, event)  

	end

	function ChipWpInfoPop:onTouchEnded(touch, event)
		local locationInNode = self._bg:convertToNodeSpace(touch:getLocation())
		if locationInNode.x > 0 and locationInNode.x < self._bg:getContentSize().width and
			locationInNode.y > 0 and locationInNode.y < self._bg:getContentSize().height then
			--点击在框内
		else
			--点击在框外
			if not self.touch then
				self:close()
			end
		end
		self.touch = false
	end
	--优化
	function MainScene:onTouchBegan(touch, event)
		
		local rect = self.m_layer:getBoundingBox()
		if cc.rectContainsPoint(rect, touch:getLocation()) then
			print("按下 碰上")
		end
		
		return true  
	end

	function MainScene:onTouchMoved(touch, event)  

	end

	function MainScene:onTouchEnded(touch, event)
		local locationInNode = self.m_layer:convertToNodeSpace(touch:getLocation())
		
		local rect = self.m_layer:getBoundingBox()
		if cc.rectContainsPoint(rect, touch:getLocation()) then
			print("松开 碰上")
			self:onClick(locationInNode)
		else
			print("松开 没碰上")
		end
	end
end
------------------------------------------------------------------------------------------------
--点击在对象上  拖动则不触发 点击效果
------------------------------------------------------------------------------------------
if 
	function Equip:onTouchBegan(touch, event) 
		local locationInNode = self:convertToNodeSpace(touch:getLocation())
		
		if self.from then
			local infrom = self.from:convertToNodeSpace(touch:getLocation())
			if infrom.y < 0 or self.from:getContentSize().height < infrom.y or infrom.x < 0 or self.from:getContentSize().width < infrom.x then
				return
			end
		end
		
		if locationInNode.x > 0 and locationInNode.x < self:getContentSize().width and
			locationInNode.y > 0 and locationInNode.y < self:getContentSize().height then
			self._touchPoint = touch:getLocation()
			if self._clickCallback then
				self:setScale(0.97)
			end
		end
	 
		return true  
	end

	function Equip:onTouchMoved(touch, event)
		if self._touchPoint then
			if math.abs(touch:getLocation().x - self._touchPoint.x) > 20 or
				math.abs(touch:getLocation().y - self._touchPoint.y) > 20 then
				
				self._touchMove = true
			end
		end
	end

	function Equip:onTouchEnded(touch, event)
		if self._touchPoint then
			self:setScale(1)--按住滑出装备外面
			if self._touchMove then--移动了不做处理
				self._touchMove = false
			else
				local locationInNode = self:convertToNodeSpace(touch:getLocation())
				if locationInNode.x > 0 and locationInNode.x < self:getContentSize().width and
					locationInNode.y > 0 and locationInNode.y < self:getContentSize().height then
					
					if self._clickCallback then
						self._clickCallback(self._equipData,touch:getLocation())
					end
				end
			end
		end
		self._touchPoint = nil
	end
end
------------------------------------------------------------------------------------------------
--精灵帧缓存  和读取
------------------------------------------------------------------------------------------
if
	local cache = cc.SpriteFrameCache:getInstance()  
	cache:addSpriteFrames("goods.plist","goods.png")
	local frame = cache:getSpriteFrame("A004.png")
	local sprite = cc.Sprite:createWithSpriteFrame(frame)
	sprite:setPosition(100,100)
	self:addChild(sprite)
end
----------------------------------------------------------------------------------------------
--atlas动画加载    3.2版本不能用   3.3可以
----------------------------------------------------------------------------------------------
if
	
	--[[
		dump(event) 
		type == 0 start  --动画开始   连续动画中  第一个不响应 不知为何
		
		type == 1 end   --动画真正播放结束
		
		type == 2 complete  --循环动画播放结束
	]]
	spAnim:registerSpineEventHandler(function (event)

        if event.eventData.name == "events" then
		
		end
		
	end, sp.EventType.ANIMATION_EVENT)

	local function handler(event)
		if event.type == "complete" and event.animation == "start"  then
			print("start---------complete 3")
		end
    end
    spAnim:registerSpineEventHandler(handler,2)
	
	local function handler(event)
		if event.type == "end" and event.animation == "start"  then
			print("start---------end 3")
			
        end
    end
    spAnim:registerSpineEventHandler(handler,1)
	
	local function handler(event)
		if event.type == "start" and event.animation == "start"  then
			print("start---------start 3")
        end
    end
	spAnim:registerSpineEventHandler(handler,0)
	
	local spAnim = sp.SkeletonAnimation:create("res/Spine/Effects/e_dsml.json", "res/Spine/Effects/e_dsml.atlas")
	spAnim:setPosition(display.cx, display.cy)
	spAnim:setTimeScale(1)
	-- spAnim:setMix("animation1","animation2",1)
	spAnim:setAnimation(0,"animation",true)
	-- spAnim:addAnimation(0,"animation",true)
	spAnim:starAnimation("animation")
	self:addChild(spAnim,99)
	
	csb动画
	
	local adm = ccs.ArmatureDataManager:getInstance()
	adm:addArmatureFileInfo("uiEffect/uiBox_01/uiBox_01.csb")
	adm:addArmatureFileInfo("uiEffect/uiBox_02/uiBox_02.csb")
	
	self._armature = {}
	self._armature[1] = "uiEffect/uiBox_01/uiBox_01.csb"
	self._armature[2] = "uiEffect/uiBox_02/uiBox_02.csb"
	
	local guang = ccs.Armature:create("uiBox_02")
		guang:setScale(0.95)
		parent:addChild(guang)
		guang:setName("guang")
		guang:setPosition(parent:getContentSize().width*0.525, parent:getContentSize().height*0.46)
		guang:getAnimation():play("boxRing",-1,1)
		
	local adm = ccs.ArmatureDataManager:getInstance()
	for k, v in pairs(tab) do
		adm:removeArmatureFileInfo(v)
	end
	cc.Director:getInstance():getTextureCache():removeUnusedTextures()
	
	local a = "res/baobeimao.png"
    local b = "res/baobeimao.plist"
    local c = "res/baobeimao.xml"
    ccs.ArmatureDataManager:getInstance():addArmatureFileInfo(a, b, c)
 
    local sp = ccs.Armature:create("shuxue_zhengmian")
    local animation = sp:getAnimation()
    animation:playWithIndex(0, -1, 1)
    sp:setPosition(display.cx, display.cy)
    self:addChild(sp)
 
    sp:setTouchEnabled(true)
    sp:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event) 
        dd = dd + 1
        print(dd)
    end)
	
	--cocos studio 动画编辑器 1.6制作 
	ccs.ArmatureDataManager:getInstance():addArmatureFileInfo("spine/csd/NewAnimation10.png","spine/csd/NewAnimation10.plist","spine/csd/NewAnimation1.ExportJson")
	
	local armature = ccs.Armature:create("NewAnimation1")  -- 创建动画对象

	armature:setPosition(200, 700)                    -- 设置位置

	armature:getAnimation():play("jump")            -- 设置动画对象执行的动画名称

	self:addChild(armature,9999)                      -- 把动画对象加载到场景内
	
	
	--提取精灵 播放动画 可替换图片
	local node = cc.CSLoader:createNode("spine/csd/MainScene.csb")
	local sprite = node:getChildByName("Sprite_1")
	sprite:removeFromParent()
	node:removeSelf()
	local action = cc.CSLoader:createTimeline("spine/csd/MainScene.csb")
	sprite:setPosition(200,400)
	action:gotoFrameAndPlay(0, 20, true)
	self.battle_layer:addChild(sprite,99999)
	sprite:runAction(action)
	sprite:setTexture("A006.png")
	sprite:stopAllActions()
	
	--播放UI动画
	local node = ccs.GUIReader:getInstance():widgetFromJsonFile("spine/csd/NewUi_1.json")
	local snado = node:getChildByName("Image_1")
	snado:removeFromParent()
	node:removeSelf()
	self.battle_layer:addChild(snado,99999)
	snado:setPosition(100,100)

	local animation = ccs.ActionManagerEx:getInstance():playActionByName("spine/csd/NewUi_1.json", "Animation0")
	
	--骨骼动画
	local guang2 = ccs.Armature:create("uiBox_01")
		parent:addChild(guang2)
		guang2:setVisible(false)
		guang2:setName("guang")
		guang2:setPosition(parent:getContentSize().width*0.5, parent:getContentSize().height*0.34)
		guang2:getAnimation():play("boxLight",-1,1)

		local function MovementEventCallFun(armature, moveevnettype, movementid)
			if moveevnettype == 1 or moveevnettype == 2  then
				armature:removeFromParent() 
			end
		end
		
		local function FrameEventCallFun(bone, eventname, cid, oid)
			if eventname == "release" then
				guang2:setVisible(true)
			end
		end
		
		local guang = ccs.Armature:create("uiBox_01")
		parent:addChild(guang)
		guang.tag = 3
		guang:setPosition(parent:getContentSize().width*0.5, parent:getContentSize().height*0.34)
		guang:getAnimation():play("openBox",-1,0)
		guang:getAnimation():setMovementEventCallFunc(MovementEventCallFun)
		guang:getAnimation():setFrameEventCallFunc(FrameEventCallFun)
		
		
end
