create or replace procedure add_user_hist(in usrid varchar , in usrpass varchar, out msg text)
as
$$
declare 
countusr integer := 0;
begin
	select count(user_id) into countusr from user_login where user_id = usrid and user_pass= usrpass;
	if countusr = 1 then
		insert into user_login_history values(
			usrid,
			CURRENT_TIMESTAMP,
			null
		);
		commit;
		select 'Done' into msg;
	else
		select 'No User' into msg;
	end if;
end;
$$
language plpgsql;