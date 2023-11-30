load('충무관광개토');
lat=Position(:,1);
lon=Position(:,2);
table2array(lat);
table2array(lon);
a=table2array(lat);
b=table2array(lon);
geoplot(a,b,"LineWidth",5);
geobasemap streets

