import java.util.*;

float xOffset = 20;
float yOffset = 20;
ArrayList<Integer> arr = new ArrayList<Integer>();
int number = 50;
int curr = 0;
int size = 17;
int max = number-1;

void setup()
{
  //frameRate(4);
  size(1000,1000);
  for(int i = 0;i<number;i++)
  {
    arr.add(i+1);
  }
  //frameRate(1);
  Collections.shuffle(arr);
}

void draw()
{
  float currX = 0, currY = 0;
  background(51);

  if (curr>=max) {
    curr=0;
    max--;
  }
  
  if(arr.get(curr) > arr.get(curr+1))
  {
    Collections.swap(arr,curr,curr+1);
  }
  curr++;
  
  for(int i = 0; i < arr.size(); i++)
  {
    if(i==curr)
    {
      fill(255,0,0);
    }
    else if(i > max)
    {
      fill(0,255,0);
    }
    else{
      fill(100);
    }
    for(int j=0;j<arr.get(i);j++)
    {
      rect(currX + xOffset,currY + yOffset,size,size);
      currX+=size;
    }
    currY+=size;
    currX = 0;

  }

  if (max < 0) {
    return;
  }
  //Collections.swap(arr,0,1);
   
}
