select count(*) from ddevaporation;
select count(*) from ddprecipitation;
select count(*) from ddtempmax;
select count(*) from ddtempmin;
select count(*) from derivervolume;
select count(*) from delevel;
select count(*) from ddentrance;


select station,min(datee),max(datee),count(*),round(count(*)/365,0) as years from ddevaporation group by station;
select station,min(datee),max(datee),count(*),round(count(*)/365,0) as years from ddprecipitation group by station;
select station,min(datee),max(datee),count(*),round(count(*)/365,0) as years from ddtempmax group by station;
select station,min(datee),max(datee),count(*),round(count(*)/365,0) as years from ddtempmin group by station;
select station,min(datee),max(datee),count(*),round(count(*)/365,0) as years from derivervolume group by station;
select station,min(datee),max(datee),count(*),round(count(*)/365,0) as years from delevel group by station;
select station,min(datee),max(datee),count(*),round(count(*)/365,0) as years from ddentrance;

