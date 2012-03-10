package bma.branchmanager.script
{
	import bma.branchmanager.mxml.RequestForWorkOrderUpdate;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import mx.controls.Alert;
	import mx.controls.Image;
	import mx.managers.PopUpManager;
	
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
		
		public function updateWorkOrder(event : Event) : void {
			var win:RequestForWorkOrderUpdate = PopUpManager.createPopUp(this, RequestForWorkOrderUpdate, true) as RequestForWorkOrderUpdate;
			PopUpManager.centerPopUp(win);
		}
		
		override public function set data(value:Object):void {
			super.data = value;
			if(value) {
				if(value.hasOwnProperty("requestForUpdate")) {
					var requestForUpdateFlag:String = value.requestForUpdate;
					if(requestForUpdateFlag == "true") {
						source = _updateWorkOrderIcon;
						toolTip = "Click to Request for Update on this Work Order";
						addEventListener(MouseEvent.CLICK, updateWorkOrder);
					}
				} 
			}
		}
	}
}