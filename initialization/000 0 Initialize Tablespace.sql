REMARK HEY! ===========================\/_______Change this file path here! _______\/
CREATE TABLESPACE radiosilence DATAFILE 'C:\app\James\oradata\orcl/radiosilence.dbf' SIZE 500M EXTENT MANAGEMENT LOCAL AUTOALLOCATE;
REMARK ================================/\==========================================/\


@@0initAllRoles.sql
@@0createTables.sql
@@0grantRights.sql
@@0createUsers.sql
@@0loadData.sql
@@0runAllReports.sql