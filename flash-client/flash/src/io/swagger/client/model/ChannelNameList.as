package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class ChannelNameList implements ListWrapper {
        // This declaration below of _channelName_obj_class is to force flash compiler to include this class
        private var _channelName_obj_class: io.swagger.client.model.ChannelName = null;
        [XmlElements(name="channelName", type="io.swagger.client.model.ChannelName")]
        public var channelName: Array = new Array();

        public function getList(): Array{
            return channelName;
        }

}

}
