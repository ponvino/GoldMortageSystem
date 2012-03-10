package bma.supervisor.script
{
	import mx.controls.Image;
	
	public class DataGridColumnUpdateWOImageRenderer extends Image {
		
		
		[Embed(source="./images/request-for-update-small.jpg")]
		public static var _updateWorkOrderIcon:Class;
		
		public function DataGridColumnUpdateWOImageRenderer() {
			scaleContent = false;
			percentWidth = 10;
			setStyle("paddingRight", 5);
			setStyle("horizontalAlign", "center");
			setStyle("verticalAlign", "top");
		}
		
		override public function set data(value:Object):void {
			super.data = value;
			if(value) {
				if(value.hasOwnProperty("requestForUpdate")) {
					var requestForUpdateFlag:String = value.requestForUpdate;
					if(requestForUpdateFlag == "true") {
						source = _updateWorkOrderIcon;
						toolTip = "Click to Request for Update on this Work Order";
					}
				} 
			}
		}
	}
}