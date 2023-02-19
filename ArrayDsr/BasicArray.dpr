program BasicArray;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  MyArray: array[1..11] of Integer;
  i, j, temp: Integer;

begin
  // Seed the random number generator
  Randomize;

  // Fill the array with unique random integers between 0 and 20
  for i := 1 to 11 do
  begin
    repeat
      MyArray[i] := Random(21);
      j := i - 1;
      while (j >= 1) and (MyArray[j] <> MyArray[i]) do
        Dec(j);
    until j < 1;
  end;

  // Display the unsorted array
  Writeln('Unsorted array:');
  for i := 1 to 11 do
    Write(MyArray[i], ' ');
  Writeln;

  // Sort the array in ascending order using bubble sort algorithm
  for i := 1 to 10 do
    for j := i + 1 to 11 do
      if MyArray[i] > MyArray[j] then
      begin
        temp := MyArray[i];
        MyArray[i] := MyArray[j];
        MyArray[j] := temp;
      end;

  // Display the sorted array in ascending order
  Writeln('Sorted array in ascending order:');
  for i := 1 to 11 do
    Write(MyArray[i], ' ');
  Writeln;

  // Sort the array in descending order using bubble sort algorithm
  for i := 1 to 10 do
    for j := i + 1 to 11 do
      if MyArray[i] < MyArray[j] then
      begin
        temp := MyArray[i];
        MyArray[i] := MyArray[j];
        MyArray[j] := temp;
      end;

  // Display the sorted array in descending order
  Writeln('Sorted array in descending order:');
  for i := 1 to 11 do
    Write(MyArray[i], ' ');
  Writeln;

  Readln;
end.

/*
Ketika program dijalankan, array MyArray akan diisi dengan 11 bilangan bulat acak antara 0 dan 20 yang tidak mengandung angka yang sama (step 1).
Kemudian, program akan menampilkan array yang belum diurutkan (step 2).
Setelah itu, program akan melakukan sorting pada array tersebut, pertama-tama secara ascending (step 3)
menggunakan algoritma bubble sort dan menampilkan hasilnya (step 4).
Kemudian, program akan mengurutkan array secara descending (step 5) dan menampilkan hasilnya (step 6).

Pada algoritma bubble sort, elemen-elemen array dibandingkan satu per satu mulai dari elemen pertama hingga elemen terakhir.
Jika elemen kedua lebih kecil dari elemen pertama, maka kedua elemen akan ditukar tempat.
Proses ini akan dilakukan terus menerus hingga array terurut. Algoritma ini sederhana namun cukup lambat untuk ukuran array yang besar.

*/
