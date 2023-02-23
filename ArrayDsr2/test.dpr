program test;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;


var
  arr: array[0..10] of Integer; // deklarasi array integer dengan kapasitas 11
  i, j, temp: Integer;

begin
  // memasukkan angka acak ke dalam array
  Randomize;
  for i := 0 to 10 do
  begin
    arr[i] := Random(1000) + 1;
    for j := 0 to i - 1 do
    begin
      // memastikan angka acak yang dimasukkan unik
      if arr[j] = arr[i] then
      begin
        i := i - 1;
        Break;
      end;
    end;
  end;

  // menampilkan isi array dengan indexnya
  WriteLn('Array awal:');
  for i := 0 to 10 do
    WriteLn('Index ', i, ': ', arr[i]);

  // mengurutkan array secara descending menggunakan algoritma bubble sort
  for i := 0 to 9 do
  begin
    for j := i + 1 to 10 do
    begin
      if arr[i] < arr[j] then
      begin
        temp := arr[i];
        arr[i] := arr[j];
        arr[j] := temp;
      end;
    end;
  end;

  // menampilkan isi array yang sudah diurutkan secara descending dengan indexnya
  WriteLn('Array setelah diurutkan secara descending:');
  for i := 0 to 10 do
    WriteLn('Index ', i, ': ', arr[i]);

  ReadLn;
end.


