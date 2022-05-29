create or replace procedure testprc(inout mgs varchar) 
as
$$
begin
    select 'Hello World '||mgs into mgs;
end;
$$
language plpgsql;