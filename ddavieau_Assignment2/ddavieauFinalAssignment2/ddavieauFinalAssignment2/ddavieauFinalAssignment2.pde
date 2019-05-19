//changing a size or position variable updates the entire portrait

void setup() {
 size (1000,1000); 
 background(255);
  
}

void draw() { 
//int canvasWidth = width;
//int canvasHeight = height;

//float p0x = canvasWidth*.05;
//float p0y = canvasHeight*.04;
//float p1x = canvasWidth*.2;
//float p1y = canvasHeight*.10;
//float p2x = canvasWidth*.19;
//float p2y = canvasHeight*.38;
//float p3x = canvasWidth*.32;
//float p3y = canvasHeight*.46;

float p0x = width*.05;
float p0y = height*.04;
float p1x = width*.2;
float p1y = height*.10;
float p2x = width*.19;
float p2y = height*.38;
float p3x = width*.32;
float p3y = height*.46;
  
  
  
beginShape();
fill(125,123,123);
curveVertex(p0x,p0y);
curveVertex(p1x,p1y);
curveVertex(p2x,p2y);
curveVertex(p3x,p3y);
curveVertex(p3x,p3y);
endShape(CLOSE);
beginShape();
endShape();

//head
fill(255, 243, 230);
beginShape();
curveVertex(44.0,282.0);
curveVertex(59.0,74.0);
curveVertex(105.0,22.0);
curveVertex(206.0,6.0);
curveVertex(315.0,11.0);
curveVertex(401.0,84.0);
curveVertex(421.0,154.0);
curveVertex(427.0,243.0);
curveVertex(406.0,329.0);
curveVertex(419.0,327.0);
curveVertex(432.0,346.0);
curveVertex(422.0,376.0);
curveVertex(409.0,412.0);
curveVertex(397.0,441.0);
curveVertex(388.0,448.0);
curveVertex(374.0,508.0);
curveVertex(347.0,557.0);
curveVertex(331.0,590.0);
curveVertex(305.0,618.0);
curveVertex(296.0,616.0);
curveVertex(248.0,640.0);
curveVertex(197.0,639.0);
curveVertex(143.0,633.0);
curveVertex(116.0,617.0);
curveVertex(88.0,596.0);
curveVertex(65.0,567.0);
curveVertex(40.0,498.0);
curveVertex(29.0,407.0);
curveVertex(20.0,341.0);
curveVertex(24.0,300.0);
curveVertex(28.0,287.0);
endShape(CLOSE);



//left eye
fill(255,255,255);
beginShape();
curveVertex(89.0,317.0);
curveVertex(89.0,317.0);
curveVertex(163.0,318.0);
curveVertex(178.0,334.0);
curveVertex(132.0,333.0);
curveVertex(98.0,322.0);
curveVertex(98.0,322.0);
endShape(CLOSE);

//right eye
fill(255,255,255);
beginShape();
curveVertex(274.0,342.0);
curveVertex(274.0,342.0);
curveVertex(295.0,331.0);
curveVertex(338.0,344.0);
curveVertex(328.0,347.0);
curveVertex(328.0,347.0);
endShape(CLOSE);

//mouth

fill(255, 230, 230);
beginShape();
curveVertex(134.0,522.0);
curveVertex(134.0,522.0);
curveVertex(192.0,505.0);
curveVertex(210.0,514.0);
curveVertex(229.0,509.0);
curveVertex(269.0,527.0);
curveVertex(227.0,544.0);
curveVertex(178.0,537.0);
curveVertex(178.0,537.0);
endShape(CLOSE);

//hair
fill(51, 26, 0);
beginShape();
curveVertex(50.0,286.0);
curveVertex(56.0,242.0);
curveVertex(84.0,224.0);
curveVertex(98.0,177.0);
curveVertex(92.0,124.0);
curveVertex(115.0,106.0);
curveVertex(152.0,116.0);
curveVertex(189.0,123.0);
curveVertex(223.0,126.0);
curveVertex(265.0,130.0);
curveVertex(304.0,136.0);
curveVertex(340.0,140.0);
curveVertex(377.0,148.0);
curveVertex(385.0,210.0);
curveVertex(381.0,272.0);
curveVertex(401.0,289.0);
curveVertex(422.0,287.0);
curveVertex(430.0,258.0);
curveVertex(431.0,245.0);
curveVertex(433.0,200.0);
curveVertex(429.0,146.0);
curveVertex(420.0,92.0);
curveVertex(374.0,50.0);
curveVertex(332.0,8.0);
curveVertex(280.0,2.0);
curveVertex(213.0,3.0);
curveVertex(170.0,3.0);
curveVertex(118.0,3.0);
curveVertex(89.0,25.0);
curveVertex(59.0,45.0);
curveVertex(39.0,107.0);
curveVertex(38.0,221.0);
curveVertex(39.0,271.0);
curveVertex(37.0,283.0);
endShape();

//nose
noStroke();
fill(245, 233, 220);
beginShape();
curveVertex(199.0,340.0);
curveVertex(199.0,340.0);
curveVertex(173.0,439.0);
curveVertex(204.0,413.0);
curveVertex(204.0,413.0);
endShape(CLOSE);
beginShape();
curveVertex(254.0,384.0);
curveVertex(254.0,384.0);
curveVertex(254.0,438.0);
curveVertex(247.0,433.0);
curveVertex(247.0,433.0);
endShape(CLOSE);

//leftEyeball
fill(51, 26, 0);
beginShape();
curveVertex(120.0,318.0);
curveVertex(120.0,318.0);
curveVertex(124.0,329.0);
curveVertex(133.0,332.0);
curveVertex(146.0,333.0);
curveVertex(150.0,318.0);
curveVertex(150.0,318.0);
endShape(CLOSE);

//rightEyeball
beginShape();
beginShape();
curveVertex(328.0,339.0);
curveVertex(328.0,339.0);
curveVertex(324.0,345.0);
curveVertex(314.0,346.0);
curveVertex(301.0,344.0);
curveVertex(298.0,339.0);
curveVertex(297.0,332.0);
curveVertex(297.0,332.0);
endShape();
endShape(CLOSE);



}
