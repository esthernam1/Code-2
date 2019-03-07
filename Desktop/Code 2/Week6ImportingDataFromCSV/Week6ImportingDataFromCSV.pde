Table table; //built in processing class for a table

int numRows;
int largestHigh, smallestHigh;
int largestLow, smallestLow;

void setup() {
  size(displayWidth, displayHeight);
  table = loadTable("nyWeather.csv", "header");

  numRows = table.getRowCount();

  int [] year = new int [numRows];
  int [] high = new int [numRows];
  int [] low = new int [numRows];
  int [] yearMap = new int [numRows];
  int [] highMap = new int [numRows];
  int [] lowMap = new int [numRows];

  for (int i = 0; i< numRows; i++) {
    year[i] = table.getInt(i, 0); 
    low[i] = table.getInt(i, 1); 
    high[i] = table.getInt(i, 2);

    //first parameter = row, second paremter = column
  }

  for (int i = 0; i<numRows-1; i++) {
    if (high[i] > largestHigh) {
      largestHigh = high[i];
    }

    if (high[i] <smallestHigh) {
      smallestHigh = high[i];
    }

    if (low[i] < smallestLow) {
      smallestLow = low[i];
    }

    if (low[i] > largestLow) {
      largestLow = low[i];
    }
  }
}