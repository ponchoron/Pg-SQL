
select distinct client_files.client_name as client_name, fid1 as file1, fid2 as file2, lon1.lname as shared_lawyer
from (select  distinct f1.cname as client_name, f1.fid as fid1, f2.fid as fid2
from file as f1, file as f2
where f1.fid<> f2.fid and f1.cname = f2.cname and f1.lname<>f2.lname
group by f1.cname, f1.fid, f2.fid) as client_files, lonfile as lon1, lonfile as lon2
where lon1.fid=fid1 and lon2.fid=fid2 and lon1.fid<>lon2.fid and lon1.lname=lon2.lname and lon1.responsibility = lon2.responsibility and lon1.fid< lon2.fid
