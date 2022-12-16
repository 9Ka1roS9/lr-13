begin 
  var k:=readinteger('Введите номер строки');
  var infile,outfile:text;
  assign(infile, '4.txt');
  assign(outfile, '4 new.txt');
  reset(infile);
  rewrite(outfile);
  var s:string;
  var i:integer;
  while not eof(infile) do 
    begin
      Inc(i);
      readln(infile,s);
      if i=k then println(outfile);
      println(outfile,s);
    end;
    close(infile);
    close(outfile);
end.