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
			
			
			main.jeden.alpha = 0;
			main.dwa.alpha = 0;
			main.trzy.alpha = 0;
			main.cztery.alpha = 0;
			//main.piec.alpha = 0;
			//main.szesc.alpha = 0;
			main.siedem.alpha = 0;
			main.osiem.alpha = 0;
			
			
			
			
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
					item4.data = "Środowisko";// 
					item4.itemHeight = 95;
					touchList.addListItem(item4);
					
					var item5:TouchListItemRenderer = new TouchListItemRenderer();
					item5.index = 5;
					item5.data = "Firma";// 
					item5.itemHeight = 95;
					touchList.addListItem(item5);
					
					var item6:TouchListItemRenderer = new TouchListItemRenderer();
					item6.index = 6;
					item6.data = "Władze Miasta";// 
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
					
					var item10:TouchListItemRenderer = new TouchListItemRenderer();
					item10.index = 10;
					item10.data = "Kontakt";// 
					item10.itemHeight = 95;
					touchList.addListItem(item10);
					
					main.bar.addEventListener(MouseEvent.CLICK, menu);
					touchList.addEventListener(ListItemEvent.ITEM_SELECTED, listItemSelected);
					map.back2.addEventListener(MouseEvent.CLICK, mapBack);
					wiadomosci.back2.addEventListener(MouseEvent.CLICK, wiadomosciBack);
				    sport.back2.addEventListener(MouseEvent.CLICK, sportBack);
					ratusz.back2.addEventListener(MouseEvent.CLICK, ratuszBack);
					srodowisko.back2.addEventListener(MouseEvent.CLICK, srodowiskoBack);
					firma.back2.addEventListener(MouseEvent.CLICK, firmaBack);//
					wladza.back2.addEventListener(MouseEvent.CLICK, wladzaBack);
					status.back2.addEventListener(MouseEvent.CLICK, statusBack);
					praca.back2.addEventListener(MouseEvent.CLICK, pracaBack);
					kontakt.back2.addEventListener(MouseEvent.CLICK, kontaktBack);
					
					///main screen
					main.cztery.addEventListener(MouseEvent.CLICK, _wiadomosci);
					main.osiem.addEventListener(MouseEvent.CLICK, _mapy);
					main.trzy.addEventListener(MouseEvent.CLICK, _sport);
					main.siedem.addEventListener(MouseEvent.CLICK, _ratusz);
					main.dwa.addEventListener(MouseEvent.CLICK, _status);


					
					
					_alpha();


			
		}
		
		
		public function _alpha():void {
			
			TweenLite.to(main.jeden, 1, { alpha:1, delay:0.5 } );
			TweenLite.to(main.osiem, 1, { alpha:1, delay:0.7 } );
			TweenLite.to(main.dwa, 1, { alpha:1, delay:0.9 } );
			TweenLite.to(main.trzy, 1, { alpha:1, delay:1.2 } );
			TweenLite.to(main.cztery, 1, { alpha:1, delay:1.5 } );//
			//TweenLite.to(main.piec, 1, { alpha:1, delay:1.7 } );
			//TweenLite.to(main.szesc, 1, { alpha:1, delay:1.7 } );
			TweenLite.to(main.siedem, 1, { alpha:1, delay:1.7 } );
			


			



			
		}
		
		// open screeeeen
		public function  listItemSelected(e:ListItemEvent):void
		{
			if(e.renderer.index == 0){
				
				TweenLite.to(wiadomosci, .3, {x:0}); //88
				TweenLite.to(main, .3, {x:0}); //88
                TweenLite.to(touchList, .3, {x:-552});
                boo = false;
				maska.visible = false;

				trace("1");

			}
			
			if (e.renderer.index == 1){
				
				  TweenLite.to(sport, .3, {x:0}); //88
				  TweenLite.to(main, .3, {x:0}); //88
                  TweenLite.to(touchList, .3, {x:-552});
                  boo = false;
				  maska.visible = false;

				  //map.jj();

			}
			
			if (e.renderer.index == 2){
				
				  TweenLite.to(ratusz, .3, {x:0}); //88
				  TweenLite.to(main, .3, {x:0}); //88
                  TweenLite.to(touchList, .3, { x: -552 } );
				  maska.visible = false;

                  boo = false;
				  

			}
			
			if (e.renderer.index == 3){
				
				  TweenLite.to(map, .3, {x:0}); //88
				  TweenLite.to(main, .3, {x:0}); //88
                  TweenLite.to(touchList, .3, {x:-552});
                  boo = false;
				  maska.visible = false;

				  
				  map.jj();
				  

			}
			
			if (e.renderer.index == 4){
				
				  TweenLite.to(srodowisko, .3, {x:0}); //88
				  TweenLite.to(main, .3, {x:0}); //88
                  TweenLite.to(touchList, .3, {x:-552});
                  boo = false;
				  maska.visible = false;

				  
				  

			}
			if (e.renderer.index == 5){
				
				  TweenLite.to(firma, .3, {x:0}); //88
				  TweenLite.to(main, .3, {x:0}); //88
                  TweenLite.to(touchList, .3, {x:-552});
                  boo = false;
				  maska.visible = false;

				  

			}
			if (e.renderer.index == 6){
				
				  //TweenLite.to(map, .3, {x:0}); //88
				  //TweenLite.to(main, .3, {x:0}); //88
                  //TweenLite.to(touchList, .3, {x:-552});
                  //boo = false;
				  

			}
			if (e.renderer.index == 7){
				
				  //TweenLite.to(map, .3, {x:0}); //88
				  //TweenLite.to(main, .3, {x:0}); //88
                  //TweenLite.to(touchList, .3, {x:-552});
                  //boo = false;
				  

			}
			
		}
		
		
		

 public function mapBack(event:MouseEvent):void{
	
	
	                map.clearr();
				    TweenLite.to(map, .3, {x:640}); //88
				//TweenLite.to(main, .3, {x:0}); //88
                //TweenLite.to(touchList, .3, {x:-552});
                //boo = false;
				
				
}


public function wiadomosciBack(event:MouseEvent):void{
	
	
	                
				  TweenLite.to(wiadomosci, .3, {x:640}); //88
				//TweenLite.to(main, .3, {x:0}); //88
                //TweenLite.to(touchList, .3, {x:-552});
                //boo = false;
				
				
}

public function sportBack(event:MouseEvent):void{
	
	
	                
				  TweenLite.to(sport, .3, {x:640}); //88
				//TweenLite.to(main, .3, {x:0}); //88
                //TweenLite.to(touchList, .3, {x:-552});
                //boo = false;
				
				
}

public function ratuszBack(event:MouseEvent):void{
	
	
	                
				  TweenLite.to(ratusz, .3, {x:640}); //88
				//TweenLite.to(main, .3, {x:0}); //88
                //TweenLite.to(touchList, .3, {x:-552});
                //boo = false;
				
				
}

public function srodowiskoBack(event:MouseEvent):void{
	
	
	                
				  TweenLite.to(srodowisko, .3, {x:640}); //88
				//TweenLite.to(main, .3, {x:0}); //88
                //TweenLite.to(touchList, .3, {x:-552});
                //boo = false;
				
				
}

public function firmaBack(event:MouseEvent):void{
	
	
	                
				  TweenLite.to(firma, .3, {x:640}); //88
				//TweenLite.to(main, .3, {x:0}); //88
                //TweenLite.to(touchList, .3, {x:-552});
                //boo = false;
				
				
}

public function wladzaBack(event:MouseEvent):void{
	
	
	                
				  TweenLite.to(wladza, .3, {x:640}); //88
				//TweenLite.to(main, .3, {x:0}); //88
                //TweenLite.to(touchList, .3, {x:-552});
                //boo = false;
				
				
}

public function statusBack(event:MouseEvent):void{
	
	
	                
				  TweenLite.to(status, .3, {x:640}); //88
				//TweenLite.to(main, .3, {x:0}); //88
                //TweenLite.to(touchList, .3, {x:-552});
                //boo = false;
				
				
}

public function pracaBack(event:MouseEvent):void{
	
	
	                
				  TweenLite.to(praca, .3, {x:640}); //88
				//TweenLite.to(main, .3, {x:0}); //88
                //TweenLite.to(touchList, .3, {x:-552});
                //boo = false;
				
				
}

public function kontaktBack(event:MouseEvent):void{
	
	
	                
				  TweenLite.to(kontakt, .3, {x:640}); //88
				//TweenLite.to(main, .3, {x:0}); //88
                //TweenLite.to(touchList, .3, {x:-552});
                //boo = false;
				
				
}


/////////////////////////////////
public function _wiadomosci(event:MouseEvent):void {
	
					  TweenLite.to(wiadomosci, .3, {x:0}); //88
					  trace("ddddd");
}

public function _mapy(event:MouseEvent):void {
	
					  TweenLite.to(map, .3, { x:0 } ); //88
					  map.jj();
					  trace("ddddd");
}

public function _sport(event:MouseEvent):void {
	
					  TweenLite.to(sport, .3, { x:0 } ); //88
					  
					  trace("ddddd");
}

public function _ratusz(event:MouseEvent):void {
	
					  TweenLite.to(ratusz, .3, { x:0 } ); //88
					  
					  trace("ddddd");
}

public function _status(event:MouseEvent):void {
	
					  TweenLite.to(status, .3, { x:0 } ); //88
					  
					  trace("ddddd");
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
