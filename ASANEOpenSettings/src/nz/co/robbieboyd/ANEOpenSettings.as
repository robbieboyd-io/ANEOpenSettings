package nz.co.robbieboyd
{
	import flash.external.ExtensionContext;

	public class ANEOpenSettings
	{
		private static var extContext:ExtensionContext = null;
		private static var _instance:ANEOpenSettings = null;
		private static var _shouldCreateInstance:Boolean = false;
		
		public function ANEOpenSettings()
		{
			if (_shouldCreateInstance)
			{
				extContext = ExtensionContext.createExtensionContext("nz.co.robbieboyd", "net");
			}
			else
			{
				throw new Error("ERROR CONTEXT NOT INITIALIZED!!");  
			}		
		}
		
		public static function get instance():ANEOpenSettings {
			
			if(_instance == null)
			{
				_shouldCreateInstance = true; 
				_instance = new ANEOpenSettings();
				_shouldCreateInstance = false;
			}
			
			return _instance;
		} 
		
		public function openSettings():void
		{  
			extContext.call("openSettings");
		}
	}
}