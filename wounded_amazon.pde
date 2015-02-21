int sSize = 100;
PImage p;
int pixRatio = 20;
boolean useRect = true;
 
void setup()
{
  p   = loadImage("wamazon.jpg");
 size(750,661);
 image(p, 0, 0);
     
pixelate(pixRatio);
 
}
 
public void pixelate(int cubeSize)
{
//int cubeSize = 20; // in pixels
 
for (int i=0; i<width; i+=cubeSize)
 for (int j=0; j<height; j+=cubeSize)
 {
   color c = avgColor(i,
                      j,
                      cubeSize,
                      cubeSize);
  
   fill(c);
   if (useRect)
    rect(i,j,cubeSize, cubeSize);
   else
    ellipse(i, j, cubeSize, cubeSize);
    
 }
 
 
}
 
