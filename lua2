if
--*******************************************************************************
--********************************弹窗创建*************************************
--*******************************************************************************
	--1
	local function func()
		local scene = require("shop.ShopScene"):create(1)
		CommonFunc.pushScene(scene)
	end

	local scene = cc.Director:getInstance():getRunningScene()

	local ui = require("union.Pop").new() 
	ui:setCallback(func)
	ui:updataUI2(String.getGameString("STR_BAO_TISHI4"))----"金币不足，是否前往商店购买？"
	ui:setPosition(0,0)
	scene:addChild(ui)
	--2
	local scene = cc.Director:getInstance():getRunningScene()
	Toast.show(scene,String.getGameString("STR_HERO_ZYBG"))
	--3
	:addChild(require("common.PartitionLayer").new(),-1)
	--activate
	local mScene = cc.Director:getInstance():getRunningScene()
	local pop = require("country.AccPop"):create()
	pop:updataUI2(String.getGameString("STR_BAO_GXSD"),DrawRefreshCfg.drawRefreshCfgList[1].Price)
	-- pop:updataUI2("确定要刷新商店吗？",DrawRefreshCfg.drawRefreshCfgList[1].Price)
	pop:setCallback(handler(self,self.updata2))
	pop:setPosition(mScene:getContentSize().width/2-pop:getContentSize().width/2,mScene:getContentSize().height/2 - pop:getContentSize().height/2)
	mScene:addChild(pop,2)
	--4
	local pop = require("isle.TipPop").new()  --掠夺
	pop:setText(String.getGameString("STR_PLUNDER_STR2"))
	pop:setBtnText(String.getGameString("STR_PLUNDER_LD"))
	pop:setCallback(handler(self,self.okPlunder))
	pop:useDefaultSetting()
end

if
------------------------------------------------------------------------------------
--cocos 3.3     UIPageView  使用例子
------------------------------------------------------------------------------------
 
	local TestUIPageViewScene = class("TestUIPageViewScene",function()
		return display.newScene("TestUIPageViewScene")
	end)
	 
	-- ctor 相对于cocos中的init()函数
	function TestUIPageViewScene:ctor()
		self:createPageView()
	end
	 
	 
	function TestUIPageViewScene:createPageView()
	 
		self.pv = cc.ui.UIPageView.new({
			viewRect = cc.rect(80,280,780,480) ,  --设置位置和大小
			column = 3 , row = 3,                       --列和行的数量
			padding = {left = 20 , right = 20 , top = 20 , bottom = 20} , --整体的四周距离
			columnSpace = 10 , rowSpace = 10                                        --行和列的间距
			bCirc = true  --循环  默认false
		})
		:onTouch(handler(self,self.touchListener))
		:addTo(self)
		 
		for i = 1 , 18 do
				   local item = self.pv:newItem()
				   local content
			content = display.newColorLayer(
			cc.c4b(math.random(250),
			math.random(250),
			math.random(250),
			math.random(250)))
			 
			content:setContentSize(240 , 140)
			content:setTouchEnabled(false)
			item:addChild(content)      -- 为每个单独的item添加一个颜色图块
			self.pv:addItem(item)          --为pageview添加item
		end
		 
		self.pv:reload()            --需要重新刷新才能显示
		 
	end
	 
	 
	function TestUIPageViewScene:touchListener(event)
		dump(event , "TestUIPageViewScene - event")
		local listView = event.listView
		if 3 == event.itemPos then
			   listView:removeItem(event.item,true)
			 
		end
	end
	return TestUIPageViewScene

			dump from: [string "app/scenes/UIPageViewTestScene.lua"]:16: in function 'touchListener'
	cocos2d: - "TestUIPageViewScene - event:" = {
	cocos2d: -     "name"     = "pageChange"
	cocos2d: -     "pageIdx"  = 2
	cocos2d: -     "pageView" = userdata: 0x154da400
	cocos2d: - }
	cocos2d: dump from: [string "app/scenes/UIPageViewTestScene.lua"]:16: in function 'touchListener'
	cocos2d: - "TestUIPageViewScene - event:" = {
	cocos2d: -     "item"     = userdata: 0x154dacc0
	cocos2d: -     "itemIdx"  = 1
	cocos2d: -     "name"     = "clicked"
	cocos2d: -     "pageIdx"  = 2
	cocos2d: -     "pageView" = userdata: 0x154da400
	cocos2d: - }
end
end
end

--*******************************************************************************
--***************************layer触摸事件***************************************
--*******************************************************************************
if 
	------------------Layer
	local function onTouch(eventType, x, y)
		if eventType == "began" then
			return true
		elseif eventType == "moved" then
		elseif eventType == "ended" then
			layer:removeSelf()
		elseif eventType == "cancelled" then

		end
	end
	layer = cc.Layer:create()
	self:addChild(layer, 100)
	layer:setTouchEnabled(true)
	layer:registerScriptTouchHandler(onTouch, false, 0, true)
	layer:setPosition(0, 0)
	
	------------------Text
	 local function menuCloseCallback( sender,eventType)
        if eventType == ccui.TouchEventType.ended then
            local scene = CocoStudioTestMain()
            if scene ~= nil then
                cc.Director:getInstance():replaceScene(scene)
            end
        end
    end

    local backMenuLabel = ccui.Text:create()
    backMenuLabel:setString("Back")
    backMenuLabel:setFontSize(20)
    backMenuLabel:setTouchScaleChangeEnabled(true)
    backMenuLabel:setPosition(cc.p(430,30))
    backMenuLabel:setTouchEnabled(true)
    backMenuLabel:addTouchEventListener(menuCloseCallback)
    self._uiLayer:addChild(backMenuLabel)
	
	
	------------------ImageView
	local function onImageViewClicked(sender, eventType)
		if eventType == ccui.TouchEventType.ended then

		end
	end

	local imageView = ccui.ImageView:create("cocosui/scrollviewbg.png")
	imageView:setAnchorPoint(cc.p(0, 1))
	imageView:setTouchEnabled(true)
	imageView:setTag()
	imageView:addTouchEventListener(onImageViewClicked)
	self._horizontalLayout:addChild(imageView)


	local layer = cc.Layer:create()
	function onTouchBegan(touch, event)
		local rect = self.m_layer:getBoundingBox()
		if cc.rectContainsPoint(rect, touch:getLocation()) then
			-- print("按下 碰上")
			self.touch = true
		end
		return true
	end

	function onTouchMoved(touch, event)
		
	end

	function onTouchEnded(touch, event)
		local locationInNode = self.m_layer:convertToNodeSpace(touch:getLocation())
		
		local rect = self.m_layer:getBoundingBox()
		if cc.rectContainsPoint(rect, touch:getLocation()) then
			-- print("松开 碰上")
			self:onClick(locationInNode)
		else
			-- print("松开 没碰上")
		if not self.touch then
			self:close()
		end
		self.touch = false
		
	end

	local listener = cc.EventListenerTouchOneByOne:create()
	listener:setSwallowTouches(true) 
	listener:registerScriptHandler(handler(self,self.onTouchBegan),cc.Handler.EVENT_TOUCH_BEGAN )
	listener:registerScriptHandler(handler(self,self.onTouchMoved),cc.Handler.EVENT_TOUCH_MOVED )
	listener:registerScriptHandler(handler(self,self.onTouchEnded),cc.Handler.EVENT_TOUCH_ENDED )
	local eventDispatcher = layer:getEventDispatcher()
	eventDispatcher:addEventListenerWithSceneGraphPriority(listener, layer)
	self:addChild(layer)
end	
end
	local layout = ccui.Layout:create()
	layout:setAnchorPoint(0.5,0.5)
    layout:setBackGroundColorType(ccui.LayoutBackGroundColorType.solid)
    layout:setBackGroundColor(cc.c3b(128, 128, 128))
    layout:setClippingEnabled(true)
    layout:setContentSize(cc.size(542, toolbg_1:getContentSize().height))
	toolbg:addChild(layout)
	layout:setPosition(toolbg:getContentSize().width*0.4985,toolbg:getContentSize().height*0.7241)
	
--*******************************************************************************
--***********************************带轴进度条**********************************
--*******************************************************************************	
if 
	local pSlider = cc.ControlSlider:create("icon/empty24728.png","icon/full24728.png" ,"icon/axisbar.png")
    pSlider:setAnchorPoint(cc.p(0, 0.5))
	pSlider:setMinimumValue(0.0) 
	pSlider:setMaximumValue(100.0)   --宝石的最大数量
	pSlider:setPosition(rszIcon:getContentSize().width/2 
						+ rszIcon:getPositionX()+22,rszIcon:getPositionY())
    pSlider:setTag(1)
	rszImagebg:addChild(pSlider)
	pSlider:registerControlEventHandler(handler(self,self.valueChanged)
											, cc.CONTROL_EVENTTYPE_VALUE_CHANGED)
	function ResourcesItem:valueChanged(pSender)
	pSender:getValue()   
	pSender:setValue(0)
end
end

--*******************************************************************************
--layer触摸来代替butto回调   这样添加道tableview上  就不会影响tableview的拖动
--*******************************************************************************
if 
	local SellSheet = class("SellSheet", function()
		return cc.Layer:create()
	end)
	function SellSheet:ctor()
		-- 创建一个事件监听器类型为 OneByOne 的单点触摸  
		local listenner = cc.EventListenerTouchOneByOne:create()  
		-- ture 吞并触摸事件,不向下级传递事件;  
		-- fasle 不会吞并触摸事件,会向下级传递事件;  
		-- 设置是否吞没事件，在 onTouchBegan 方法返回 true 时吞没  
		listenner:setSwallowTouches(false)  
		-- 实现 onTouchBegan 事件回调函数  
		listenner:registerScriptHandler(handler(self, self.onTouchBegan), cc.Handler.EVENT_TOUCH_BEGAN)
		-- 实现 onTouchMoved 事件回调函数  
		listenner:registerScriptHandler(handler(self, self.onTouchMoved), cc.Handler.EVENT_TOUCH_MOVED)
		-- 实现 onTouchEnded 事件回调函数  
		listenner:registerScriptHandler(handler(self, self.onTouchEnded), cc.Handler.EVENT_TOUCH_ENDED)
		local eventDispatcher = self:getEventDispatcher()  
		-- 添加监听器  
		eventDispatcher:addEventListenerWithSceneGraphPriority(listenner, self)
		self._clickfunc = nil
	end

	function SellSheet:create(pic)
		local sheet = SellSheet.new()
		pic = pic or "sheet/sheet_1.png"
		sheet:createSheet(pic)
		return sheet
	end
	function SellSheet:setClickCallBack(func)
		self._clickfunc = func
	end
	function SellSheet:createSheet(pic)
	end
	function SellSheet:onTouchBegan(touch, event)
		local locationInNode = self:convertToNodeSpace(touch:getLocation())
		if locationInNode.x > 10 and locationInNode.x < self:getContentSize().width*0.95 and
			locationInNode.y > 10 and locationInNode.y < self:getContentSize().height*0.95 then
			self._touchPoint = touch:getLocation()
			if self._clickfunc then
				self:setScale(1.1)
			end
		end
		return true
	end
	function SellSheet:onTouchMoved(touch, event)  
		if self._touchPoint then
			self:setScale(1)--按住滑出装备外面
			if math.abs(touch:getLocation().x - self._touchPoint.x) > 20 or
				math.abs(touch:getLocation().y - self._touchPoint.y) > 20 then
				self._touchMove = true
			end
		end
	end
	function SellSheet:onTouchEnded(touch, event)
		if self._touchPoint then
			self:setScale(1)--按住滑出装备外面
			if self._touchMove then--移动了不做处理
				self._touchMove = false
			else
				local locationInNode = self:convertToNodeSpace(touch:getLocation())
				if locationInNode.x > 10 and locationInNode.x < self:getContentSize().width*0.95 and
				locationInNode.y > 10 and locationInNode.y < self:getContentSize().height*0.95 then
					if self._clickfunc then
						self._clickfunc(touch:getLocation(),self)
					end
				end
			end
		end
		self._touchPoint = nil
	end
	return SellSheet
end
--*******************************************************************************
--***********************************输入框**********************************
--*******************************************************************************
if 
	local edit = ccui.EditBox:create(cc.size(display.width*0.3, 50), "common/editform.png")
	self:addChild(edit)
	edit:setAnchorPoint(0, 0.5)
	edit:setPosition(gmMenu:getPositionX() + gmMenu:getContentSize().width + 10, gmMenu:getPositionY() + gmMenu:getContentSize().height/2)
	self._editGM = edit        getText setText
	edit:setPlaceHolder()
	-- local edit = ccui.EditBox:create(cc.size(576,170), "common/editform.png")
	-- edit:registerScriptEditBoxHandler(handler(self,self.onEdit))
	-- print(edit:getMaxLength())
	-- edit:setFontName("aa")
	-- edit:setFontSize(20)
	-- edit:setOpacity(0)
	-- edit:setInputFlag(0)
	-- bg:addChild(edit)
	-- edit:setAnchorPoint(0.5, 1)
	-- edit:setPosition(bg:getContentSize().width/2,bg:getContentSize().height*0.77)
	-- edit:setInputMode(0)
	-- edit:setMaxLength(300)
	-- print(edit:getMaxLength())
	-- self.edit = edit
	
	function NoticePop:onEdit(event)

	if event == "began" then
		print("began")
		if self.str then
			self.edit:setText(self.str)
		end
	elseif event == "changed" then
		print("changed")
		self.str = self.edit:getText()
		print(#self.str)
		-- self.strLb:setString(self.str)
	elseif event == "ended" then
		-- self.edit:setText("")
		print("ended")
	elseif event == "return" then
		print("return")
	end

	end
end
	
--*******************************************************************************
--*****************************滚动条-经验槽*************************************
--*******************************************************************************
if
	local empty = cc.Sprite:create("shop/empty17221.png")
	self:addChild(empty)
	empty:setAnchorPoint(0, 1)
	empty:setPosition(currentVipGrade:getPositionX()+currentVipGrade:getContentSize().width+5,currentVipGrade:getPositionY()-5)
		
	local full = cc.ProgressTimer:create(cc.Sprite:create("shop/full17221.png"))
    full:setType(cc.PROGRESS_TIMER_TYPE_BAR)  --PROGRESS_TIMER_TYPE_RADIAL
	
	--设置进度条的起始位置
    --ccp(0,0)表示下面
    full:setMidpoint(cc.p(0, 0))   --设置滚动条运动方向
	--设置进度条变化的方向
    --ccp(0,1)表示沿着y轴变化
	full:setBarChangeRate(cc.p(1, 0))   --设置滚动条的宽高起始比例
	empty:addChild(full)
	full:setPosition(empty:getContentSize().width/2, empty:getContentSize().height/2)
	local to1 = cc.ProgressTo:create(0, 10)
    full:runAction(cc.RepeatForever:create(to1))
	full:setPercentage(100)  --设置进度值范围[0,100]
	
	local frame = self.cache:getSpriteFrame("img_tjian2.png")
	local bar = cc.Sprite:createWithSpriteFrame(frame)
	layer:addChild(bar)
	bar:setAnchorPoint(0, 1)
	bar:setPosition(100,200)
	
	local frame = self.cache:getSpriteFrame("img_tjian1.png")
	local sp = cc.Sprite:createWithSpriteFrame(frame)
	
	local full = cc.ProgressTimer:create(sp)
    full:setType(cc.PROGRESS_TIMER_TYPE_RADIAL)
    -- full:setMidpoint(cc.p(0, 1))
	-- full:setBarChangeRate(cc.p(1, 0))
	full:setReverseDirection(true)
	full:setPercentage(100)
	bar:addChild(full)
	full:setPosition(bar:getContentSize().width/2, bar:getContentSize().height/2)
	
	local to1 = cc.ProgressTo:create(2, 10)
    full:runAction(cc.RepeatForever:create(to1))
end
--*******************************************************************************
--********************************button创建*************************************
--*******************************************************************************
if 
	--关闭
	local paths = {"button/x_nor.png","button/x_sel.png"}
	local btnClose = commonUI.creataBtn(paths, cc.size(70,70),handler(self, self.close))
	bg:addChild(btnClose, 1)
	btnClose:setPosition(bg:getContentSize().width*0.98, bg:getContentSize().height*0.98)
	
	local btn = require("common.Button"):create("button/btn10645.png")
	btn:setCallBack(func)
	self.upLayer2:addChild(btn)
	btn:setPosition(self.upLayer2:getContentSize().width - btn:getContentSize().width - 10,
		btn:getContentSize().height/2 + 10)
	btn:setText("下一幕")

	local nor = cc.Sprite:create("button/building_nor.png")
	local sel = cc.Sprite:create("button/building_sel.png")
	local gray = cc.Sprite:create("button/building_gray.png")
	local btn = cc.MenuItemSprite:create(nor,sel,gray)

	btn:selected()
	btn:unselected()
	btn:setEnabled(false)

	local btn = cc.MenuItemImage:create("button/button13360_nor.png","button/button13360_sel.png")
	btn:registerScriptTapHandler(handler(self,self.onCallback))
	local menu = cc.Menu:create()
	menu:setContentSize(btn:getContentSize())
	menu:ignoreAnchorPointForPosition(false)
	menu:setPosition(self:getContentSize().width * 0.8,self:getContentSize().height/2)
	self:addChild(menu)
	
	btn:setPosition(menu:getContentSize().width/2,menu:getContentSize().height/2)
	menu:addChild(btn)
	menu:setSwallowsTouches(false)
	menu:alignItemsVertically() 垂直水平
	
	
	cc.Label:createWithTTF(text,fontName,fontSize,cc.size(580,0),cc.TEXT_ALIGNMENT_CENTER)
	local label = cc.Label:createWithSystemFont(String.getGameString("STR_SHOP_GM"),Font.FONT_NAME,Font.FONT_SIZE_M)
	label:setPosition(btn:getContentSize().width/2,btn:getContentSize().height/2)
	label:setColor(cc.c3b(255,255,255))
	label:setAnchorPoint(0,1)
	btn:addChild(label)
	label:setDimensions(300,0)
	setLineHeight
	label:setSystemFontSize(30)
	label:enableOutline(col2,width)
	label:enableShadow(col2,size)
	
	hdjlLb:setAdditionalKerning(-0.5)
	
	local function touchEvent(sender,eventType)
		if eventType == ccui.TouchEventType.began then
			self._displayValueLabel:setString("Touch Down")
		elseif eventType == ccui.TouchEventType.moved then
			self._displayValueLabel:setString("Touch Move")
		elseif eventType == ccui.TouchEventType.ended then
			self._displayValueLabel:setString("Touch Up")
		elseif eventType == ccui.TouchEventType.canceled then
			self._displayValueLabel:setString("Touch Cancelled")
		end
	end
	
	local function onClick(sender, eventType)
		if eventType == ccui.TouchEventType.ended then
			local tag = sender:getTag()

			if tag == 1 then

			elseif tag == 2 then

			end
		end
	end
	
	local btn = ccui.Button:create("button/combtn2_nor.png","button/combtn2_sel.png")
	btn:setTouchEnabled(true)
	btn:setTag(i)
	btn:setPosition(cc.p(bg:getContentSize().width * pos[i], btn:getContentSize().height / 2 + 10))
	bg:addChild(btn)
	btn:addTouchEventListener(onClick)
	
	btn:setTitleText(str[i])
	btn:setTitleFontSize(Font.FONT_SIZE_M)
	btn:setTitleFontName(Font.FONT_NAME)
	button_scale9:setScale9Enabled(true)
    button_scale9:setContentSize(cc.size(100, button_scale9:getVirtualRendererSize().height))
	btn:loadTextures("uijson/combtn2_gray.png", "uijson/combtn2_gray.png", "uijson/combtn2_gray.png")
	
	btn:setBrightStyle(ccui.BrightStyle.highlight)  --选中
	btn:setBrightStyle(ccui.BrightStyle.normal)	 --未选中
	
	--内容
	local contentsize = cc.size(262,137)
	local aiForm = require("common.AITextForm").new(String.getRemark(data.Name),contentsize)
	bg:addChild(aiForm)
	aiForm:ignoreAnchorPointForPosition(false)
	aiForm:setAnchorPoint(0,1)
	-- aiForm:openColor()
	aiForm:setPosition(cc.p(bg:getContentSize().width*0.036, bg:getContentSize().height*0.32))
	
	cc.TEXT_ALIGNMENT_CENTER
	local size = cc.size(remarkBg:getContentSize().width*0.9, remarkBg:getContentSize().height*0.9)
	local str = CommonFunc.formatString(String.getRemark(data.Remark), data.Effect)
	local lbRemark = cc.LabelTTF:create(str, "", 20, size, cc.TEXT_ALIGNMENT_LEFT, cc.VERTICAL_TEXT_ALIGNMENT_TOP)
	remarkBg:addChild(lbRemark)
	lbRemark:setAnchorPoint(0, 1)
	lbRemark:setPosition((remarkBg:getContentSize().width - size.width)/2, remarkBg:getContentSize().height*0.85)
	lbRemark:setColor(cc.c3b(0,0,0))
	
	二
	--TODO 关闭按钮
   local closebtn = cc.ui.UIPushButton.new(images)
   
   closebtn:onButtonClicked(function(event)
      cc.Director:getInstance():popScene()
   end)
   closebtn:setAnchorPoint(1,1)
   closebtn:setPosition( self:convertToNodeSpace(cc.p(display.width,display.height)))
   closebtn:addTo(self)
   
   -- cc.ui.UIPushButton.new({ normal = "image/start1.png", pressed = "image/start2.png" })
     -- :onButtonPressed(function(event)
            -- print("right menu pressed")
        -- end)
        -- :onButtonRelease(function(event)
            -- print("right menu release")
        -- end)
        -- :onButtonClicked(function(event)
            -- print("right menu clicked")
        -- end)
        -- :align(display.CENTER, display.cx + 100, display.cy)
        -- :addTo(self)
		
	local nor = cc.Layer:create()
		nor:setContentSize(v.size)
		local sel = cc.Layer:create()
		sel:setContentSize(v.size)
		local btn = cc.MenuItemSprite:create(nor, sel)
		btn:registerScriptTapHandler(handler(self, self.onMapCallback))
		mapMenu:addChild(btn)
		btn:setTag(v.Id)
		btn:setPosition(v.pt)
		
	-- 隐藏按钮  跳绿钻商店
	local btnlayer = cc.LayerColor:create(cc.c4b(255,0,0,0))
	btnlayer:setContentSize(cc.size(180,75))
	local btn = cc.MenuItemSprite:create(btnlayer,nil,nil)
	btn:setContentSize(btnlayer:getContentSize())
	btn:registerScriptTapHandler(jumpshop)
	btn:setAnchorPoint(cc.p(0,1))
	local menu = cc.Menu:create()
	menu:setContentSize(btn:getContentSize())
	menu:setAnchorPoint(cc.p(0,1))
	menu:setPosition(0,bg:getContentSize().height)
	bg:addChild(menu)
	btn:setPosition(0,0)
	menu:addChild(btn)
end

--*******************************************************************************
--********************************pageView*************************************
--*******************************************************************************

if	
	local size = cc.Sprite:create("form/from833540.png"):getContentSize()
	local layer = cc.LayerColor:create(cc.c4b(255,0,0,0))
	layer:setContentSize(size)
	self:addChild(layer)
	layer:setPosition(self:getContentSize().width/2-layer:getContentSize().width/2,self:getContentSize().height/2-layer:getContentSize().height/2)

	local pageView = ccui.PageView:create()
	pageView:setTouchEnabled(true)
	pageView:setContentSize(size)
	pageView:addEventListener(handler(self,self.pageViewEvent))
	pageView:setCustomScrollThreshold(50)
	layer:addChild(pageView)
	
	self.pageView:scrollToPage(0)

	for k , v in pairs(HeroPlanCfg.heroPlanCfgList) do
		local layout = ccui.Layout:create()
		layout:setContentSize(size)
		
		local imageView = self:createPage(v)
		imageView:setPosition(layout:getContentSize().width/2,layout:getContentSize().height/2)
		layout:addChild(imageView)

		pageView:addPage(layout)
	end

	self.pageView = pageView
end
	
--*******************************************************************************
--********************************tableView ScrollView*************************************
--*******************************************************************************
if
	function RingUI:createLayer()	
		local sizeTV = cc.size(self._contentLayer:getContentSize().width*0.97, self._contentLayer:getContentSize().height*0.95)
		self:setContentSize(self._contentLayer:getContentSize())
		
		local form = cc.Sprite:create("form/form411640.png")
		pmlayer:addChild(form)
		form:setPosition(pmlayer:getContentSize().width*0.24, pmlayer:getContentSize().height*0.55 )
		
		local downSign = cc.Sprite:create("icon/icon189.png")
		downSign:setAnchorPoint(0.5,0)
		downSign:setPosition(form:getContentSize().width/2,6)
		form:addChild(downSign)
		
		local tvlayer = cc.LayerColor:create(cc.c4b(255,0,0,125))
		tvlayer:setContentSize(cc.size(form:getContentSize().width*0.8,form:getContentSize().height*0.8))
		form:addChild(tvlayer)
		tvlayer:ignoreAnchorPointForPosition(false)
		tvlayer:setPosition(form:getContentSize().width/2,form:getContentSize().height/2)
		
		self.tvlayer = tvlayer
		
		local tableView = cc.TableView:create(tvlayer:getContentSize())
		tableView:setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL)--cc.SCROLLVIEW_DIRECTION_HORIZONTAL
		tvlayer:addChild(tableView)
		tableView:setDelegate()
		self.cellSize = cc.size(tvlayer:getContentSize().width, tvlayer:getContentSize().height/2)
		tableView:registerScriptHandler(handler(self,self.numberOfCellsInTableView),cc.NUMBER_OF_CELLS_IN_TABLEVIEW)  
		tableView:registerScriptHandler(handler(self,self.cellSizeForTable),cc.TABLECELL_SIZE_FOR_INDEX)
		tableView:registerScriptHandler(handler(self,self.tableCellAtIndex),cc.TABLECELL_SIZE_AT_INDEX)
		tableView:registerScriptHandler(handler(self,self.tableCellTouched),cc.TABLECELL_TOUCHED)
		tableView:registerScriptHandler(handler(self,self.scrollViewDidScroll),cc.SCROLLVIEW_SCRIPT_SCROLL)
		self.tableView = tableView
		self.tableView:reloadData()
		
		
		self.tableView:setContentOffset(cc.p(0,0),false)
		tableView:setBounceable(false) --关闭弹性
		tableView:setTouchEnabled(false)  --关闭滑动
	end

	function RingUI:scrollViewDidScroll(view)
	end
	function RingUI:tableCellTouched(table, cell)
	end
	function RingUI:numberOfCellsInTableView(table)
		return math.ceil(#self.data/7)
	end
	function RingUI:tableCellAtIndex(table,idx)

		local line = math.ceil(#self.data/7) - idx	

		local cell = table:dequeueCell()

		if nil == cell then
			cell = cc.TableViewCell:new()
		end
			cell:removeAllChildren()
		local space = 0
		for i = 1, 7 do
			local index = (line - 1)*7 + i
			local data = self.data[index]
			if data then 
				local ringBg = cc.Sprite:create("form/form8686.png")
				if space == 0 then
					space = (self.cellSize.width - ringBg:getContentSize().width*7)/6
				end		
				ringBg:setAnchorPoint(0,0)
				ringBg:setPosition((space + ringBg:getContentSize().width)*(i-1),0)
				cell:addChild(ringBg)
				local equip = require("hero.Equip"):create("equip/equip8080.png")  
				equip:setPosition((ringBg:getContentSize().width-equip:getContentSize().width)/2,(ringBg:getContentSize().height-equip:getContentSize().height)/2)
				equip:updataUI(data)
				equip.index = index
				ringBg:addChild(equip)
				equip:setCallBack(handler(self,self.onPopFrom))
			end 
		end	
		return cell
	end
	function RingUI:cellSizeForTable(table,idx)
		return self.cellSize.height, self.cellSize.width
	end
	
	self.storey = 1
	local cell = item:getParent()
	cell:getParent():reorderChild(cell,self.storey)
	self.storey = self.storey + 1
	local index = idx + 1   --左右 一列一个
	local line = math.ceil(#self.data/7) - idx  local index = (line - 1)*7 + i --上下  一排7个
	
	
	local svLayer = cc.LayerColor:create(cc.c4b(0,255,0,125))
	layer:addChild(svLayer)
	svLayer:setContentSize(cc.size(cc.Sprite:create("ugc/bar_l.png"):getContentSize().width,820))
	svLayer:ignoreAnchorPointForPosition(false)
	svLayer:setAnchorPoint(cc.p(0.5,0))
	svLayer:setPosition(layer:getContentSize().width/2,layer:getContentSize().height*0)
	
	self.scSize = svLayer:getContentSize()
	
	local scrollView = ccui.ScrollView:create()
    scrollView:setTouchEnabled(true)
	scrollView:setBounceEnabled(true)
    scrollView:setContentSize(self.scSize)        
    scrollView:setPosition(0,0)
    svLayer:addChild(scrollView)
	scrollView:setInnerContainerSize(self.scSize) 
	
	local contentLayer = cc.LayerColor:create(cc.c4b(255,0,0,125))
	svLayer:addChild(contentLayer)
	contentLayer:setContentSize(self.scSize)    
	contentLayer:setPosition(0,0)
end	
--*******************************************************************************
--********************************特效字*************************************
--*******************************************************************************
if --一
	local scoreLb = cc.Label:createWithBMFont(str,num,16)
	local str1
    str1 = "num/resourcenumber.fnt"
	local pTime = 0 
	for k , v in pairs(gdata) do
		local give = self._sRszbuild._giversz

		if k == 2 then
			give = self._sRszbuild._giversz2
			pTime = 0.5
		end
		
		local label = cc.LabelBMFont:create(string.format("%+d",v.Num),str1,16)
	
		give:addChild(label,100)
		label:setScale(1)
		
		label:setAnchorPoint(0,0.5)
		label:setPosition(give:getContentSize().width+15,give:getContentSize().height*0.5 + 10)
		self.giveAc = true
		
		local function callback()
		   label:removeFromParent()
		   give:setVisible(false)
		   self.giveAc = false
		   give:setPositionY(self._sRszbuild._giversz:getPositionY() - 80)
		end
		
		local function callback2()
		   give:setVisible(true)
		end

		local action = transition.sequence({cc.DelayTime:create(pTime),cc.CallFunc:create(callback2),cc.FadeIn:create(0.1),
		  cc.DelayTime:create(0.1),
		  cc.Spawn:create(cc.MoveBy:create(0.5,cc.p(0,80))),--,cc.FadeOut:create(0.25)
		  cc.CallFunc:create(callback)
		 })
		 
		give:runAction(action)
	end
end
if -- 二
	if data then
		print("卸货")
		local isle = self.isleCoors[coor].isle
		local point = isle:convertToWorldSpace(cc.p(0,0))
		point = self.slayer:convertToNodeSpace(point)
		local str =  "num/resourcenumber.fnt"
		local pTime = 0 
		local iWidth = cc.Sprite:create("icon/rsz6950_1.png"):getContentSize().width
		for k , v in pairs(data) do
			
			-- local layer = cc.LayerColor:create(cc.c4b(255,0,0,0))
			local layer = cc.Layer:create()
			layer:setVisible(false)
			
			local icon = cc.Sprite:create(v.Pic)
			icon:setAnchorPoint(0,0.5)
			
			local num = cc.LabelBMFont:create("+"..v.ItemNum,str,16)
			num:setAnchorPoint(0,0.5)
			
			layer:setContentSize(icon:getContentSize().width + num:getContentSize().width + 6,
				num:getContentSize().height)
			layer:setScale(0.6)
			
			layer:addChild(icon)
			layer:addChild(num)
			
			icon:setPosition(0,layer:getContentSize().height/2)
			num:setPosition(icon:getContentSize().width + 6,layer:getContentSize().height/2 + 10)
			
			if k ~= 1 then
				pTime = pTime + 0.5
			end
			if v.ItemId ~= 1 then
				icon:setScale(1.4)
				num:setPositionX(num:getPositionX()+8)
				num:setPositionY(num:getPositionY()-4)
			end
			
			local function callback(node)
				node:removeFromParent()
			end
			
			local function callback2(node)
			   node:setVisible(true)
			end
			local action = cc.Sequence:create(
				cc.DelayTime:create(pTime),
				cc.CallFunc:create(callback2),
				cc.FadeIn:create(0.1),
				cc.DelayTime:create(0.1),
				cc.MoveBy:create(0.5,cc.p(0,80)),
				cc.CallFunc:create(callback)
			)
			self.slayer:addChild(layer,1000)
			layer:ignoreAnchorPointForPosition(false)
			layer:setAnchorPoint(0.5,0)
			layer:setPosition(point.x + isle:getContentSize().width/2,point.y + isle:getContentSize().height)
			layer:runAction(action)
		end
	else
		print("无货")
		Toast.show(self,String.getGameString("STR_LONGDAO_MYHW"))	
	end
end
if 
	local labelBMFont = ccui.TextBMFont:create()
    labelBMFont:setFntFile("cocosui/bitmapFontTest2.fnt")
    labelBMFont:setString("BMFont")
    labelBMFont:setPosition(cc.p(widgetSize.width / 2, widgetSize.height / 2.0 + labelBMFont:getContentSize().height / 8.0))
	
	local labelAtlas = ccui.TextAtlas:create()
    labelAtlas:setProperty("1234567890", "cocosui/labelatlas.png", 17, 22, "0")
    labelAtlas:setPosition(cc.p((widgetSize.width) / 2, widgetSize.height / 2.0)) 

	local label = ccui.Text:create("loop enabled", "Arial", 20)
    label:setString("Label")
    label:setFontName("AmericanTypewriter")
    label:setFontSize(30)
    label:setPosition(cc.p(widgetSize.width / 2, widgetSize.height / 2 + label:getContentSize().height / 4))    
    self._uiLayer:addChild(label) 
	
	 local function textFieldEvent(sender, eventType)
        if eventType == ccui.TextFiledEventType.attach_with_ime then
            local textField = sender
            local screenSize = cc.Director:getInstance():getWinSize()
            textField:runAction(cc.MoveTo:create(0.225,cc.p(screenSize.width / 2.0, screenSize.height / 2.0 + textField:getContentSize().height / 2.0)))
            self._displayValueLabel:setString("attach with IME")
        elseif eventType == ccui.TextFiledEventType.detach_with_ime then
            local textField = sender
            local screenSize = cc.Director:getInstance():getWinSize()
            textField:runAction(cc.MoveTo:create(0.175, cc.p(screenSize.width / 2.0, screenSize.height / 2.0)))
            self._displayValueLabel:setString("detach with IME")
        elseif eventType == ccui.TextFiledEventType.insert_text then
            self._displayValueLabel:setString("insert words")
        elseif eventType == ccui.TextFiledEventType.delete_backward then
            self._displayValueLabel:setString("delete word")
        end
    end
        
    local textField = ccui.TextField:create()
    textField:setTouchEnabled(true)
    textField:setFontName(font_TextName)
    textField:setFontSize(30)
    textField:setPlaceHolder("input words here")
    textField:setPosition(cc.p(widgetSize.width / 2.0, widgetSize.height / 2.0))
    textField:addEventListener(textFieldEvent) 
    self._uiLayer:addChild(textField) 
end

--*******************************************************************************
--********************************帧缓存动画*************************************
--*******************************************************************************
if
	display.addSpriteFrames("map/shoes/goup.plist", "map/shoes/goup.pvr.ccz")

	for i = 1, 8 do
		local frames = display.newFrames("goup0%d.png", 1, 8)
		local animation = display.newAnimation(frames, 0.7 / 8 )
		animation:setDelayPerUnit(self.eachFrameMoveTime)
		display.setAnimationCache( "goup", animation)
		-- transition.stopTarget(self)
		-- transition.playAnimationForever(self, animation)
		-- transition.playAnimationForever(self, display.getAnimationCache("goup"))
		transition.playAnimationOnce
	end
end

------------------------------------------------------------------------------------
----------------------------------富文本--------------------------------------------
------------------------------------------------------------------------------------
if
	local rich = ccui.RichText:create()
	local emt = ccui.RichElementText:create(1, cc.c3b(255,0,0), 255, "我是红色 ",Font.FONT_NAME, Font.FONT_SIZE_M)
	local emt1 = ccui.RichElementText:create(2, cc.c3b(0,255,0), 255, "我是绿色 ",Font.FONT_NAME, Font.FONT_SIZE_M)
	local emt2 = ccui.RichElementText:create(3, cc.c3b(0,0,255), 255, "我是蓝色 ",Font.FONT_NAME, Font.FONT_SIZE_M)
	local emt3 = ccui.RichElementImage:create(6, cc.c3b(255,255,255), 255, "icon/attribute_1.png")
	rich:pushBackElement(emt)
	rich:insertElement(emt1,1)
	rich:insertElement(emt2,2)
	rich:insertElement(emt3,3)
	rich:setPosition(bg:getContentSize().width/2,bg:getContentSize().height/2)
	bg:addChild(rich)
end
-----------------------------------------------------------------------------------------
--粒子
-----------------------------------------------------------------------------------------

if
local lizi = cc.ParticleSystemQuad:create("spine/lizi/e_twostar_lizi.plist")
spAnim:addChild(lizi)
lizi:setPosition(spAnim:getContentSize().width/2,spAnim:getContentSize().height/2)
lizi:setPositionType(cc.POSITION_TYPE_GROUPED) --关闭粒子拖尾
end

-----------------------------------------------------------------------------------------
--TMX 地图
-----------------------------------------------------------------------------------------
if 
		-- module("MapProperty", package.seeall);
	local MapProperty = class("MapProperty")

	function MapProperty:ctor(mapRes)
		self.map = cc.TMXTiledMap:create("level/level"..mapRes..".tmx")
		-- self.map = cc.TMXTiledMap:create("level/level1.tmx")
		-- self.properties = new Properties();
		self.properties = {}
		
		self:getMapProperties()
	end

	function MapProperty:getMapProperties()
		local proObj = self.map:getProperties()
		self.properties.boss = json.decode(proObj.boss)
		self.properties.col = proObj.col; 
		self.properties.row = proObj.row;
		self.properties.goods = json.decode(proObj.goods)
		self.properties.money = proObj.momey;
		self.properties.score = proObj.score;
		self.properties.starlevel1 = proObj.starlevel1;
		self.properties.starlevel2 = proObj.starlevel2;
		self.properties.starlevel3 = proObj.starlevel3;
		self.properties.step = proObj.step;
		self.properties.blocktypenumber = proObj.blocktypenumber;
		self.properties.time = proObj.time;
		self.properties.objArray = self.map:getObjectGroup("objs"):getObjects(); --有效位
		self.properties.bgArray = self.map:getObjectGroup("bg"):getObjects();
		
		print("************地图信息*******************")
		print("self.properties.boss:")
		-- for k , v in pairs(self.properties.boss) do
			-- for k1 , v1 in pairs(v) do
				-- print(k1,v1)
			-- end
		-- end
		print("self.properties.col:"..self.properties.col)
		print("self.properties.goods:")
		-- for k , v in pairs(self.properties.goods) do
			-- print(k,v)
			-- for k1 , v1 in pairs(v) do
				-- print(k1,v1)
			-- end
		-- end
		print("self.properties.row:"..self.properties.row)
		print("self.properties.money:"..self.properties.money)
		print("self.properties.score:"..self.properties.score)
		print("self.properties.starlevel1:"..self.properties.starlevel1)
		print("self.properties.starlevel2:"..self.properties.starlevel2)
		print("self.properties.starlevel3:"..self.properties.starlevel3)
		print("self.properties.step:"..self.properties.step)
		print("self.properties.blocktypenumber:"..self.properties.blocktypenumber)
		print("self.properties.time:"..self.properties.time)
		--[[
		for k , v in pairs(self.properties.objArray) do
			-- if k == #self.properties.objArray then
				-- print(k,v)
			-- end
			-- print("**********************")
			for k1, v1 in pairs(v) do
				print(k1,v1)
			end
		end
		for k , v in pairs(self.properties.bgArray) do
			-- if k == #self.properties.bgArray then
				-- print(k,v)
			-- end
			-- print(v.gid ~= 21)
			-- if v.gid ~= "21" then
				print("**********************")
				for k1, v1 in pairs(v) do
					print(k1,v1)
				end
			-- end
		end
		--]]--
		-- cc.log(self.properties.toString());
		
		-- return self.properties;
		
		
			
	end
		
	return MapProperty

end

------------------------------------------------------------------------------------
--导入CocosStudio导出的UI
-------------------------------------------------------------------------------------
if 
	local ui = ccs.GUIReader:getInstance():widgetFromJsonFile("Resources/testUI.ExportJson")
	self:addChild(ui)
	ui:setPosition(0,0)

	--释放内存
	ccs.SceneReader:destroyInstance()
	ccs.ActionManagerEx:destroyInstance()
	ccs.GUIReader:destroyInstance()

	local uiNode = cc.uiloader:load("TestUI.json")
	self:addChild(uiNode)
	cc.uiloader:load("XXXX.json")

	cc.uiloader:seekNodeByTag(bglayer,20)
	cc.uiloader:seekNodeByName(bglayer,"name")
end

------------------------------------------------------------------------------------
--自定义事件
-------------------------------------------------------------------------------------
if 
	--
	local listener = cc.EventListenerCustom:create("MSG_UPDATA", handler(self, self.onUpdataEvent))
    local eventDispatcher = self:getEventDispatcher()
    eventDispatcher:addEventListenerWithFixedPriority(listener, 1)
	--
	cc.Director:getInstance():getEventDispatcher():removeEventListener(listener)
	
	--
	local event = cc.EventCustom:new("MSG_UPDATA")
	event._name = "delete"
	cc.Director:getInstance():getEventDispatcher():dispatchEvent(event)
	--
	
	function EditorScene:onUpdataEvent(event)
		local eventName = event:getEventName()
		print(eventName,"~~~~~~~~~~~~~~自定义事件响应")
		
	end
	
end
