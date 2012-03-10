package bma.supervisor.script
{
	import mx.controls.Alert;
	import mx.core.UIComponent;

	public class MySingleton extends UIComponent
	{
		private static var reference : MySingleton;		
			
		public static function getInstance() : MySingleton {
			if(reference == null) {
				reference = new MySingleton();
			}
			return reference;
		}
	}
}