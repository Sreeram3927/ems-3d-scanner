
int scanData[40];

void scanObject() {
  for (int z = 0; z <= 40; z++) {
    rotarySpin(5);
    scanData[z] = irRead();
  }
  for (int z = 0; z <= 40; z++) {
    Serial.print(scanData[z]);
    Serial.print(" ");
  }
  Serial.println("");
}

void startScan() {

  scanObject();

  
}