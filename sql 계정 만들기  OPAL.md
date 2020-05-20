# sql 계정 만들기 : OPAL

```sql
sqlplus

user-name/password 
--입력
---> system계정이 만들어 지지 않았었다...
--그럴 경우에는 
user-name sys as sysdba
password --비워두면 된다.

--다른분들은.. system manager 하면 되요!!!
select user from dual --현재 접속한 계정 확인
create user opal indentified by opal --계정 생성
grant connect, resource to opal
```

