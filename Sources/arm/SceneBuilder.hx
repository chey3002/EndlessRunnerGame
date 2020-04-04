package arm;

class SceneBuilder extends iron.Trait {

	var dist = 0.0;
	var tileNum = 0;
	var tilesVisible = 14;
	var tiles:Array<iron.object.Object> = [];
	var empty:iron.object.Object;
	public static var bad=10;
	public static var velocidad=0.2;
	function spawnTile(num:Int) {
		iron.Scene.active.spawnObject("Tile" + Std.random(4), null, function(o) {

			// Remove old tile
			if (tiles[num % tilesVisible] != null) {
				tiles[num % tilesVisible].remove();
			}

			// Spawn new tile
			tiles[num % tilesVisible] = o;
			o.transform.loc.x = -1.5;
			o.transform.loc.y = num * 4.0;
			o.transform.buildMatrix();

			// Spawn gem
			if (Std.random(3) == 0) {
				iron.Scene.active.spawnObject("Gem", o, function(go) {
					go.transform.loc.x = (Math.random() - 0.5) * 8+4;
					go.transform.loc.y = 3;
					go.transform.buildMatrix();
				});
			}
			// Spawn Obstaculo
			if (Std.random(bad) == 0) {
				iron.Scene.active.spawnObject("Obstaculo", o, function(go) {
					go.transform.loc.x = (Math.random() - 0.5) * 8+4;
					go.transform.loc.y = 3;
					go.transform.buildMatrix();
				});
			}
		});
	}

	public function new() {
		super();

		notifyOnUpdate(function() {
			if (empty == null) empty = iron.Scene.active.getChild("Empty");
				var canvas = iron.Scene.active.getTrait(armory.trait.internal.CanvasScript);
				
			// Spawn new tiles
			while (tileNum < Std.int(dist / 4 + 13)) spawnTile(tileNum++);

			// Travel forward
			dist += velocidad;
			empty.transform.loc.y = dist;
			empty.transform.buildMatrix();
		});
	}
}
