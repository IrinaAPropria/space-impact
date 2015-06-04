package{

	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.utils.Timer;
	
	public class SpaceImpact extends MovieClip{
	
	static var navecnoite:MovieClip;
	var InimigoMarTimer:Timer;
	var InimigoSelvaTimer:Timer;
	var InimigoCidadeTimer:Timer;
	var counterC: Number;
	var counterM: Number;
	var counterS: Number;
	public static var InimigoC: Array = new Array();
	public static var InimigoM: Array = new Array();
	public static var InimigoS: Array = new Array();

		function SpaceImpact(){
			counterC = 0;
			counterM = 0;
			counterS = 0;
			Key.initialize(stage);
			
			InimigoCidadeTimer = new Timer(5000);
            InimigoCidadeTimer.addEventListener("timer", enviaInimigo);
            InimigoCidadeTimer.start();
			
			InimigoMarTimer = new Timer(5000);
            InimigoMarTimer.addEventListener("timer", enviaInimigoMar);
            InimigoMarTimer.start();
			
			
			InimigoSelvaTimer = new Timer(5000);
            InimigoSelvaTimer.addEventListener("timer", enviaInimigoSelva);
            InimigoSelvaTimer.start();
			
			this.addEventListener("limpaecra", limpaecra);
		}	
			
		
		function enviaInimigo(e:Event){
           var inimigo = new InimigoCidade();
           if(currentFrame==7 && counterC < 10){
				addChild(inimigo);
				counterC = counterC +1;
				InimigoC.push(inimigo);
			}
		}
		
		function enviaInimigoMar(e:Event){
           var inimigom = new InimigoMar();
           if(currentFrame==8 && counterS < 10){
				addChild(inimigom);
				counterS = counterS +1;
				InimigoM.push(inimigom);
			}
		}
		
		function enviaInimigoSelva(e:Event){
           var inimigos = new InimigoSelva();
           if(currentFrame==9 && counterS < 10){
				addChild(inimigos);
				counterS = counterS +1;
				InimigoS.push(inimigos);
			}
		}
		
		function limpaecra(e: Event){
			var i: Number,  maxI : Number = 0;
			var j: Number, maxI2 : Number = 0;
			var k: Number, maxI3 : Number = 0;;
			
			
			maxI = InimigoC.length;
			for(i =0; i<maxI; i++){
				//InimigoC.splice(0);
				//InimigoC = null;
				removeChild(InimigoC.pop());
			}
			
			maxI2 = InimigoM.length;
			for(j=0; j<maxI2; j++){
				removeChild(InimigoM.pop());
			}
			
			maxI3 = InimigoS.length;
			for(k=0; k<maxI3; k++){
				removeChild(InimigoS.pop());
			}

		}
		
	}

}
