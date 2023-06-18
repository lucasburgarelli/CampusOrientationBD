-- revoke users privileges if needed
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public FROM apiacess;
REVOKE ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public FROM apiacess;
REVOKE ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public FROM apiacess;

REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public FROM readonlyuser;
REVOKE ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public FROM readonlyuser;
REVOKE ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public FROM readonlyuser;

drop role if exists develop;
drop role if exists apiacess;
drop role if exists readonlyuser;

-- user create
drop role if exists develop;
drop role if exists apiacess;
drop role if exists readonlyuser;

create role develop with superuser login password 'developuse';
create role apiacess with login password 'apiacessuse';
create role readonlyuser with login password 'readonlyuse';

-- permission grant tables
grant all on person to apiacess;
grant all on study to apiacess;
grant all on course to apiacess;
grant all on class to apiacess;
grant all on backupperson to apiacess;
grant all on backupclass to apiacess;

grant select on person to readonlyuser;
grant select on study to readonlyuser;
grant select on course to readonlyuser;
grant select on class to readonlyuser;
grant select on backupperson to readonlyuser;
grant select on backupclass to readonlyuser;

-- permission grant tables
grant all on person to apiacess;
grant all on study to apiacess;
grant all on course to apiacess;
grant all on class to apiacess;
grant all on backupperson to apiacess;
grant all on backupclass to apiacess;

grant select on person to readonlyuser;
grant select on study to readonlyuser;
grant select on course to readonlyuser;
grant select on class to readonlyuser;
grant select on backupperson to readonlyuser;
grant select on backupclass to readonlyuser;


-- permission grant view
grant all on completeclass to apiacess;
grant select on completeclass to readonlyuser;
