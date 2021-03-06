/*
 | Version 10.2
 | Copyright 2010 Esri
 |
 | Licensed under the Apache License, Version 2.0 (the "License");
 | you may not use this file except in compliance with the License.
 | You may obtain a copy of the License at
 |
 |    http://www.apache.org/licenses/LICENSE-2.0
 |
 | Unless required by applicable law or agreed to in writing, software
 | distributed under the License is distributed on an "AS IS" BASIS,
 | WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 | See the License for the specific language governing permissions and
 | limitations under the License.
 */
package widgets.EMHeaderController
{

import flash.events.EventDispatcher;

[Bindable]

public class WidgetItem extends EventDispatcher
{
    public var id:Number; // id of the associated widget
    public var isGroup:Boolean;
    public var icon:Object;
    public var url:String; // url
    public var label:String;
    public var open:Boolean; // indicates whether the associated widget is open or closed
    public var widgets:Array;
}

}
