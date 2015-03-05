package
{
	import flash.display.Sprite;
	
	import info.mitd.utils.CharReplacer;
	import info.mitd.utils.replaceDicts.RussianToNumbers;
	
	public class Utils extends Sprite
	{
		public function Utils()
		{
			var str:String = "Если бы мишки были пчелами!";
			var res:String = CharReplacer.replaceChars(str, RussianToNumbers.dict);
			trace(res);
		}
	}
}