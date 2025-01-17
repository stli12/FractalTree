private double fractionLength = 4; 
private int smallestBranch = 15; 
private double branchAngle = .2;  
public void setup() 
{   
  size(700,700);    
  noLoop(); 
} 
public void draw() 
{   
  background(0);   
  stroke(112, 41, 99);
  line(350,350,349,500); 
  drawBranches(350,350,150,3*Math.PI/2);
} 

public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1,angle2,angle3,angle4;
  int endX1,endY1,endX2,endY2,endX3,endY3,endX4,endY4;
  angle1 = angle + branchAngle; 
  angle2 = angle - branchAngle;
  angle3 = angle - 3 * 0.5 + branchAngle;
  angle4 = angle + 3 * 0.5 - branchAngle;
  branchLength = branchLength + fractionLength;
  
  endX1 = (int)(branchLength*Math.cos(angle1) + x);
  endY1 = (int)(branchLength*Math.sin(angle1) + y);
  endX2 = (int)(branchLength*Math.cos(angle2) + x);
  endY2 = (int)(branchLength*Math.sin(angle2) + y);
  endX3 = (int)(branchLength*Math.cos(angle3) + x);
  endY3 = (int)(branchLength*Math.sin(angle3) + y);
  endX4 = (int)(branchLength*Math.cos(angle4) + x);
  endY4 = (int)(branchLength*Math.sin(angle4) + y);
  
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  line(x,y,endX3,endY3);
  line(x,y,endX4,endY4);
  
  if (branchLength > smallestBranch)
  {
    drawBranches(endX1,endY1,branchLength/2.5,angle1);
    drawBranches(endX2,endY2,branchLength/2.5,angle2);
    drawBranches(endX3,endY3,branchLength/2.5,angle3);
    drawBranches(endX4,endY4,branchLength/2.5,angle4);
  }
} 
