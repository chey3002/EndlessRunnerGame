package arm;

class PlayerController extends iron.Trait {
	public function new() {
		super();
var z_activator=0;
		notifyOnUpdate(function() {
			var kb = iron.system.Input.getKeyboard();
			var x = object.transform.loc.x;
			var z= object.transform.loc.z;
			
			// Move player
			if ((kb.down("left") || kb.down("a")) && x > -1.8) {
				object.transform.loc.x -= 0.06;
				object.transform.dirty = true;
			}
			if ((kb.down("right") || kb.down("d")) && x < 1.8) {
				object.transform.loc.x += 0.06;
				object.transform.dirty = true;
			}
			if (z_activator==0){
				if ((kb.down("up") || kb.down("w")) && z < 1.8) {
				z_activator=1;
				}
			}
			if (z_activator==1){
				object.transform.loc.z += 0.06;
				object.transform.dirty = true;
				if (z>1.8){
					z_activator=2;
				}
			}
			if (z_activator==2){
				object.transform.loc.z -= 0.06;
				object.transform.dirty = true;
				if (z<=0.96){
					z_activator=0;
				}
			}
		});
	}
}
