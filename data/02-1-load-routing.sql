--CREATE SCHEMA flowable AUTHORIZATION sa;

-- Locations
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/CONV/0001/0000/0000','FGCONVEYOR','0',0,'316869541651',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/CONV/0002/0000/0000','FGSHIPPING','1',1,'705831012876',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/CONV/IN__/0001/0000','FGRECEIVING','2',2,'665107007247',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/VONV/OUT_/0001/0000','FGCONVEYOR','3',3,'8938711278',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/ERR_/0001/0000/0000','FGAUTOMATIC','4',4,'596285114197',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/CONV/STCK/0001/IN__','FGSTOCK','5',5,'22450287991',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/CONV/STCK/0001/OUT_','FGSTOCK','6',6,'138463668635',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/CONV/STCK/0002/IN__','FGSTOCK','7',7,'466191767491',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/CONV/STCK/0002/OUT_','FGSTOCK','8',8,'237171239671',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/0001/0000/0000/0000','FGAISLE1','9',9,'91184105028',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/0002/0000/0000/0000','FGAISLE2','10',10,'353286639474',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/0001/LIFT/0000/0000','FGAISLE1LIFT','11',11,'848093695547',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/0001/LEFT/0000/0000','FGAISLE1LEFT','12',12,'765225870249',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/0001/RGHT/0000/0000','FGAISLE1RIGHT','13',13,'566882612743',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/0002/LIFT/0000/0000','FGAISLE2LIFT','14',14,'439489938001',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/0002/LEFT/0000/0000','FGAISLE2LEFT','15',15,'772618669088',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/0002/RGHT/0000/0000','FGAISLE2RIGHT','16',16,'810673969392',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/PICK/WORK/0001/0000','FGWORKPLACE1','17',17,'13996750119',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/PICK/WORK/0002/0000','FGWORKPLACE2','18',18,'688928801270',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/PICK/WORK/0003/0000','FGWORKPLACE3','19',19,'619017918169',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/PICK/WORK/0004/0000','FGWORKPLACE4','20',20,'251742547073',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/PICK/WORK/0005/0000','FGWORKPLACE5','21',21,'803285308143',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/PICK/WORK/0006/0000','FGWORKPLACE6','22',22,'925770102167',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/PICK/WORK/0007/0000','FGWORKPLACE7','23',23,'84932885112',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/PICK/WORK/0008/0000','FGWORKPLACE8','24',24,'235202688583',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/PICK/WORK/0009/0000','FGWORKPLACE9','25',25,'771502890219',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('KANB/0000/0000/0000/0000','FGCANBAN','26',26,'958462318751',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('MANU/0000/0000/0000/0000','FGMANUAL','27',27,'723824617125',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('INIT/0000/0000/0000/0000','ZILE','28',28,'929308769594',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('EXT_/0000/0000/0000/0000','ZILE','29',29,'645065430190',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/IPNT/0001/0000/0000','IPOINT1','30',30,'88527472578',now());
insert into tms_rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created) values ('FGIN/IPNT/0002/0000/0000','IPOINT2','31',31,'473074688589',now());

-- Routes
insert into tms_rsrv_route (c_name,c_description,c_source_location,c_target_location,c_source_loc_group_name,c_target_loc_group_name,c_enabled,c_pk,c_ol,c_created,c_pid) values ('REC_CONV','Cartons coming from outside to the stock.',null,'0','FGRECEIVING','', true,'10000',0,now(),'709957655206');
insert into tms_rsrv_route (c_name,c_description,c_source_location,c_target_location,c_source_loc_group_name,c_target_loc_group_name,c_enabled,c_pk,c_ol,c_created,c_pid) values ('CONVCONV','Cartons that should stay on the conveyor',null,'0','FGCONVEYOR','', true,'10001',0,now(),'889085346017');
insert into tms_rsrv_route (c_name,c_description,c_source_location,c_target_location,c_source_loc_group_name,c_target_loc_group_name,c_enabled,c_pk,c_ol,c_created,c_pid) values ('SHIPERR_','Cartons from shipping to conveyor ',null,'4','FGSHIPPING','', true,'10003',0,now(),'920761607535');
insert into tms_rsrv_route (c_name,c_description,c_source_location,c_target_location,c_source_loc_group_name,c_target_loc_group_name,c_enabled,c_pk,c_ol,c_created,c_pid) values ('CS1_OUT_','Cartons of aisle 1 to out position',null,'6','FGAISLE1','', true,'10004',0,now(),'11168458889');
insert into tms_rsrv_route (c_name,c_description,c_source_location,c_target_location,c_source_loc_group_name,c_target_loc_group_name,c_enabled,c_pk,c_ol,c_created,c_pid) values ('CS2_OUT_','Cartons of aisle 2 to out position',null,'8','FGAISLE2','', true,'10006',0,now(),'32391655610');
insert into tms_rsrv_route (c_name,c_description,c_source_location,c_target_location,c_source_loc_group_name,c_target_loc_group_name,c_enabled,c_pk,c_ol,c_created,c_pid) values ('FG__ERR_','Cartons from anywhere in the flatgood area to the error location',null,'4','FLATGOOD_AREA','', true,'10007',0,now(),'613429031593');
insert into tms_rsrv_route (c_name,c_description,c_source_location,c_target_location,c_source_loc_group_name,c_target_loc_group_name,c_enabled,c_pk,c_ol,c_created,c_pid) values ('_NO_ROUTE','No Route',null,null,null,null, true,'99998',0,now(),'956033651143');
insert into tms_rsrv_route (c_name,c_description,c_source_location,c_target_location,c_source_loc_group_name,c_target_loc_group_name,c_enabled,c_pk,c_ol,c_created,c_pid) values ('_DEFAULT','Route All',null,null,null,null, true,'99999',0,now(),'222590552091');

-- Actions
insert into tms_rsrv_action (c_name,c_description,c_route_id,c_program_name,c_location_key,c_location_group_name,c_action_type,c_flex_1,c_enabled,c_pk,c_ol,c_created,c_pid) values ('A0001','All without Route going to error location','99998','CP001','','ZILE','REQ_','FGIN/ERR_/0001/0000/0000',true,'10000',0,now(),'709957655206');
insert into tms_rsrv_action (c_name,c_description,c_route_id,c_program_name,c_location_key,c_location_group_name,c_action_type,c_flex_1,c_enabled,c_pk,c_ol,c_created,c_pid) values ('A0002','Handle requests coming from inbound for all routes','99999','CP001','','IPOINT','REQ_','FGIN/CONV/0001/0000/0000',true,'10001',0,now(),'889085346017');
insert into tms_rsrv_action (c_name,c_description,c_route_id,c_program_name,c_location_key,c_location_group_name,c_action_type,c_flex_1,c_enabled,c_pk,c_ol,c_created,c_pid) values ('A0003','Handle requests coming from inbound wihout route','99998','CP001','','IPOINT','REQ_','FGIN/CONV/0001/0000/0000',true,'10002',0,now(),'920761607535');
insert into tms_rsrv_action (c_name,c_description,c_route_id,c_program_name,c_location_key,c_location_group_name,c_action_type,c_flex_1,c_enabled,c_pk,c_ol,c_created,c_pid) values ('A0004','LOCU for the whole system','99998','CP003','','ZILE','LOCU','',true,'4',0,now(),6474547);
