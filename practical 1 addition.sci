clc()
//define complex number
a1=2;
b1=1;
a2=1;
b2=2;
z1=complex(a1,b1);
z2=complex(a2,b2);
//Mathematical operation
z3=z1+z2; //z3=z1-z2,z3=z1*z2,z3=z2/z3//
a3=real(z3);
b3=imag(z3);
//plot
figure(0)
clf()
hf=gcf()
hf.background=-2
ha=gca()
ha.data_bounds=[-5,-5;5,5];
xgrid();
plot([0 a1],[0 b1],'b','LineWidth',3)
plot([0 a2],[0 b2],'r','LineWidth',3)
plot([0 a3],[0 b3],'g','LineWidth',3)
xlabel('Real axis(Re)','FontSize',2)
ylabel('Imaginary axis(Im)','FontSize',2)
legend('$\Large {z_{1}}$','$\Large {z_{2}}$','$\Large {z_{3}}$')
plot(0,0,'sk')
plot(a1,b1,'sk')
plot(a2,b2,'sk')
plot(a3,b3,'sk')
xstring(a1,b1,'$\Large{z_{1}=2+i}$')
xstring(a2,b2,'$\Large{z_{2}=1+2i}$')
xstring(a3,b3,'$\Large{z_{3}=3+3i}$')

//calculate exp form
r1=sqrt(a1^2+b1^2);
r2=sqrt(a2^2+b2^2);
r3=sqrt(a3^2+b3^2);
phi1=atan(b1/a1)*180/%pi;
phi2=atan(b2/a2)*180/%pi;
phi3=atan(b3/a3)*180/%pi;

//Display polynomial and polar parameters
mprintf('%s\t%s\t%s\t%s\n','a','b','r','phi')
mprintf('%4.2f\t%4.2f\t%4.2f\t%4.2f\n',a1,b1,r1,phi1)
mprintf('%4.2f\t%4.2f\t%4.2f\t%4.2f\n',a2,b2,r2,phi2)
mprintf('%4.2f\t%4.2f\t%4.2f\t%4.2f',a3,b3,r3,phi2)
