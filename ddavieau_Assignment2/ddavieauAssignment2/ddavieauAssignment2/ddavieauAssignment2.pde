//changing a size or position variable updates the entire portrait

void setup() {
 size (500,500); 
 background(255);
  
}

void draw() { 
//shapeMode(CENTER);
int canvasWidth = width+(width/2);
int canvasHeight = height+(height/2);

//int canvasWidth = width;
//int canvasHeight = height;

//head
fill(223, 179, 176);
beginShape();
curveVertex(0.044*canvasWidth,0.282*canvasHeight);
curveVertex(0.059*canvasWidth,0.074*canvasHeight);
curveVertex(0.105*canvasWidth,0.022*canvasHeight);
curveVertex(0.206*canvasWidth,0.006*canvasHeight);
curveVertex(0.315*canvasWidth,0.011*canvasHeight);
curveVertex(0.401*canvasWidth,0.084*canvasHeight);
curveVertex(0.421*canvasWidth,0.154*canvasHeight);
curveVertex(0.427*canvasWidth,0.243*canvasHeight);
curveVertex(0.406*canvasWidth,0.329*canvasHeight);
curveVertex(0.419*canvasWidth,0.327*canvasHeight);
curveVertex(0.432*canvasWidth,0.346*canvasHeight);
curveVertex(0.422*canvasWidth,0.376*canvasHeight);
curveVertex(0.409*canvasWidth,0.412*canvasHeight);
curveVertex(0.397*canvasWidth,0.441*canvasHeight);
curveVertex(0.388*canvasWidth,0.448*canvasHeight);
curveVertex(0.374*canvasWidth,0.508*canvasHeight);
curveVertex(0.347*canvasWidth,0.557*canvasHeight);
curveVertex(0.331*canvasWidth,0.59*canvasHeight);
curveVertex(0.305*canvasWidth,0.618*canvasHeight);
curveVertex(0.296*canvasWidth,0.616*canvasHeight);
curveVertex(0.248*canvasWidth,0.64*canvasHeight);
curveVertex(0.197*canvasWidth,0.639*canvasHeight);
curveVertex(0.143*canvasWidth,0.633*canvasHeight);
curveVertex(0.116*canvasWidth,0.617*canvasHeight);
curveVertex(0.088*canvasWidth,0.596*canvasHeight);
curveVertex(0.065*canvasWidth,0.567*canvasHeight);
curveVertex(0.04*canvasWidth,0.498*canvasHeight);
curveVertex(0.029*canvasWidth,0.407*canvasHeight);
curveVertex(0.02*canvasWidth,0.341*canvasHeight);
curveVertex(0.024*canvasWidth,0.3*canvasHeight);
curveVertex(0.028*canvasWidth,0.287*canvasHeight);
endShape(CLOSE);

//left eye
fill(255,255,255);
beginShape();
curveVertex(0.089*canvasWidth,0.317*canvasHeight);
curveVertex(0.089*canvasWidth,0.317*canvasHeight);
curveVertex(0.163*canvasWidth,0.318*canvasHeight);
curveVertex(0.178*canvasWidth,0.334*canvasHeight);
curveVertex(0.132*canvasWidth,0.333*canvasHeight);
curveVertex(0.098*canvasWidth,0.322*canvasHeight);
curveVertex(0.098*canvasWidth,0.322*canvasHeight);
endShape(CLOSE);

//right eye
fill(255,255,255);
beginShape();
curveVertex(0.274*canvasWidth,0.342*canvasHeight);
curveVertex(0.274*canvasWidth,0.342*canvasHeight);
curveVertex(0.295*canvasWidth,0.331*canvasHeight);
curveVertex(0.338*canvasWidth,0.344*canvasHeight);
curveVertex(0.328*canvasWidth,0.347*canvasHeight);
curveVertex(0.328*canvasWidth,0.347*canvasHeight);

endShape(CLOSE);

////mouth
fill(208, 148, 150);
beginShape();
curveVertex(0.134*canvasWidth,0.522*canvasHeight);
curveVertex(0.134*canvasWidth,0.522*canvasHeight);
curveVertex(0.192*canvasWidth,0.505*canvasHeight);
curveVertex(0.21*canvasWidth,0.514*canvasHeight);
curveVertex(0.229*canvasWidth,0.509*canvasHeight);
curveVertex(0.269*canvasWidth,0.527*canvasHeight);
curveVertex(0.227*canvasWidth,0.544*canvasHeight);
curveVertex(0.178*canvasWidth,0.537*canvasHeight);
curveVertex(0.178*canvasWidth,0.537*canvasHeight);
endShape(CLOSE);

//innerMouth
fill(176, 104, 105);
beginShape();
curveVertex(0.163*canvasWidth,0.517*canvasHeight);
curveVertex(0.163*canvasWidth,0.517*canvasHeight);
curveVertex(0.181*canvasWidth,0.516*canvasHeight);
curveVertex(0.199*canvasWidth,0.518*canvasHeight);
curveVertex(0.217*canvasWidth,0.523*canvasHeight);
curveVertex(0.232*canvasWidth,0.52*canvasHeight);
curveVertex(0.25*canvasWidth,0.524*canvasHeight);
curveVertex(0.25*canvasWidth,0.524*canvasHeight);

endShape(CLOSE);

////hair
fill(66, 55, 53);
beginShape();
curveVertex(0.05*canvasWidth,0.286*canvasHeight);
curveVertex(0.056*canvasWidth,0.242*canvasHeight);
curveVertex(0.084*canvasWidth,0.224*canvasHeight);
curveVertex(0.098*canvasWidth,0.177*canvasHeight);
curveVertex(0.092*canvasWidth,0.124*canvasHeight);
curveVertex(0.115*canvasWidth,0.106*canvasHeight);
curveVertex(0.152*canvasWidth,0.116*canvasHeight);
curveVertex(0.189*canvasWidth,0.123*canvasHeight);
curveVertex(0.223*canvasWidth,0.126*canvasHeight);
curveVertex(0.265*canvasWidth,0.13*canvasHeight);
curveVertex(0.304*canvasWidth,0.136*canvasHeight);
curveVertex(0.34*canvasWidth,0.14*canvasHeight);
curveVertex(0.377*canvasWidth,0.148*canvasHeight);
curveVertex(0.385*canvasWidth,0.21*canvasHeight);
curveVertex(0.381*canvasWidth,0.272*canvasHeight);
curveVertex(0.401*canvasWidth,0.289*canvasHeight);
curveVertex(0.422*canvasWidth,0.287*canvasHeight);
curveVertex(0.43*canvasWidth,0.258*canvasHeight);
curveVertex(0.431*canvasWidth,0.245*canvasHeight);
curveVertex(0.433*canvasWidth,0.2*canvasHeight);
curveVertex(0.429*canvasWidth,0.146*canvasHeight);
curveVertex(0.42*canvasWidth,0.092*canvasHeight);
curveVertex(0.374*canvasWidth,0.05*canvasHeight);
curveVertex(0.332*canvasWidth,0.008*canvasHeight);
curveVertex(0.28*canvasWidth,0.002*canvasHeight);
curveVertex(0.213*canvasWidth,0.003*canvasHeight);
curveVertex(0.17*canvasWidth,0.003*canvasHeight);
curveVertex(0.118*canvasWidth,0.003*canvasHeight);
curveVertex(0.089*canvasWidth,0.025*canvasHeight);
curveVertex(0.059*canvasWidth,0.045*canvasHeight);
curveVertex(0.039*canvasWidth,0.107*canvasHeight);
curveVertex(0.038*canvasWidth,0.221*canvasHeight);
curveVertex(0.039*canvasWidth,0.271*canvasHeight);
curveVertex(0.037*canvasWidth,0.283*canvasHeight);

endShape();

////nose
noStroke();
fill(203, 160, 154);
beginShape();
curveVertex(0.199*canvasWidth,0.34*canvasHeight);
curveVertex(0.199*canvasWidth,0.34*canvasHeight);
curveVertex(0.173*canvasWidth,0.439*canvasHeight);
curveVertex(0.204*canvasWidth,0.413*canvasHeight);
curveVertex(0.204*canvasWidth,0.413*canvasHeight);
endShape(CLOSE);
beginShape();
curveVertex(0.254*canvasWidth,0.384*canvasHeight);
curveVertex(0.254*canvasWidth,0.384*canvasHeight);
curveVertex(0.254*canvasWidth,0.438*canvasHeight);
curveVertex(0.247*canvasWidth,0.433*canvasHeight);
curveVertex(0.247*canvasWidth,0.433*canvasHeight);
endShape(CLOSE);

////leftEyeball
fill(45, 27, 23);
beginShape();
curveVertex(0.12*canvasWidth,0.318*canvasHeight);
curveVertex(0.12*canvasWidth,0.318*canvasHeight);
curveVertex(0.124*canvasWidth,0.329*canvasHeight);
curveVertex(0.133*canvasWidth,0.332*canvasHeight);
curveVertex(0.146*canvasWidth,0.333*canvasHeight);
curveVertex(0.15*canvasWidth,0.318*canvasHeight);
curveVertex(0.15*canvasWidth,0.318*canvasHeight);

endShape(CLOSE);

////rightEyeball
beginShape();
beginShape();
curveVertex(0.328*canvasWidth,0.339*canvasHeight);
curveVertex(0.328*canvasWidth,0.339*canvasHeight);
curveVertex(0.324*canvasWidth,0.345*canvasHeight);
curveVertex(0.314*canvasWidth,0.346*canvasHeight);
curveVertex(0.301*canvasWidth,0.344*canvasHeight);
curveVertex(0.298*canvasWidth,0.339*canvasHeight);
curveVertex(0.297*canvasWidth,0.332*canvasHeight);
curveVertex(0.297*canvasWidth,0.332*canvasHeight);

endShape();
endShape(CLOSE);

//leftEyebrow
fill(66, 55, 53);
beginShape();
curveVertex(0.188*canvasWidth,0.308*canvasHeight);
curveVertex(0.188*canvasWidth,0.308*canvasHeight);
curveVertex(0.193*canvasWidth,0.297*canvasHeight);
curveVertex(0.18*canvasWidth,0.293*canvasHeight);
curveVertex(0.161*canvasWidth,0.285*canvasHeight);
curveVertex(0.137*canvasWidth,0.28*canvasHeight);
curveVertex(0.119*canvasWidth,0.28*canvasHeight);
curveVertex(0.099*canvasWidth,0.285*canvasHeight);
curveVertex(0.082*canvasWidth,0.29*canvasHeight);
curveVertex(0.143*canvasWidth,0.306*canvasHeight);
curveVertex(0.143*canvasWidth,0.306*canvasHeight);
endShape(CLOSE);

//rightEyeBrow
beginShape();
curveVertex(0.267*canvasWidth,0.306*canvasHeight);
curveVertex(0.267*canvasWidth,0.306*canvasHeight);
curveVertex(0.297*canvasWidth,0.305*canvasHeight);
curveVertex(0.321*canvasWidth,0.306*canvasHeight);
curveVertex(0.346*canvasWidth,0.319*canvasHeight);
curveVertex(0.33*canvasWidth,0.329*canvasHeight);
curveVertex(0.313*canvasWidth,0.328*canvasHeight);
curveVertex(0.279*canvasWidth,0.319*canvasHeight);
curveVertex(0.265*canvasWidth,0.313*canvasHeight);
curveVertex(0.265*canvasWidth,0.313*canvasHeight);
endShape(CLOSE);

//leftEyebag
fill(177, 140, 131);
//curve(0.282*canvasWidth,0.351*canvasHeight,0.306*canvasWidth,0.364*canvasHeight,0.327*canvasWidth,0.365*canvasHeight,0.342*canvasWidth,0.363*canvasHeight);
curve(.272*canvasWidth,.314*canvasHeight,.284*canvasWidth,.356*canvasHeight,.337*canvasWidth,.358*canvasHeight,.366*canvasWidth,.338*canvasHeight);


//rightEyeBag
curve(.201*canvasWidth,.288*canvasHeight,.171*canvasWidth,.347*canvasHeight,.091*canvasWidth,.331*canvasHeight,.069*canvasWidth,.261*canvasHeight);
//beginShape();
//curveVertex(201.0,288.0);
//curveVertex(171.0,347.0);
//curveVertex(91.0,331.0);
//curveVertex(69.0,261.0);
//endShape();

//chinShadow
beginShape();
fill(203, 160, 154);
curveVertex(0.165*canvasWidth,0.546*canvasHeight);
curveVertex(0.165*canvasWidth,0.546*canvasHeight);
curveVertex(0.189*canvasWidth,0.542*canvasHeight);
curveVertex(0.209*canvasWidth,0.547*canvasHeight);
curveVertex(0.231*canvasWidth,0.552*canvasHeight);
curveVertex(0.242*canvasWidth,0.559*canvasHeight);
curveVertex(0.225*canvasWidth,0.565*canvasHeight);
curveVertex(0.192*canvasWidth,0.561*canvasHeight);
curveVertex(0.177*canvasWidth,0.555*canvasHeight);
curveVertex(0.177*canvasWidth,0.555*canvasHeight);
endShape();

//upperLip
beginShape();
curveVertex(0.218*canvasWidth,0.463*canvasHeight);
curveVertex(0.218*canvasWidth,0.463*canvasHeight);
curveVertex(0.21*canvasWidth,0.468*canvasHeight);
curveVertex(0.211*canvasWidth,0.476*canvasHeight);
curveVertex(0.212*canvasWidth,0.484*canvasHeight);
curveVertex(0.214*canvasWidth,0.488*canvasHeight);
curveVertex(0.219*canvasWidth,0.481*canvasHeight);
curveVertex(0.219*canvasWidth,0.481*canvasHeight);
endShape();

//leftNostril
beginShape();
curveVertex(0.182*canvasWidth,0.448*canvasHeight);
curveVertex(0.182*canvasWidth,0.448*canvasHeight);
curveVertex(0.189*canvasWidth,0.443*canvasHeight);
curveVertex(0.198*canvasWidth,0.45*canvasHeight);
curveVertex(0.196*canvasWidth,0.456*canvasHeight);
curveVertex(0.184*canvasWidth,0.453*canvasHeight);
curveVertex(0.184*canvasWidth,0.453*canvasHeight);
endShape(CLOSE);

//rightNostril
beginShape();
curveVertex(0.23*canvasWidth,0.449*canvasHeight);
curveVertex(0.23*canvasWidth,0.449*canvasHeight);
curveVertex(0.236*canvasWidth,0.447*canvasHeight);
curveVertex(0.243*canvasWidth,0.446*canvasHeight);
curveVertex(0.25*canvasWidth,0.453*canvasHeight);
curveVertex(0.247*canvasWidth,0.461*canvasHeight);
curveVertex(0.247*canvasWidth,0.461*canvasHeight);
endShape();

}
