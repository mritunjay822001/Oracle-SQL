--Create user--
CREATE USER c##mritunjay
identified BY <sidhut5911>;
 
 --granting permission--
  GRANT connect,resource,unlimited tablespace
  TO <c##mritunjay>;
   
   --connect  (allow users to  login)
   --resource (allow users to create database objects i.e.. tables,views,indexs,procedures)
   --unlimited tablespace (allow user to insert records)
   
   --modify system password__
    --login as SYS as SYS dba
	--then don't enter password/just enter (enter key)
	
  ALTER USER system
  identified BY 12345;
  -- user altered--
   
   -- modify user password
    --login as system [user]/password[at the time of installing]
	  ALTER USER c##mritunjay
	  identified BY mritunjay5911;
	  -- user altered
