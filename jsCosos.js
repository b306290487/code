保留方法
{
	cc.winSize  //获得屏幕大小
	cc.log();
	cc.random0To1()
}

UI 常用
{
	//layer  多层layer 切换
		var layer = new cc.LayerMultiplex(layer1, layer2, layer3, layer4, layer5, layer6);
		layer.switchTo(0);
		
	//node 方法
	{	
		//定时器
		{
			this.scheduleUpdate(); //启动精灵的定时器 updata 每帧都会被调用
			update: function(dt){}
			unscheduleUpdate(); //停止定时器。
			
			//延迟2秒后，只执行一次  
			this.scheduleOnce(this.once, 2);
			
			this.schedule(this.onAllowTouches, 5.0); ////每5秒执行一次，无次数限制
			
			//不带参数的回调函数notParameter，延迟5秒后每2秒执行一次，累积执行20次  
			this.schedule(this.notParameter, 2, 20, 5); 
			
			//带参数的回调函数haveParameter，每1.5秒执行一次，累积执行10次  
			this.schedule(function nothing() {  
				this.haveParameter("带参数")  
			}, 1.5, 10); 
			
			**使用完定时器记得关闭
			this.unscheduleUpdate(); //移除schedule  
			this.unschedule(this.notRepeat); //移除没有次数限制的schedule  
			this.unscheduleAllCallbacks();//移除所有schedule的回调函数
		}
	}
	
	
	//基础模板
	{
		var HelloLayer = cc.Layer.extend({
			sprite:null,
			ctor:function(){
				this._super();
				var closeItem = new cc.MenuItemImage{nor,sel,function(),this}
				closeItem.attr({x: ,y: ,anchorX: 0.5, anchorY: 0.5});
				var menu = new cc.Menu(closeIrem);
				menu.x = 0;
				menu.y = 0;
				this.addChild(menu,1);
				
				var label = new cc.LabelTTF("Hello World","Arial",38);
				this.addChild(label,1);
				
				var sprite = new cc.Sprite(png);
				this.addChild(sprite,1);
				
				return true;
			}
		});
		
		var scene = cc.Scene.extend({
			onEnter:function(){
				this._super();
				var layer = new HelloLayer();
				this.addChild(layer);
			}
		});
	}
	
	//基础参数
	attr({x: ,y: ,anchorX: 0.5, anchorY: 0.5,scale: , retation: ,});
	
	//精灵动画
	cc.sequence() cc.rotateTo(2,0) cc.scaleTo(2,1,1) cc.moveBy(2,cc.p(x,y))
	
	//引擎单例对象方法 例如 导演 纹理
	var director = cc.Director._getInstance();  cc.director //获得导演对象  单例  该对象自有一个
	cc.director.getWinSize()
	var texture = cc.textureCache.addImage(res.back_png)  --> cc.Sprite(texture,rect)
	
	 cc.loader.loadImg
	cc.LoaderScene.preload(g_resources, function () {
        if(window.sideIndexBar && typeof sideIndexBar.start === 'function'){
            sideIndexBar.start();
        }else{
            var scene = new cc.Scene();
            scene.addChild(new TestController());
            cc.director.runScene(scene);
        }
    }, this);
	
	//MenuItem  
	{	
		//MenuItemFont
		cc.MenuItemFont.setFontName("Arial");
		cc.MenuItemFont.setFontSize(20);
		var menuItem1 = new cc.MenuItemFont("Switch Camera", this.switchViewCallback, this);
		menuItem1.setColor(cc.color(0, 200, 20));
		
		//MenuItemImage
		var closeItem = new cc.MenuItemImage{nor,sel,function(),this}
		var menu = new cc.Menu(closeIrem);
		
		//LabelAtlas
		var labelAtlas = new cc.LabelAtlas("0123456789", s_fpsImages.png, 12, 32, '.');
		var item2 = new cc.MenuItemLabel(labelAtlas,this.onClick,this)
		item3.setDisabledColor( cc.color(32,32,64) );
		
		//MenuItemToggle
		1
		var label1 = new cc.LabelTTF("Compressed Interpolation: Enabled", "Marker Felt", 26);
        var label2 = new cc.LabelTTF("Compressed Interpolation: Disabled", "Marker Felt", 26);
        var item1 = new cc.MenuItemLabel(label1);
        var item2 = new cc.MenuItemLabel(label2);
        var item = new cc.MenuItemToggle(item1, item2, this.onToggleItem, this);
		
		var item1 = new cc.MenuItemToggle(
            new cc.MenuItemFont("On"),
            new cc.MenuItemFont("Off"));
        item1.setCallback(this.onMenuCallback, this);
		
		2
		var on = new cc.MenuItemImage{res.on_png,res.on_png};
		var off = new cc.MenuItemImage{res.off_png,res.off_png};
		var item1 = new cc.MenuItemToggle(on,off);
        item1.setCallback(this.onMenuCallback, this);
		
		3
		var item4 = new cc.MenuItemToggle(
            new cc.MenuItemFont("Off"),
            new cc.MenuItemFont("33%"),
            new cc.MenuItemFont("66%"),
            new cc.MenuItemFont("100%"),
            this.onMenuCallback, this
        );
        item4.setSelectedIndex(2);
		
		4 new cc.LabelBMFont(str,res.BTFont_fnt)
		
		
		//cc.Menu
		var menu = new cc.Menu(title1, title2, item1, item2, title3, title4, item3, item4, back); // 9 items.
		menu.alignItemsVertically(); //排成一束
	}
	
	//精灵帧缓存  和读取
	{
		var cache = cc.spriteFrameCache
		cache.addSpriteFrames("goods.plist","goods.png")
		var sprite = cc.Sprite("#image.png")
		
		var sprite = cc.Sprite(cache.getSpriteFrame("image.png"))
		
		cache.removeSpriteFramesFromFile("goods.plist")
		cache.removeSpriteFrames() --清除所有
	}
	
	
	//触摸事件
	{
		cc.eventManager.addListener(cc.EventListener.create({
            event: cc.EventListener.TOUCH_ALL_AT_ONCE,
            onTouchesEnded: function(touches, event){
                //Add a new body/atlas sprite at the touched location
                var touch = touches[0];
                var location = touch.getLocation();
                event.getCurrentTarget().addNewSpriteWithCoords(location);
            }
        }), this);
		
		cc.eventManager.addListener({
                event: cc.EventListener.TOUCH_ONE_BY_ONE,
                swallowTouches: true,
                onTouchBegan: this.onTouchBegan,
                onTouchMoved: this.onTouchMoved,
                onTouchEnded: this.onTouchEnded,
                onTouchCancelled: this.onTouchCancelled
            }, this);
			
		cc.eventManager.setPriority(this._touchListener, 1);
		
		********
		cc.eventManager.removeListener(this._touchListener);
	}
	
	
}
