R=70/138/3/54
J=M105/35/6.5i
PS=CN-border.ps

gmt psxy -J$J -R$R -T -K > $PS

gmt pscoast -J$J -R$R -Df -A10000 -Na/0.5p -W0.5p -K -O >> $PS
gmt pscoast -J$J -R$R -Df -ECN,TW+p1p,blue@80 -K -O >> $PS
gmt psxy CN-border-L1.dat -J$J -R$R -W1p,red@80 -K -O >> $PS

gmt psxy -J$J -R$R -T -O >> $PS
gmt psconvert -A -P -Tf $PS -Z
