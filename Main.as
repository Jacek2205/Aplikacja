package  {
import flash.display.Sprite;
import com.greensock.easing.*;
import flash.events.MouseEvent;
import flash.desktop.NativeApplication;
import flash.desktop.SystemIdleMode;
import flash.display.MovieClip;
import flash.display.Stage;
import flash.display.StageAlign;
import flash.display.StageOrientation;
import flash.display.StageScaleMode;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.StageOrientationEvent;
import flash.system.Capabilities;
import flash.text.TextField;
import flash.ui.Keyboard;
import com.thanksmister.touchlist.renderers.TouchListItemRenderer;
import com.thanksmister.touchlist.events.ListItemEvent;
import com.thanksmister.touchlist.controls.TouchList;
import flash.net.dns.AAAARecord;
import com.greensock.*;

	
	
	public class Main extends Sprite {
		
		
		public var boo:Boolean = new Boolean();
		public var touchList:TouchList;
		public var textOutput:TextField;
		public var stageOrientation:String = StageOrientation.DEFAULT;
		
			

		public function Main() {
			
			init();
			
			
		}
		public function init():void {
			trace("start");
			
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			maska.visible = false;



            touchList = new TouchList(552, stage.stageHeight);
			addChild(touchList);
			touchList.x = -552;
			
			
			
			
				var item0:TouchListItemRenderer = new TouchListItemRenderer();
					item0.index = 0;
					item0.data = "Wiadomości";// 
					item0.itemHeight = 95;
					touchList.addListItem(item0);
					
					var item1:TouchListItemRenderer = new TouchListItemRenderer();
					item1.index = 1;
					item1.data = "Sport";// 
					item1.itemHeight = 95;
					touchList.addListItem(item1);
					
					var item2:TouchListItemRenderer = new TouchListItemRenderer();
					item2.index = 2;
					item2.data = "Ratusz";// 
					item2.itemHeight = 95;
					touchList.addListItem(item2);
					
					
					var item3:TouchListItemRenderer = new TouchListItemRenderer();
					item3.index = 3;
					item3.data = "Mapy";// 
					item3.itemHeight = 95;
					touchList.addListItem(item3);
					
					var item4:TouchListItemRenderer = new TouchListItemRenderer();
					item4.index = 4;
					item4.data = "Środowiski";// 
					item4.itemHeight = 95;
					touchList.addListItem(item4);
					
					var item5:TouchListItemRenderer = new TouchListItemRenderer();
					item5.index = 5;
					item5.data = "Firma";// 
					item5.itemHeight = 95;
					touchList.addListItem(item5);
					
					var item6:TouchListItemRenderer = new TouchListItemRenderer();
					item6.index = 6;
					item6.data = "Władze";// 
					item6.itemHeight = 95;
					touchList.addListItem(item6);
					
					var item7:TouchListItemRenderer = new TouchListItemRenderer();
					item7.index = 7;
					item7.data = "Status sprawy";// 
					item7.itemHeight = 95;
					touchList.addListItem(item7);
					
					var item8:TouchListItemRenderer = new TouchListItemRenderer();
					item8.index = 8;
					item8.data = "Praca";// 
					item8.itemHeight = 95;
					touchList.addListItem(item8);
					
					var item9:TouchListItemRenderer = new TouchListItemRenderer();
					item9.index = 9;
					item9.data = "Kontakt";// 
					item9.itemHeight = 95;
					touchList.addListItem(item9);
					
					main.bar.addEventListener(MouseEvent.CLICK, menu);
					touchList.addEventListener(ListItemEvent.ITEM_SELECTED, listItemSelected);
					map.back2.addEventListener(MouseEvent.CLICK, mapBack);


			
		}
		
		
		// open screeeeen
		public function  listItemSelected(e:ListItemEvent):void
		{
			if(e.renderer.index == 1){
				
				//TweenLite.to(kk, .3, {x:0}); //88
				//TweenLite.to(main, .3, {x:0}); //88
                //TweenLite.to(touchList, .3, {x:-552});
                //boo = false;
				trace("1");

			}
			
			if (e.renderer.index == 0){
				
				  TweenLite.to(map, .3, {x:0}); //88
				  TweenLite.to(main, .3, {x:0}); //88
                  TweenLite.to(touchList, .3, {x:-552});
                  boo = false;
				  map.jj();

			}
			
		}
		
		
		

 public function mapBack(event:MouseEvent):void{
	
	//map.jj();
	                map.clearr();
				    TweenLite.to(map, .3, {x:640}); //88
				//TweenLite.to(main, .3, {x:0}); //88
                //TweenLite.to(touchList, .3, {x:-552});
                //boo = false;
				
				
}
		
		
		// open menu
		public function menu(event:MouseEvent):void {
			trace("menu");
			
			
			if(boo == false){
            TweenLite.to(main, .3, {x:552}); //88
            TweenLite.to(touchList, .3, { x:0 } );
			maska.visible = true;
            boo = true;
            }
            else{

            TweenLite.to(main, .3, {x:0}); //88
            TweenLite.to(touchList, .3, { x: -552 } );
			maska.visible = false;
            boo = false;
            }

			}

	}
	
}
