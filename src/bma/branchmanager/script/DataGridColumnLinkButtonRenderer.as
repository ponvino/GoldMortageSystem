package bma.branchmanager.script
{
	import bma.branchmanager.mxml.ViewTransaction;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import mx.containers.HBox;
	import mx.controls.LinkButton;
	import mx.managers.PopUpManager;
	
	public class DataGridColumnLinkButtonRenderer extends HBox {
		
		public function launchMoreInfo(event:Event):void {
			var win:ViewTransaction = PopUpManager.createPopUp(this, ViewTransaction, true) as ViewTransaction;
			PopUpManager.centerPopUp(win);
		}
		
		override public function set data(value:Object):void {
			removeAllChildren();
			if(value) {
				if(value.hasOwnProperty("recentTransactions")) {
					var recentTransactions:String = value.recentTransactions;
					if(recentTransactions != "") {
						var recentTransactionsArr:Array = recentTransactions.split(",");
						var buttonArr : Array = new Array();
						for(var i : int = 0; i < recentTransactionsArr.length;i++) {
							var button : LinkButton = new LinkButton();
							button.label = recentTransactionsArr[i];
							button.addEventListener(MouseEvent.CLICK, launchMoreInfo);
							button.toolTip = "Click to Edit this Transaction";
							addChild(button);
						}
					}
				}			
			}
		}
	}
}