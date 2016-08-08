package info.mitd.utils.replaceDicts 
{
	import flash.utils.Dictionary;
	/**
	 * Russian character to numbers map
	 * @author Eugene Kolesnikov aka Mitd
	 */
	public class RussianToNumbers
	{
		private static var _dict:Dictionary;
		
		public static function get dict():Dictionary
		{
			if (!_dict) {
				_dict = new Dictionary();
				_dict["О"] = "0";
				_dict["E"] = "3";
				_dict["А"] = "4";
				_dict["Б"] = "6";
				_dict["Т"] = "7";
				_dict["В"] = "8";
				_dict["Д"] = "9";
				_dict["И"] = "N";
			}
			return _dict;
		}

	}

}
