import std.stdio;
import std.math;
import std.conv;
import core.stdc.string;

int k;
void main(){
    float A=0, B=0, i, j;
    float[1760] z;
    char[1760] b;
    write("\x1b[2J");
    while(true) {
        memset(b.ptr,32,1760);
        memset(z.ptr,0,7040);
        for(j=0; 6.28>j; j+=0.07) {
            for(i=0; 6.28 >i; i+=0.02) {
                float sini=sin(i),
                      cosj=cos(j),
                      sinA=sin(A),
                      sinj=sin(j),
                      cosA=cos(A),
                      cosj2=cosj+2,
                      mess=1/(sini*cosj2*sinA+sinj*cosA+5),
                      cosi=cos(i),
                      cosB=cos(B),
                      sinB=sin(B),
                      t=sini*cosj2*cosA-sinj* sinA;
                int x=to!int(40+30*mess*(cosi*cosj2*cosB-t*sinB)),
                    y=to!int(12+15*mess*(cosi*cosj2*sinB +t*cosB)),
                    o=x+80*y,
                    N=to!int(8*((sinj*sinA-sini*cosj*cosA)*cosB-sini*cosj*sinA-sinj*cosA-cosi *cosj*sinB));
                if(22>y&&y>0&&x>0&&80>x&&mess>z[o]){
                    z[o]=mess;
                    b[o]=".,-~:;=!*#$@"[N>0?N:0];
                }
            }
        }
        write("\x1b[d");
        for(k=0; 1761>k; k++)
            putchar(k%80?b[k]:10);
        A+=0.04;
        B+= 0.02;
    }
}