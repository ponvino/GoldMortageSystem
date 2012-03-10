package bma.supervisor.script
{
	import mx.controls.Image;
	
	public class DataGridColumnImageRenderer extends Image {
		
		[Embed(source="./images/editcustomer-small.jpg")]
		public static var _editUserIcon:Class;
		
		[Embed(source="./images/deletecustomer-small.jpg")]
		public static var _deleteUserIcon:Class;
		
		[Embed(source="./images/edit-transaction-small.jpg")]
		public static var _editTransactionIcon:Class;
		
		[Embed(source="./images/delete-tx-small.jpg")]
		public static var _deleteTransactionIcon:Class;
		
		[Embed(source="./images/edit-transaction-small.jpg")]
		public static var _editWorkOrderIcon:Class;
		
		[Embed(source="./images/request-for-update-small.jpg")]
		public static var _updateWorkOrderIcon:Class;
		
		[Embed(source="./images/delete-tx-small.jpg")]
		public static var _deleteWorkOrderIcon:Class;
		
		public function DataGridColumnImageRenderer() {
			scaleContent = false;
			percentWidth = 10;
			setStyle("paddingRight", 5);
			setStyle("horizontalAlign", "center");
			setStyle("verticalAlign", "top");
		}
		
		override public function set data(value:Object):void {
			super.data = value;
			if(value) {
				if(value.hasOwnProperty("updateUser")) {
					var flag:String = value.updateUser;
					if(flag == "true") {
						source = _editUserIcon;
						toolTip = "Click to Edit this Customer";
					}
				} else if(value.hasOwnProperty("deleteUser")) {
					var deleteFlag:String = value.deleteUser;
					if(deleteFlag == "true") {
						source = _deleteUserIcon;
						toolTip = "Click to Delete this Customer";
					}
				} else if(value.hasOwnProperty("updateTransaction")) {
					var updateTransactionFlag:String = value.updateTransaction;
					if(updateTransactionFlag == "true") {
						source = _editTransactionIcon;
						toolTip = "Click to Edit this Transaction";
					}
				} else if(value.hasOwnProperty("deleteTransaction")) {
					var deleteTransactionFlag:String = value.deleteTransaction;
					if(deleteTransactionFlag == "true") {
						source = _deleteTransactionIcon;
						toolTip = "Click to Delete this Transaction";
					}
				} else if(value.hasOwnProperty("editWorkOrder")) {
					var editWorkOrderFlag:String = value.editWorkOrder;
					if(editWorkOrderFlag == "true") {
						source = _editWorkOrderIcon;
						toolTip = "Click to Edit this Work Order";
					}
				} else if(value.hasOwnProperty("requestForUpdate")) {
					var requestForUpdateFlag:String = value.requestForUpdate;
					if(requestForUpdateFlag == "true") {
						source = _updateWorkOrderIcon;
						toolTip = "Click to Request for Update on this Work Order";
					}
				} else if(value.hasOwnProperty("deleteWorkOrder")) {
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