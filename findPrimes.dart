void main() {

  print("start");
  //int x = 0x7fffffffffffffff;
  int x = 1000000;
  findPrimeS(x);

  print("end");
}

void findPrimeS(int x) {
  //code to find all primes from 1 to x and print them out in the command line

  int lastPrinted = -1;

  for (var i = 2; i <= x; i++) {
    double getPercentage = (i / x) * 100.0;

    if (getPercentage.toInt() > lastPrinted) {
      lastPrinted = getPercentage.toInt();
      print("#"*lastPrinted + " $lastPrinted" + "%");
    }

    // check if only devidable by 1 and 0;
    checkIfPrime(i);
  }

}

void checkIfPrime(int i) {

  for (var j = (i-1); j > 1; j--) {
    if(i%j == 0) {
      return;
    }
  }

  //print(i);
}