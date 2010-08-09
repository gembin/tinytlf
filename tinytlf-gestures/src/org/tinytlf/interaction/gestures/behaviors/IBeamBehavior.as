/*
* Copyright (c) 2010 the original author or authors
*
* Permission is hereby granted to use, modify, and distribute this file
* in accordance with the terms of the license agreement accompanying it.
*/
package org.tinytlf.interaction.gestures.behaviors
{
    import flash.events.MouseEvent;
    import flash.ui.Mouse;
    import flash.ui.MouseCursor;
    
    public class IBeamBehavior extends Behavior
    {
        override protected function onRollOver(event:MouseEvent):void
        {
            Mouse.cursor = MouseCursor.IBEAM;
        }
        
        override protected function onMouseMove(event:MouseEvent):void
        {
            Mouse.cursor = MouseCursor.IBEAM;
        }
        
        override protected function onRollOut(event:MouseEvent):void
        {
            Mouse.cursor = MouseCursor.ARROW;
        }
    }
}