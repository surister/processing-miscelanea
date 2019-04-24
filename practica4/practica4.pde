PImage img;
PVector velocidad;
PVector aceleracion;

float x = 0.0;
float y = 0.0;

void setup() {
  size(640, 360);
  stroke(255);     

  img = loadImage("/home/surister/Downloads/emoji.png");
  
  velocidad = new PVector(0, 0);
  aceleracion = new PVector(3, 3);

}

int numero(){
    int r;
    r = int(random(-2, 2));
    while (r == 0){
      r = int(random(-2, 2));
    }
    return r;
}
void draw() { 
  background(0);
  image(img, x, y, img.width/4, img.height/4);
  
  
  velocidad.x += aceleracion.x;
  velocidad.y += aceleracion.y;
  
  x = velocidad.x; 
  y = velocidad.y;
  
  if ((x > width - img.width / 4) || (x < 0) || (y > height - img.height / 4) || (y < 0)){
    aceleracion.x *= numero();
    aceleracion.y *= -1;
  }
}
