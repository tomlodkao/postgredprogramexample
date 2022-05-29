create or replace function test(in msg varchar) return text
as
$$
begin
    return 'Hello World '|| msg;
end;
$$
language plpgsql;
