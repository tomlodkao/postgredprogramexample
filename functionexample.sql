create or replace function testfn(in msg varchar) returns text
as
$$
begin
    return 'Hello World '|| msg;
end;
$$
language plpgsql;
