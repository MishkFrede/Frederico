uses graphabc;
var x,y:integer;
f:boolean;
procedure klavisha(key:integer);
begin
  case key of
    VK_Up:if y>30 then y:=y-10;
    VK_Down:if y<windowheight-30 then y:=y+10;
    VK_Left:if x>30 then x:=x-10;
    VK_Right:if x<windowwidth-30 then x:=x+10;
    VK_Escape:begin
      CloseWindow;
      f:=false;
    end;
  end;
end;
 procedure sharic;
 begin
   setbrushcolor(clMaroon);
   line(x,y,x+20,y+50);
   line(x+20,y+50,x+70,y+80);
   line(x+70,y+80,x+55,y+100);
   line(x,y,x-50,y+50);
   line(x-50,y+50,x-70,y+80);
   line(x-70,y+80,x-90,y+55);
   line(x,y,x,y-120);
   line(x,y-100,x-50,y-45);
   line(x-50,y-45,x-90,y-80);
   line(x,y-100,x+50,y-80);
   line(x+50,y-80,x+45,y-45);
   circle(x,y-130,50);
 end;
 
 procedure sharic2;
 begin
 setbrushcolor(clMaroon);
   line(x,y,x+20,y+50);
   line(x+20,y+50,x+70,y+80);
   line(x+70,y+80,x+55,y+100);
   line(x,y,x-50,y+50);
   line(x-50,y+50,x-70,y+80);
   line(x-70,y+80,x-90,y+55);
   line(x,y,x,y-120);
   line(x,y-100,x-50,y-45);
   line(x-50,y-45,x-90,y-80);
   line(x,y-100,x+50,y-80);
   line(x+50,y-80,x+45,y-45);
   circle(x,y-130,50);
 end;
 
 begin
   f:=true;
   x:=windowwidth div 2;
   y:=windowheight div 2;
   lockdrawing;
   repeat
     clearwindow;
     onkeydown:=klavisha;
     sharic;
     sharic2;
     sleep(50);
     redraw
   until not f;
 end.
