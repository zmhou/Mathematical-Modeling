clear;clc;
close all;
d=[];e=[];
X=[383.798437	941.7524151	1002.393851	265.472221	264.7407285	19.11958322	11.30416515	46.60619038	2.581030771	6.475	249.3298919	85.53912895	10.57526597	1.08603959	0.846849508	0.00153877	0.00397446	0.195217455	15.7046159	0.93032804	8.940031821
    385.8694813	941.7661085	1002.514682	266.5618712	264.7529704	19.19000948	11.34195843	46.78284655	2.581074017	6.475	252.3890582	86.35547193	10.69821703	1.08785944	0.853583148	0.00161023	0.00424936	0.213897063	15.70486861	0.963856482	9.068512818
    394.8799698	941.7862615	1002.657042	276.0009342	264.7688416	19.34416009	11.41960296	47.06430715	2.581151434	6.475	260.6023763	91.35178335	10.78545582	1.095271616	0.869785452	0.001705116	0.004564717	0.236334203	15.70518064	1.026834193	9.315315596
    395.9491278	941.802679	1002.808308	275.5257669	264.7837141	19.42899534	11.46760475	47.34509526	2.58123384	6.475	265.9034018	91.94261669	10.86553253	1.097130306	0.878259566	0.00179358	0.004697617	0.246335626	15.70540892	1.094236866	9.480866338
    400.1622848	941.8227454	1002.931128	278.8556671	264.7976932	19.52741573	11.51452929	47.53221504	2.58130876	6.475	274.6642183	94.9641697	11.0254587	1.10210729	0.88785634	0.001863892	0.004964002	0.271673767	15.70568238	1.159439859	9.642232232
    405.773072	941.8460654	1003.119351	283.0045369	264.8172527	19.67778448	11.58863959	47.81239292	2.581398948	6.475	285.7592293	98.29842299	11.39036298	1.108032349	0.901987972	0.001988721	0.005356396	0.300070119	15.70606978	1.231593732	9.903937187
    411.0612057	941.8688197	1003.293835	287.3471407	264.8357269	19.81014708	11.65725915	48.1188104	2.581490509	6.475	293.8915576	101.3401425	11.52275687	1.113215389	0.915371035	0.002094047	0.005665575	0.32400238	15.70641094	1.307125924	10.13224119
    414.4129441	941.8834463	1003.405879	289.9860228	264.8475736	19.89637391	11.701073	48.30531087	2.58154875	6.475	299.7174368	103.3311857	11.6504921	1.116653502	0.923876954	0.002163332	0.005874566	0.340177378	15.70663422	1.355018968	10.28114233
    417.7646825	941.8980729	1003.517922	292.6249049	264.8594204	19.98260073	11.74488686	48.49181134	2.58160699	6.475	305.543316	105.3222289	11.77822732	1.120091616	0.932382873	0.002232617	0.006083557	0.356352375	15.70685749	1.402912012	10.43004347
    421.1164209	941.9126994	1003.629966	295.263787	264.8712671	20.06882755	11.78870072	48.67831181	2.581665231	6.475	311.3691952	107.3132722	11.90596254	1.123529729	0.940888792	0.002301902	0.006292547	0.372527372	15.70708076	1.450805055	10.57894461
    424.4681593	941.927326	1003.742009	297.9026691	264.8831139	20.15505437	11.83251457	48.86481228	2.581723471	6.475	317.1950744	109.3043154	12.03369776	1.126967842	0.949394711	0.002371188	0.006501538	0.38870237	15.70730403	1.498698099	10.72784575
    427.8198977	941.9419526	1003.854053	300.5415512	264.8949606	20.24128119	11.87632843	49.05131275	2.581781711	6.475	323.0209536	111.2953586	12.16143298	1.130405955	0.95790063	0.002440473	0.006710529	0.404877367	15.7075273	1.546591143	10.87674689
    431.1716361	941.9565792	1003.966096	303.1804333	264.9068074	20.32750801	11.92014229	49.23781322	2.581839952	6.475	328.8468328	113.2864019	12.2891682	1.133844069	0.966406549	0.002509758	0.006919519	0.421052364	15.70775057	1.594484187	11.02564802
    434.5233745	941.9712057	1004.07814	305.8193154	264.9186541	20.41373483	11.96395614	49.42431369	2.581898192	6.475	334.672712	115.2774451	12.41690342	1.137282182	0.974912468	0.002579043	0.00712851	0.437227361	15.70797384	1.642377231	11.17454916
    437.8751129	941.9858323	1004.190183	308.4581975	264.9305009	20.49996165	12.00777	49.61081416	2.581956432	6.475	340.4985911	117.2684884	12.54463864	1.140720295	0.983418387	0.002648328	0.007337501	0.453402359	15.70819711	1.690270275	11.3234503
    441.2268513	942.0004589	1004.302226	311.0970796	264.9423476	20.58618847	12.05158385	49.79731462	2.582014673	6.475	346.3244703	119.2595316	12.67237386	1.144158409	0.991924306	0.002717613	0.007546491	0.469577356	15.70842038	1.738163319	11.47235144
    444.5785897	942.0150855	1004.41427	313.7359617	264.9541944	20.67241529	12.09539771	49.98381509	2.582072913	6.475	352.1503495	121.2505748	12.80010909	1.147596522	1.000430225	0.002786898	0.007755482	0.485752353	15.70864366	1.786056363	11.62125258
    ];
y=[1	1	1	1	1	2	2	2	3	4	4	4	4	4	5	5	5
    ];
%============���ݵĹ�һ������==============================================
[m,n]=size(X);
tic
for k=1:10
    x=normalize(X);
    N=400;Pc=0.8;Pm=0.2;M=10;Ci=7;n=21;%nά����ci���ٴ�����pc������ʣ�pm������ʣ�N��Ⱥ������300-500��
    DaiNo=2;ads=1;
    [a1,b1,ee,ff]=RAGA(x,y,N,n,Pc,Pm,M,DaiNo,Ci,ads);
    d=[d,a1];e=[b1;e];
end
[a2 b2]=max(d),e1=e(b2,:)
ff=e1*x'
p=size(ff,2);
toc
plot(1:p,ff,'r*');
figure;plot(ff,y,'.');