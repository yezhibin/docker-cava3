use mysql;

delete from user where host = '%';

update user set host = '%' where user ='root';

flush privileges;

exit
