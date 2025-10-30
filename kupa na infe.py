from turtle import*

fillcolor("gold")
begin_fill()
for i in range(4):
    fd(120); rt(90)
end_fill()
fillcolor("tomato")
begin_fill()
bk(20);fd(160);lt(120);fd(160);lt(120);fd(160);lt(120)
end_fill()
pu(); fd(60);rt(90);fd(40);pd()
fillcolor("gray")
begin_fill()
for i in range(4):
    fd(40); lt(90)
end_fill()
lt(90);fd(20);rt(90);fd(40);lt(90);fd(20);lt(90);fd(20);lt(90);fd(40);lt(180)
