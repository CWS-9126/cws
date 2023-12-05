% basic data file load
load valuefinal.mat

%input value
result_start_value=textread('result_start_value','%s');
startpoint=result_start_value{1,1};
class=result_start_value{2,1};
division=result_start_value{3,1};

%start point structure
vlaue.start_point=[{'후문'},{'충무관'},{'학술정보관'},{'광개토관'},{'쪽문'},{'컴포즈쪽'},{'투썸'},{'정문'},]'


%convert name to number
%각각의 번호는 카톡방에 올라온 위치의 고유번호 입니다.

[rn1]=find(strcmp(vlaue.start_point,[startpoint]));
[rn2]=find(strcmp(value_final.class,[class division]));

%사용해야할 포인트
startpoint_number=rn1; %시작점
arrived_point=value_final.class{rn2,2}; %도착점
time=value_final.class{rn2,5}; %수업시작시간


%만약 시간과 분을 알고 싶으면 아래의 '%'를 제거 
% hour=value_final.class{rn2,3};
% minute=value_final.class{rn2,4};