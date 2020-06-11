function[map,flag_map]=ditu()
for i=1:350
	for j=1:1360
		for k=1:3
			map(i,j,k)=255;
			flag_map(i,j)=1;
		end
	end
end

for k=1:3
	for i=1:72
		for j=1:1088
			map(i,j,k)=0;
			flag_map(i,j)=0;
		end
	end
end
for k=1:3
	for i=73:120
		for j=682:1360
			map(i,j,k)=0;
			flag_map(i,j)=0;
		end
	end
end
for k=1:3
	for i=121:243
		for j=1090:1130
			map(i,j,k)=0;
			flag_map(i,j)=0;
		end
	end
end
for k=1:3
	for i=121:243
		for j=1320:1360
			map(i,j,k)=0;
			flag_map(i,j)=0;
		end
	end
end
for k=1:3
	for i=242:282
		for j=1090:1360
			map(i,j,k)=0;
			flag_map(i,j)=0;
		end
	end
end
for k=1:3
	for i=234:276
		for j=680:1089
			map(i,j,k)=0;
			flag_map(i,j)=0;
		end
	end
end
for k=1:3
	for i=277:350
		for j=1:1089
			map(i,j,k)=0;
			flag_map(i,j)=0;
		end
	end
end
for i=1:350
	for j=1:1360
		for k=1:3
			if map(i,j,k)==0
				map(i,j,k)=255;
			else
				map(i,j,k)=0;
			end
		end
	end
end
imshow(map)
end
