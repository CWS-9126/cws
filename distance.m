function l=distance(latitude, longitude)

l=0;
a=0:5:90;
load latlon.txt;
lat=latlon(1:19)';
lon=latlon(20:38)';
k1= interp1(a,lat,37.5665)*1000; k2=interp1(a,lon,37.5665)*1000;
for n=1:length(latitude)-1
    dl=sqrt(((latitude(n+1)-latitude(n))*k1)^2+((longitude(n+1)-longitude(n))*k2)^2);
    l=l+dl;
end


end

