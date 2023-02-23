program arrayEditDelete;

uses
  SysUtils;
var
  myArray: array[0..10] of Integer;
  i, j, k: Integer;
begin
  // Mengisi array dengan angka acak unik antara 1-1000
  Randomize;
  for i := 0 to 10 do begin
    myArray[i] := Random(1000) + 1;
    for j := 0 to i - 1 do begin
      if myArray[j] = myArray[i] then begin
        myArray[i] := Random(1000) + 1;
        k := -1;
      end;
    end;
  end;
  // Menampilkan isi array beserta indexnya
  for i := 0 to 10 do begin
    WriteLn('Index ', i, ': ', myArray[i]);
  end;
  // Mengubah nilai di index 6 menjadi 999
  myArray[6] := 999;
  // Menampilkan isi array setelah nilai di index 6 diubah
  WriteLn(slineBreak + 'Setelah nilai di index 6 diubah menjadi 999:');
  for i := 0 to 10 do begin
    WriteLn('Index ', i, ': ', myArray[i]);
  end;
  // Menghapus nilai di index 3
  for i := 3 to 9 do begin
    myArray[i] := myArray[i+1];
  end;
  myArray[10] := 0; // Menghapus nilai terakhir
  // Menampilkan isi array setelah nilai di index 3 dihapus
  WriteLn(slineBreak + 'Setelah nilai di index 3 dihapus:');
  for i := 0 to 9 do begin
    WriteLn('Index ', i, ': ', myArray[i]);
  end;
  readln;
end.




