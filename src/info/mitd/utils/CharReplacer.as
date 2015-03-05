package info.mitd.utils 
{
	import flash.utils.Dictionary;
	/**
	 * Replacement util
	 * @author Eugene Kolesnikov aka Mitd
	 */
	public class CharReplacer 
	{
		/**
		 * Replace characters to other symbols by replacement map
		 * @param	$string - source string
		 * @param	$replaceDict - replaced map
		 * @return result string with replaced characters
		 */
		public static function replaceChars($string:String, $replaceDict:Dictionary) : String {
			var resultString:String = "";
			var l:uint = $string.length;
			var i:uint = 0;
			var char:String;
			var charUpperCase:String;
//			var isUpperCase:Boolean = false;
			while (i < l) {
				char = $string.charAt(i);
				charUpperCase = char.toUpperCase();
//				isUpperCase = (charUpperCase == char);
				if ($replaceDict[charUpperCase]) { 
					charUpperCase = $replaceDict[charUpperCase];
				}
//				if(!isUpperCase) {
//					charUpperCase = charUpperCase.toLowerCase();
//				}
				resultString += charUpperCase;
				i++;
			}
			return resultString;
		}
		
	}

}