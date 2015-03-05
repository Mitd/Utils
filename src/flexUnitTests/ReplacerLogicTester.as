package flexUnitTests
{
	import flash.utils.Dictionary;
	
	import flexunit.framework.Assert;
	
	import info.mitd.utils.CharReplacer;
	import info.mitd.utils.replaceDicts.RussianToNumbers;

	public class ReplacerLogicTester
	{		
		[Before]
		public function setUp():void
		{
		}
		
		[After]
		public function tearDown():void
		{
		}
		
		[BeforeClass]
		public static function setUpBeforeClass():void
		{
		}
		
		[AfterClass]
		public static function tearDownAfterClass():void
		{
		}
		
		[Test]
		public function testAdditionMethod():void
		{
			var dict:Dictionary = RussianToNumbers.dict;
			var keyString:String = "";
			var resultString:String = "";
			//как проверить, что реплейс отработал правильно?
			//б) вынести все ключи и значения в строки, сделать реплейс для строки ключей, если получилась строка значений, то всё гут
			for(var key:* in dict) {
				keyString += ""+key;
				resultString += ""+dict[key];
			}
			var result:String = CharReplacer.replaceChars(keyString, dict);
			Assert.assertEquals(result, resultString);
		}
	}
}