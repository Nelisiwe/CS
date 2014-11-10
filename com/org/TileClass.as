
package com.org
{
import flash.display.*;
import flash.events.*;
import flash.text.*;
/*------------------------------------------------------------------------------------------------*/
public class TileClass extends Sprite
{
private var global_sprite:Sprite=new Sprite();
public var global_label:String = "";
private var global_width:Number;
private var global_height:Number;
private var global_x:Number;
private var global_y:Number;
private var global_bgColor:uint;
/*------------------------------------------------------------------------------------------------*/
public function TileClass(_label:String,__x:Number,__y:Number, __width:Number, __height:Number,bgColor:uint)
{
global_label = _label;
global_width = __width;
global_height = __height;
global_x = __x;
global_y = __y;
global_bgColor = bgColor;
// global_bgColor= 0x6699FF;
var _click:Function;
var _out:Function;
var _over:Function;
buttonMode = true;
useHandCursor = true;
Draw(__x,__y,__width,__height,global_label,0xffffff,global_bgColor,global_sprite);
/*addEventListener(MouseEvent.MOUSE_OVER, _over=function(e:MouseEvent):void
{ Draw(310,160,300,140,global_label,0x000000, 0xffffff,global_sprite); });
addEventListener(MouseEvent.MOUSE_OUT,_out= function(e:MouseEvent):void
{ Draw(310,100,140,140,global_label,0xffffff, 0x0000ff,global_sprite); });
addEventListener(MouseEvent.CLICK,_click = function(e:MouseEvent):void
{ Draw(460,100,140,140,global_label,0xffffff, 0xcccccc,global_sprite);
removeEventListener(MouseEvent.CLICK, _click );
removeEventListener(MouseEvent.MOUSE_OUT, _out);
removeEventListener(MouseEvent.MOUSE_OVER, _over);
dispatchEvent(new ButtonEvent(ButtonEvent.MOUSECLICKEVENT,global_label));
dispatchEvent(new TileEvent(TileEvent.MOUSECLICKEVENT,global_label));
});
*/
addChild(global_sprite);
this.x = global_x;
this.y = global_y;
}
/*------------------------------------------------------------------------------------------------*/
public static function Draw(__x:Number,__y:Number,__width:Number,__height:Number,global_text:String,global_textColor:uint, global_bgColor:uint,global_sprite:Sprite):Sprite
{
while (global_sprite.numChildren > 0)
{
global_sprite.removeChildAt(0);
}
var global_format:TextFormat=new TextFormat();
global_format.size = 22;
global_format.color = global_textColor;
global_format.font = "Century Gothic";
global_format.align = TextFormatAlign.CENTER;
var global_colors:Array = [0xFF0033,0xCC0066,0x33CC66,0x9900CC];
var global_shape:Shape=new Shape();
global_shape.graphics.beginFill( global_colors[uint(Math.random() * 4)]);
global_shape.graphics.drawRect(0,0,__width,__height);
global_shape.graphics.endFill();
global_sprite.addChild(global_shape);
var global_textfield:TextField=new TextField();
global_textfield.defaultTextFormat = global_format;
global_textfield.width = global_sprite.width - 2;
global_textfield.height = 28;
global_textfield.mouseEnabled = false;
global_textfield.y = 2;
global_textfield.text = global_text;
global_textfield.y=(global_sprite.height/2)-(global_textfield.height/2);
global_sprite.addChild(global_textfield);
return (global_sprite);
}
}
}
