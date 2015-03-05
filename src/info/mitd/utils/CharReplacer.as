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
			$string = $string.toUpperCase();
			var resultString:String = "";
			var l:uint = $string.length;
			var i:uint = 0;
			var char:String;
			while (i < l) {
				char = $string.charAt(i);
				if ($replaceDict[char]) { 
					char = $replaceDict[char];
				}
				resultString += char;
				i++;
			}
			return resultString;
		}
		
	}

}