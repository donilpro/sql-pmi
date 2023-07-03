create view v2 as
select Normals.det_id, Normals.op_num, Normals.job_id, Normals.rank, Normals.job_num, Normals.prep_time, Normals.unit_time, Jobs.name, Details.type, Details.ed_izm, Details.price, Details.norm
from Normals, Jobs, Details
where Normals.job_id = Jobs.id and Normals.det_id = Details.id