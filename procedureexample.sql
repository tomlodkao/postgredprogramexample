create or replace procedure test(inout mgs) 
as
$$
begin
    select 'Hello World '||msg into msg;
end;
$$
language plpqsql;