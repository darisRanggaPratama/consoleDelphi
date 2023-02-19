program BasicArray2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  MyArray: array[1..11] of Integer;
  i, index, value: Integer;

begin
  // Seed the random number generator
  Randomize;

  // Fill the array with unique random integers between 0 and 20
  for i := 1 to 11 do
  begin
    repeat
      MyArray[i] := Random(21);
      index := i - 1;
      while (index >= 1) and (MyArray[index] <> MyArray[i]) do
        Dec(index);
    until index < 1;
  end;

  // Display the array
  Writeln('Original array:');
  for i := 1 to 11 do
    Write(MyArray[i], ' ');
  Writeln;

  // Display the value of the element at index 5
  Writeln('Value at index 5:', MyArray[5]);

  // Change the value of the element at index 5 to 99
  MyArray[5] := 99;
  Writeln('Array after changing value at index 5:');
  for i := 1 to 11 do
    Write(MyArray[i], ' ');
  Writeln;

  // Remove the element at index 6
  for i := 6 to 10 do
    MyArray[i] := MyArray[i+1];
  MyArray[11] := 0;
  Writeln('Array after removing element at index 6:');
  for i := 1 to 11 do
    Write(MyArray[i], ' ');
  Writeln;

  Readln;
end.
/*
Ketika program dijalankan, array MyArray akan diisi dengan 11 bilangan bulat acak antara 0 dan 20 yang tidak mengandung angka yang sama (step 1).
Kemudian, program akan menampilkan array tersebut (step 2). Selanjutnya, program akan mengambil nilai dari elemen pada index ke-5 dan menampilkan nilainya (step 3).
Kemudian, program akan mengubah nilai dari elemen pada index ke-5 menjadi 99 dan menampilkan array yang telah diubah (step 4).
Terakhir, program akan menghapus elemen pada index ke-6 dan menampilkan array yang baru (step 5).

Untuk mengubah nilai dari elemen pada index ke-5, cukup gunakan operator penugasan (:=) dengan menetapkan nilai yang baru.
Misalnya, MyArray[5] := 99; akan mengubah nilai dari elemen pada index ke-5 menjadi 99.

Untuk menghapus elemen pada index ke-6, program harus memindahkan semua elemen setelah elemen pada index ke-6 ke posisi sebelumnya.
Hal ini dapat dilakukan dengan mengubah nilai dari elemen pada index ke-6 menjadi nilai elemen pada index ke-7, nilai elemen pada index ke-7
menjadi nilai elemen pada index ke-8, dan seterusnya hingga nilai elemen pada index ke-10 menjadi nilai elemen pada index ke-11.
Kemudian, elemen pada index ke-11 diatur menjadi 0.
*/

