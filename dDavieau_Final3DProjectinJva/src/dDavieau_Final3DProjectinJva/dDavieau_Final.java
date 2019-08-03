package dDavieau_Final3DProjectinJva;

import processing.core.*;
import processing.data.*;
import processing.event.*;
import processing.opengl.*;

import processing.core.*;

import java.util.HashMap;
import java.util.ArrayList;
import java.io.File;
import java.io.BufferedReader;
import java.io.PrintWriter;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.IOException;

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
		translate(width / 2, height / 2);
		scale(1, -1, 1);
		rotateY(radians(frameCount));

		noFill();
		strokeWeight(1);

		translate(-dimensions / 2, -dimensions / 2, -dimensions / 2);
		for (int i = 0; i < vecData.length; i++) {
			vecData[i].z = noise(frameCount * 0.005f + i) * dimensions;
			PVector v = vecData[i];
			stroke(0, 255, 65, 50);
			strokeWeight(2);
			line(v.x, 0, v.z, v.x, v.y, v.z);
			stroke(0, 255, 65);
			strokeWeight(2);
			point(v.x, v.y, v.z);

		}

	}

	public void settings() {
		size(1500, 1500, P3D);
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
