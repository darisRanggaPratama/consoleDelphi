program test;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  arr: array[1..11] of integer;
  i, j, randomNum, evenIndex: integer;
  evenArr: array[1..11] of integer;

begin
  Randomize;

  // 1. Buat array bertipe data integer dengan kapasitas 11 datanya bersisi angka acak yang unik dari 1 sampai dengan 1000
  for i := 1 to 11 do
  begin
    // generate unique random number
    repeat
      randomNum := Random(1000) + 1;
    until not (randomNum in arr);

    // assign random number to array
    arr[i] := randomNum;
  end;

  // 2. tampilkan hasilnya yang berisi index array dan nilai array
  for i := 1 to 11 do
  begin
    WriteLn('Index ', i, ': ', arr[i]);
  end;

  // 3. ambil data bernilai genap
  evenIndex := 0;
  for i := 1 to 11 do
  begin
    if arr[i] mod 2 = 0 then
    begin
      evenIndex := evenIndex + 1;
      evenArr[evenIndex] := arr[i];
    end;
  end;

  // 4. tampilkan hasilnya
  if evenIndex > 0 then
  begin
    WriteLn('Data genap:');
    for i := 1 to evenIndex do
    begin
      WriteLn(evenArr[i]);
    end;
  end
  else
  begin
    WriteLn('Tidak ada data genap');
  end;

  ReadLn;
end.

