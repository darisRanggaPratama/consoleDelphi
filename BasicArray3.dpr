program BasicArray3;


{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  arr: array of string;
  i, j: integer;
  temp: string;

begin
  // Ciptakan array string
  SetLength(arr, 4);
  arr[0] := 'antika';
  arr[1] := 'haifa azzura';
  arr[2] := 'raden rangga pratama';
  arr[3] := 'muhammad nizham al Islam';

  // Tampilkan array string
  WriteLn(sLineBreak + 'Array sebelum diurutkan:');
  for i := 0 to Length(arr)-1 do
    WriteLn(arr[i]);

  // Urutkan array string berdasarkan ascending
  for i := 0 to Length(arr)-2 do
    for j := i+1 to Length(arr)-1 do
      if CompareText(arr[i], arr[j]) > 0 then
      begin
        temp := arr[i];
        arr[i] := arr[j];
        arr[j] := temp;
      end;

  // Tampilkan array string yang sudah diurutkan secara ascending
  WriteLn(sLineBreak + 'Array setelah diurutkan secara ascending:');
  for i := 0 to Length(arr)-1 do
    WriteLn(arr[i]);

  // Urutkan array string berdasarkan descending
  for i := 0 to Length(arr)-2 do
    for j := i+1 to Length(arr)-1 do
      if CompareText(arr[i], arr[j]) < 0 then
      begin
        temp := arr[i];
        arr[i] := arr[j];
        arr[j] := temp;
      end;

  // Tampilkan array string yang sudah diurutkan secara descending
  WriteLn(sLineBreak + 'Array setelah diurutkan secara descending:');
  for i := 0 to Length(arr)-1 do
    WriteLn(arr[i]);

  ReadLn;
end.

