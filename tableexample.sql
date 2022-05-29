create table user_login(
    user_id varchar(15) primary key,
    user_password varchar(64)
);

create table user_login_history(
    user_id varchar(15),
    login_time timestamp,
    logout_time timestamp
);