function[map1,map2,map0,map11,map22,flag_map1,flag_map2,flag_map0,flag_map11,flag_map22]=ditu1()
[map1,flag_map1]=ditu();
[map2,flag_map2]=ditu();
[map0,flag_map0]=ditu();
[map11,flag_map11]=ditu();
[map22,flag_map22]=ditu();
stair_width=8;
stair_width=stair_width-1;
exit_width=10;
exit_width=exit_width-1;
for k=1:3
	for i=155:195
		for j=968:1089
			map11(i,j,k)=255;
			flag_map11(i,j)=0;
			map22(i,j,k)=255;
			flag_map22(i,j)=0;
		end
	end
end
for k=1:3
	for i=125:225
		for j=800:967
			map22(i,j,k)=255;
			flag_map22(i,j)=0;
		end
	end
end
for k=1:3
	for i=121:243
		for j=860:900
			map22(i,j,k)=255;
			flag_map22(i,j)=0;
		end
	end
end
for j=198:198+stair_width
	map1(1,j,3)=255;
	map2(1,j,3)=255;
	map0(1,j,3)=255;
	map11(1,j,3)=255;
	map22(1,j,3)=255;
	flag_map1(1,j)=2;
	flag_map2(1,j)=2;
	flag_map0(1,j)=2;
	flag_map11(1,j)=2;
	flag_map22(1,j)=2;
	for k=1:2
		map1(1,j,k)=0;
		map2(1,j,k)=0;
		map0(1,j,k)=0;
		map11(1,j,k)=0;
		map22(1,j,k)=0;
	end

end
for j=685:685+stair_width
	map1(80,j,3)=255;
	map2(80,j,3)=255;
	map0(80,j,3)=255;
	map11(80,j,3)=255;
	map22(80,j,3)=255;
	flag_map1(80,j)=2;
	flag_map2(80,j)=2;
	flag_map0(80,j)=2;
	flag_map11(80,j)=2;
	flag_map22(80,j)=2;
	for k=1:2
		map1(80,j,k)=0;
		map2(80,j,k)=0;
		map0(80,j,k)=0;
		map11(80,j,k)=0;
		map22(80,j,k)=0;
	end
end
for j=1340:1340+stair_width
	map1(75,j,3)=255;
	map2(75,j,3)=255;
	map0(75,j,3)=255;
	map11(75,j,3)=255;
	map22(75,j,3)=255;
	flag_map1(75,j)=2;
	flag_map2(75,j)=2;
	flag_map0(75,j)=2;
	flag_map11(75,j)=2;
	flag_map22(75,j)=2;
	for k=1:2
		map1(75,j,k)=0;
		map2(75,j,k)=0;
		map0(75,j,k)=0;
		map11(75,j,k)=0;
		map22(75,j,k)=0;
	end
end
for j=1340:1340+stair_width
	for k=1:2
		map1(270,j,k)=0;
		map2(270,j,k)=0;
		map0(270,j,k)=0;
		map11(270,j,k)=0;
		map22(270,j,k)=0;
	end
	flag_map1(270,j)=2;
	flag_map2(270,j)=2;
	flag_map0(270,j)=2;
	flag_map11(270,j)=2;
	flag_map22(270,j)=2;
	map1(270,j,3)=255;
	map2(270,j,3)=255;
	map0(270,j,3)=255;
	map11(270,j,3)=255;
	map22(270,j,3)=255;
end
for j=680:680+stair_width
	for k=1:2
		map1(255,j,k)=0;
		map2(255,j,k)=0;
		map0(255,j,k)=0;
		map11(255,j,k)=0;
		map22(255,j,k)=0;
	end
	flag_map1(255,j)=2;
	flag_map2(255,j)=2;
	flag_map0(255,j)=2;
	flag_map11(255,j)=2;
	flag_map22(255,j)=2;
	map1(255,j,3)=255;
	map2(255,j,3)=255;
	map0(255,j,3)=255;
	map11(255,j,3)=255;
	map22(255,j,3)=255;
end
for j=198:198+stair_width
	for k=1:2
		map1(345,j,k)=0;
		map2(345,j,k)=0;
		map0(345,j,k)=0;
		map11(345,j,k)=0;
		map22(345,j,k)=0;
	end
	flag_map1(345,j)=2;
	flag_map2(345,j)=2;
	flag_map0(345,j)=2;
	flag_map11(345,j)=2;
	flag_map22(345,j)=2;
	map1(345,j,3)=255;
	map2(345,j,3)=255;
	map0(345,j,3)=255;
	map11(345,j,3)=255;
	map22(345,j,3)=255;
end
for j=1090:1090+stair_width
	for k=1:2
		map1(175,j,k)=0;
		map2(175,j,k)=0;
		map0(175,j,k)=0;
		map11(175,j,k)=0;
		map22(175,j,k)=0;
	end
	map1(175,j,3)=255;
	map2(175,j,3)=255;
	map0(175,j,3)=255;
	map11(175,j,3)=255;
	map22(175,j,3)=255;
	flag_map1(175,j)=2;
	flag_map2(175,j)=2;
	flag_map0(175,j)=2;
	flag_map11(175,j)=2;
	flag_map22(175,j)=2;
end
for j=890:890+stair_width
	flag_map11(175,j)=2;
	flag_map22(175,j)=2;
	map11(175,j,2)=0;
	map11(175,j,1)=0;
	map11(175,j,3)=255;
	map22(175,j,2)=0;
	map22(175,j,1)=0;
	map22(175,j,3)=255;
end
for j=870:870+stair_width
	flag_map11(140,j)=2;
	flag_map22(140,j)=2;
	map11(140,j,2)=0;
	map11(140,j,1)=0;
	map11(140,j,3)=255;
	map22(140,j,2)=0;
	map22(140,j,1)=0;
	map22(140,j,3)=255;
end
for j=870:870+stair_width
	flag_map11(210,j)=2;
	flag_map22(210,j)=2;
	map11(210,j,2)=0;
	map11(210,j,1)=0;
	map11(210,j,3)=255;
	map22(210,j,2)=0;
	map22(210,j,1)=0;
	map22(210,j,3)=255;
end

for j=680:680+exit_width
	flag_map0(1,j)=4;
	map0(1,j,2)=255;
	map0(1,j,1)=0;
	map0(1,j,3)=0;
end
for j=340:340+exit_width
	flag_map0(276,j)=4;
	map0(277,j,2)=255;
	map0(277,j,1)=0;
	map0(277,j,3)=0;
end
for j=1224:1224+exit_width
	flag_map0(282,j)=4;
	map0(282,j,2)=255;
	map0(282,j,1)=0;
	map0(282,j,3)=0;
end
end
% imshow(map1)
% subplot(2,3,1)
% imshow(map2)
% subplot(2,3,2)
% imshow(map1)
% subplot(2,3,3)
% imshow(map0)
% subplot(2,3,4)
% imshow(map11)
% subplot(2,3,5)
% imshow(map22)

