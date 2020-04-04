package arm;
import arm.GemTrait;

class ObstaculoTrait extends iron.Trait {
	var player:iron.object.Object = null;

	public function new() {
		super();

		notifyOnUpdate(function() {
			object.transform.rotate(iron.math.Vec4.yAxis(), 0.05);

			if (player == null) player = iron.Scene.active.getChild("Player");
			var w1 = object.transform.world;
			var w2 = player.transform.world;
			var d = iron.math.Vec4.distance(w1.getLoc(), w2.getLoc());
			
			// Collect Obstaculo
			if (d < 0.6) {
			object.remove();
				// Update UI
				var canvas = iron.Scene.active.getTrait(armory.trait.internal.CanvasScript);
				canvas.getElement("Score").text = arm.GemTrait.gemsCollected + "";
				
			}
		});
	}
}