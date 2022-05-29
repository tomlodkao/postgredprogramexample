create or replace procedure testprc(inout msg varchar) 
as
$$
begin
    select 'Hello World '||msg into msg;
end;
$$
language plpgsql;