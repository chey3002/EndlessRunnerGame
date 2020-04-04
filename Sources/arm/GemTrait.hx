package arm;
import arm.SceneBuilder;
class GemTrait extends iron.Trait {

	public static var gemsCollected = 0;
	var bonus=1;
	var player:iron.object.Object = null;

	public function new() {
		super();

		notifyOnUpdate(function() {
			object.transform.rotate(iron.math.Vec4.yAxis(), 0.05);

			if (player == null) player = iron.Scene.active.getChild("Player");
			var w1 = object.transform.world;
			var w2 = player.transform.world;
			var d = iron.math.Vec4.distance(w1.getLoc(), w2.getLoc());
			if(gemsCollected>=10){
				arm.SceneBuilder.bad=9;
			}

			if(gemsCollected>=20){
			
				arm.SceneBuilder.bad=8;
			}
			if(gemsCollected>=30){
			
				arm.SceneBuilder.bad=7;
			}
			if(gemsCollected>=40){
			
				arm.SceneBuilder.bad=6;
			}
			if(gemsCollected>=50){
			
				arm.SceneBuilder.bad=5;
			}
			if(gemsCollected>=60){
				arm.SceneBuilder.bad=3;
			}
			// Collect gem
			if (d < 0.6) {
				gemsCollected=gemsCollected+(1*bonus);
				object.remove();
				arm.SceneBuilder.velocidad=arm.SceneBuilder.velocidad+0.0045;
				// Update UI
				var canvas = iron.Scene.active.getTrait(armory.trait.internal.CanvasScript);
				canvas.getElement("Score").text = gemsCollected + "";
				canvas.getElement("label_velocidad").text = "Km/h:"+(arm.SceneBuilder.velocidad*100) + "";
			}
		});
	}
}
