
clear all

%%%%make structure

%class+division

value_final.class=[{'공업역학001'}
    {'기초설계001'}'
    {'고체역학001'}
    {'열역학001'}
    {'이상유체역학001'}
    {'동역학001'}
    {'항공우주응용SW1001'}
    {'비행동역학001'}
    {'진동학001'}
    {'압축성유체역학001'}
    {'우주궤도역학001'}
    {'항공제도및CAD001'}
    {'메카트로닉스종합설계001'}
    {'수치해석001'}
    {'자동제어001'}
    {'추진체공학001'}
    {'자율비행체시스템설계1001'}
    {'기초설계002'}
    {'이상유체역학002'}
    {'동역학002'}
    {'항공우주응용SW1002'}
    {'비행동역학002'}
    {'항공제도및CAD002'}];

value_final.class(:,2)=num2cell([2 2 2 2 2 2 2 2 2 2 2 2 4 2 2 2 4 2 2 2 2 2 2]);


%hour
value_final.class(:,3)=num2cell([10
    12
    09
    12
    13
    13
    10
    15
    12
    16
    10
    12
    15
    10
    16
    09
    16
    13
    15
    15
    16
    12
    13
    ]);

%minute
value_final.class(:,4)=num2cell([30
00
00
00
30
30
30
00
00
30
30
00
0
30
30
00
30
30
00
00
30
00
30]);

%total
value_final.class(:,5)=[{"10:30:00"}
{"12:00:00"}
{"09:00:00"}
{"12:00:00"}
{"13:30:00"}
{"13:30:00"}
{"10:30:00"}
{"15:00:00"}
{"12:00:00"}
{"16:30:00"}
{"10:30:00"}
{"12:00:00"}
{"15:00:00"}
{"10:30:00"}
{"16:30:00"}
{"09:00:00"}
{"16:30:00"}
{"13:30:00"}
{"15:00:00"}
{"15:00:00"}
{"16:30:00"}
{"12:00:00"}
{"13:30:00"}];

save valuefinal.mat

