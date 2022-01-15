//3D Programming

//rotation varibles
float rotx, roty;

void setup() {
  size(800, 800, P3D);
  
  //rotation variables
  rotx = radians(45);
  roty = radians(45);
}

void draw() {
  background(255);
  cube(width/2, height/2, 0, #5095CB, 100);
  cube(100, 100, 0, #578B54, 100);
}

void cube(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);
  rotateX(rotx);
  rotateY(roty);
  noFill();
  fill(c);
  strokeWeight(3);
  box(size); //one paramater if a cube
  //or width, height, depth - don't specify specific coordinates, instead use translate
  popMatrix();
}

void ball(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);
  rotateX(rotx);
  rotateY(roty);
  fill(c);
  strokeWeight(3);
  sphere(size);
  popMatrix();
}

//move when mouse is dragged
void mouseDragged() {
  rotx+= (pmouseY - mouseY)*-0.01;
  roty+= (pmouseX - mouseX)*-0.01;
}
