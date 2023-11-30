lat34=Position34(:,1); lon34=Position34(:,2);
lat54=Position54(:,1); lon54=Position54(:,2);
lat64=Position64(:,1); lon64=Position64(:,2);
lat34=table2array(lat34); lon34=table2array(lon34);
lat54=table2array(lat54); lon54=table2array(lon54);
lat64=table2array(lat64); lon64=table2array(lon64);
l=distance(lat64, lon64);
geoplot(lat64,lon64);
fprintf('거리는 %.1f미터\n',l);
ㅓㅓㅓ