function[chukou]=find_chukou(cells,i,j,exit_position)
[density]=cal_den(exit_position,cells);
for k=1:7
	distance(k)=sqrt((i-exit_position(k,1))^2+(j-exit_position(k,2))^2);
	mix(k)=distance(k)*density(k);
end
chukou=find(mix==min(mix));
end
