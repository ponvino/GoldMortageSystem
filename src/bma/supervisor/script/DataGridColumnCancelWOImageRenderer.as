package bma.supervisor.script
{
	import mx.controls.Image;
	
	public class DataGridColumnCancelWOImageRenderer extends Image {
		
		
		[Embed(source="./images/delete-tx-small.jpg")]
		public static var _deleteWorkOrderIcon:Class;
		
		public function DataGridColumnCancelWOImageRenderer() {
			scaleContent = false;
			percentWidth = 10;
			setStyle("paddingRight", 5);
			setStyle("horizontalAlign", "center");
			setStyle("verticalAlign", "top");
		}
		
		override public function set data(value:Object):void {
			super.data = value;
			if(value) {
				if(value.hasOwnProperty("deleteWorkOrder")) {
					var deleteWorkOrderFlag:String = value.deleteWorkOrder;
					if(deleteWorkOrderFlag == "true") {
						source = _deleteWorkOrderIcon;
						toolTip = "Click to Cancel this Work Order";
					}
				}
			}
		}
	}
}