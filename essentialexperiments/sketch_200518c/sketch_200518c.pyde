import random

def setup():
    size(500, 500)
    background(Colors.black)
    
def draw():
    if mousePressed:
        randomRectWidth = random.randrange(20, 45)
        randomRectHeight = random.randrange(20, 70)
        rect(mouseX, mouseY, randomRectWidth, randomRectHeight)
        fill(Colors.randomize())
        noStroke()
        saveFrame("run05.png")
    
class Colors:
    black = color(0, 0, 0)
    white = color(255, 255, 255)
    pink  = color(225, 73, 96)
    lightBlue = color(79, 192, 191)
    darkBlue = color(36, 56, 106)
    cream = color(251, 231, 198)
    
    @classmethod
    def randomize(self):
        colors = [self.lightBlue, self.darkBlue, self.cream]
        if (mouseX < 100 and mouseY > 30):
            return self.pink
        elif (mouseX > 100 and mouseY < 30):
               return self.lightBlue
        else :
            return random.choice(colors)                
         
