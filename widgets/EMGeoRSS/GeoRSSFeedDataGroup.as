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
package widgets.GeoRSS
{

import mx.core.ClassFactory;

import spark.components.DataGroup;

// these events bubble up from the GeoRSSFeedItemRenderer
[Event(name="geoRSSFeedClick", type="flash.events.Event")]
[Event(name="geoRSSFeedMouseOver", type="flash.events.Event")]
[Event(name="geoRSSFeedMouseOut", type="flash.events.Event")]

public class GeoRSSFeedDataGroup extends DataGroup
{
    public function GeoRSSFeedDataGroup()
    {
        super();

        this.itemRenderer = new ClassFactory(GeoRSSFeedItemRenderer);
    }
}

}
