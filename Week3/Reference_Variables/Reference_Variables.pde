int x = 5; //primitive variable. Not changed by y=3
int y = x;
y = 3;
println(x);


//arrays use rreference variables
int[] vals1 = {3,4,6,78,9};
int[] vals2 = {-13,409,556,-278,81};
vals1 = vals2;
vals1[0] = 777;
println(vals2[0]);//because we are using an array(reference variable) vals2 didnt get the values from vals1.
                  //It only gets them when needed unlike primitive variable.

println(vals1.length);
