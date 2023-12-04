clear; clc;
k1=menu('현재 어디에 계십니까?','후문','충무관','학술정보원','광개토관','쪽문','계단','AI센터','정문');
k2=menu('다음 수업 장소는 어디인가요?','충무관','광개토관')*2;
fn=[num2str(k1) 'to' num2str(k2)];
eval(['load ' fn]);
lat=table2array(Position(:,1)); lon=table2array(Position(:,2));
save lat lat
save lon lon
run("projectgui.m");