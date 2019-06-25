Table table;
void dataLoader(String fileName, boolean header) {
  table = loadTable(String(fileName), header); //Load data from my captsone project
  int recordCount = table.getRowCount();
  ySignalCoordinates = new int[recordCount];


  for (int i=0;i<recordCount;i+=1,xTime+=.0256) {
    ySignalCoordinates[i] = table.getInt(i,"acoustic_data");
  }

}
