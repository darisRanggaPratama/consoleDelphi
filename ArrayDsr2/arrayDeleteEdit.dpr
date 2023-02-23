program arrayDeleteEdit;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

const
  ARRAY_SIZE = 11;

var
  arr: array [1 .. ARRAY_SIZE] of Integer;
  i, j, temp: Integer;

begin
  // Step 1: Generate an array of unique random integers
  Randomize;
  for i := 1 to ARRAY_SIZE do
  begin
    repeat
      arr[i] := Random(1000) + 1;
      // Check if the generated number is unique in the array
      j := i - 1;
      while (j >= 1) and (arr[j] <> arr[i]) do
        Dec(j);
    until (j < 1) or (arr[j] <> arr[i]);
  end;

  // Step 2: Display the array in ascending order with its values and indices
  Writeln('Original array:');
  for i := 1 to ARRAY_SIZE do
    Writeln('Index ', i, ': ', arr[i]);

  // Sort the array in ascending order using bubble sort
  for i := 1 to ARRAY_SIZE - 1 do
    for j := i + 1 to ARRAY_SIZE do
      if arr[j] < arr[i] then
      begin
        temp := arr[i];
        arr[i] := arr[j];
        arr[j] := temp;
      end;

  Writeln(sLineBreak + 'Array (Ascending):');
  for i := 1 to ARRAY_SIZE do
    Writeln('Index ', i, ': ', arr[i]);

  // Step 3: Display the modified array in descending order with its values and indices
  Writeln(sLineBreak + 'Array (Descending). Edit index 9:');
  arr[9] := 999; // Change the value at index 9
  for i := ARRAY_SIZE downto 1 do
    Writeln('Index ', i, ': ', arr[i]);

  // Step 4: Delete the value at index 3 and display the array in ascending order
  for i := 3 to ARRAY_SIZE - 1 do
    arr[i] := arr[i + 1];
  arr[ARRAY_SIZE] := 0; // Set the last element to 0
  Writeln(sLineBreak + 'Array (Ascending) Modified array after deleting index 3:');
  for i := 1 to ARRAY_SIZE - 1 do
    Writeln('Index ', i, ': ', arr[i]);

  Readln

end.
