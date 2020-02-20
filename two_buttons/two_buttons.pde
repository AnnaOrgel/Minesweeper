import de.bezier.guido.*;
private float theX;
private MyButton button1;
private MyButton button2;
public void setup (){
    size(400, 400);
    textAlign(CENTER);
    textSize(24);
    // make the manager
    Interactive.make( this );
    // create a button
    button1  = new MyButton( 190, 190, 20, 20 );
    button2 = new MyButton(220, 190, 20, 20);
}
public void draw (){
    background( 0 );
    if(button1.isOn())
       text("Button is Activated" + theX, 200, 240);
    if(button2.isOn())
      text("Button is Activated" + theX, 200, 240);
}
public class MyButton
{
    private float x, y, width, height;
    private boolean on;
    public MyButton ( float xx, float yy, float w, float h )
    {
        x = xx; y = yy; width = w; height = h;  
        Interactive.add( this ); // register it with the manager
    }
    public void mousePressed () { 
    on = !on;
    theX = this.x;
    }
    
    public void draw () 
    {
        if ( on ) fill( 200 );
        else fill( 100 );  
        rect(x, y, width, height);
    }
    public boolean isOn(){return on;}
}
  
