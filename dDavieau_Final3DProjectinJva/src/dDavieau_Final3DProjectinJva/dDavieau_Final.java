package dDavieau_Final3DProjectinJva;

import processing.core.*;

public class dDavieau_Final extends PApplet {
	PVector[] vecData = new PVector[1500];

	int dimensions = 750;
	Dataloader acousticSignal;
	int[] y;
	float x;

	public void setup() {
		acousticSignal = new Dataloader(this, "seg_00a37e.csv", "header", y);
		for (int i = 0; i < vecData.length; i++, x += .5f) {
			vecData[i] = new PVector(x, acousticSignal.ydata[i] * 10 + dimensions / 2, x);
		}
	}

	public void draw() {
		
		background(13, 2, 8);
		translate(width / 2, height / 2, 250);
		scale(1, -1, 1); // so Y is up, which makes more sense in plotting
		rotateY(radians(frameCount)/8);
//		rotateX(radians(frameCount)/4);
//		rotateZ(noise(radians(frameCount)));
		noFill();
		strokeWeight(1);

		translate(-dimensions / 2, -dimensions / 2, -dimensions / 2);
		for (int i = 0; i < vecData.length; i++) {
			vecData[i].z = noise(frameCount * 0.001f + i) * dimensions / 3;
			PVector v = vecData[i];
			stroke(0, 255, 65, v.y/6);
			strokeWeight(2);
			line(v.x, v.y + 50, v.z, v.x, v.y - 50, v.z);
			stroke(0, 255, 65);
			strokeWeight(v.y/60);
			point(v.x, v.y, v.z);

		}
	}

	public void settings() {
		size(1920, 1080, P3D);
//		fullScreen(P3D);
	}

	static public void main(String[] passedArgs) {
		String[] appletArgs = new String[] { "dDavieau_Final3DProjectinJva.dDavieau_Final" };
		if (passedArgs != null) {
			PApplet.main(concat(appletArgs, passedArgs));
		} else {
			PApplet.main(appletArgs);
		}
	}
}