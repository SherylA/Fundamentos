import math as m

class proyectil:
  def __init__(self,x0,y0):
    self.xinit=x0
    self.yinit=y0
  
  def movinit(self,v0,ang,g):
    self.vinit=v0
    self.anginit=ang
    self.grav=g
  
  def Hmax(self):
    ts=self.vinit*m.sin(self.anginit)/self.grav
    y = self.yinit + self.vinit*m.sin(self.anginit)*ts-0.5*self.grav*ts**2
    return(y)

  def Dmax(self):
    tv=(self.vinit*m.sin(self.anginit) + m.sqrt(self.vinit**2*m.sin(self.anginit)**2+2*self.grav*self.yinit))/self.grav
    x = self.xinit+(self.vinit*m.sin(self.anginit))*tv
    return(x)
