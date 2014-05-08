﻿package com.jacksonkr.utils.slider {	import caurina.transitions.Tweener;	import flash.display.Sprite;	import flash.display.SimpleButton;	import flash.events.Event;	import flash.events.MouseEvent;	import flash.geom.Rectangle;		public class Slider extends Sprite {		public static const SLIDER_ACTIVE:String = "slider_active";		public static const SLIDER_INACTIVE:String = "slider_inactive";						private var _clickProps:Object;		private var _dragging:Boolean = false;		private var _is_over:Boolean = false;				public static const VERSION:String = "1.3";		public var track:Sprite;		public var trackFill:Sprite;		public var thumb:SimpleButton;				public function Slider():void {			//running percentage setter to match thumb location			this.percentage = this.percentage;						addEventListener(MouseEvent.MOUSE_DOWN, thumbMouseDownHandler);			addEventListener(MouseEvent.ROLL_OUT, rollOutHandler);			addEventListener(MouseEvent.ROLL_OVER, rollOverHandler);		}				private function rollOutHandler(event:MouseEvent):void {			if(!isActive) dispatchEvent(new Event(Slider.SLIDER_INACTIVE));			_is_over = false;		}		private function rollOverHandler(event:MouseEvent):void {			if(!isActive) dispatchEvent(new Event(Slider.SLIDER_ACTIVE));			_is_over = true;		}		private function thumbMouseDownHandler(event:MouseEvent):void {			_dragging = true;			if(event.target == thumb) {				_clickProps = {mouseX:thumb.mouseX, mouseY:thumb.mouseY}			} else if(event.target != thumb) {				if(mouseX / track.width > 0) {					percentage = mouseX / track.width;					_clickProps = {mouseX:0, mouseY:0}				}			}						stage.addEventListener(MouseEvent.MOUSE_MOVE, thumbMouseMoveHandler);			stage.addEventListener(MouseEvent.MOUSE_UP, thumbMouseUpHandler);		}		private function thumbMouseMoveHandler(event:MouseEvent):void {			try {				var pointer_tip:Number = mouseX - _clickProps.mouseX;				thumb.x = pointer_tip;								if(pointer_tip < 0) {					thumb.x = 0;				} else if(pointer_tip > track.width) {					thumb.x = track.width;				}								percentage = percentage;			} catch(e:Error) {				trace("Slider->thumbMouseMoveHandler;", e);			}		}		private function thumbMouseUpHandler(event:MouseEvent):void {			_dragging = false;			if(!isActive) dispatchEvent(new Event(Slider.SLIDER_INACTIVE));			stage.removeEventListener(MouseEvent.MOUSE_UP, thumbMouseUpHandler);			stage.removeEventListener(MouseEvent.MOUSE_MOVE, thumbMouseMoveHandler);		}				public function get isActive():Boolean {			if(_dragging) return true;			if(_is_over) return true;			return false;		}		public function get percentage():Number {			return thumb.x / (track.width);		}		public function set percentage(p:Number):void {			if((p < 0) || (p > 1.0)) {				throw new Error("Slider->default; Number must be == 0 and <= 1.0");			}						//thumb.x = p * track.width; // - thumb.width / 2;			var complete:Function = function():void {				trackFill.width = thumb.x;				dispatchEvent(new Event(Event.CHANGE));			}			Tweener.addTween(thumb, {x:p * track.width, time:0.1, transition:"easeOutCirc", onUpdate:complete, onComplete:complete});		}		public function restoreScale():void {			// fix any distortion			var w:Number = width;			scaleX = 1.0;			track.width = w;			trackFill.width = thumb.x;		}		public function stopDragging():void {			thumbMouseUpHandler(new MouseEvent(MouseEvent.MOUSE_UP));		}		public function get version():String {			return Slider.VERSION;		}	}}