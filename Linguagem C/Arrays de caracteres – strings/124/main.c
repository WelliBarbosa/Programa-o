#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {int x1,x2,y1,y2,m;
    scanf("%d %d %d %d",&x1,&y1,&x2,&y2);
    m=(y2-y1)/(x2-x1);
    printf("(%d x ) + (%d y) + (%d) ",x2*m,y2,m);
	return 0;
}
