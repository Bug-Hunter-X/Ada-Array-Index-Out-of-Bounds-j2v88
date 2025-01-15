```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (others => 0); -- Initialize the array
begin
   if A'Range.first <= 11 and then 11 <= A'Range.last then
       A(11) := 5;
   else
       Put_Line("Index out of range");
   end if;
   -- ... rest of the code ...
exception
   when Constraint_Error =>
      Put_Line("Constraint Error occurred");
end Example;
```