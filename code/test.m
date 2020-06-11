clear;clc
plotbutton=uicontrol('style','pushbutton',...
'string','Run',...
'fontsize',12,...
'position',[100,400,50,20],...
'callback','run=1;');
erasebutton=uicontrol('style','pushbutton',...
'string','Stop',...
'fontsize',12,...
'position',[300,400,50,20],...
'callback','freeze=1;');
number=uicontrol('style','text',...
'string','1',...
'fontsize',12,...
'position',[20,400,50,20]);
[map1,map2,map0,map11,map22,flag_map1,flag_map2,flag_map0,flag_map11,flag_map22]=ditu1();
cells=flag_map2;
color=map2;
[weith,length]=size(cells);
strength=0.2;
for i=1:weith
	for j=1:length
		if flag_map2(i,j)==1
			flag(i,j)=0;
		else
			flag(i,j)=1;
		end
	end
end
exit_position=[1,200
80,690
75,1345
270,1345
255,685
345,200
175,1095]


peoplemidu=0.3;

% for i=1:weith
% 	for j=1:length
% 		if(j>10 && j<13 && i>1)
% 			pd(i,j)=j-1;
% 		end
% 		if(j>10 && j<13 && i==1)
% 			pd(i,j)=0;
% 		else pd(i,j)=sqrt((i-x0)^2+(j-y0)^2);
% 		end
% 	end
% end
for i=1:weith
	for j=1:length
		choice{i,j}=[0 0];
	end
end
for i=1:weith
	for j=1:length
		m=rand;
		if(m<=peoplemidu&&flag_map2(i,j)~=1)
			if m<strength
				cells(i,j)=6;
				color(i,j,1)=116;
				color(i,j,2)=0;
				color(i,j,1)=0;
			end
			if m>strength
				cells(i,j)=7;
				color(i,j,1)=255;
				color(i,j,2)=0;
				color(i,j,1)=255;
			end
			choice{i,j}=[i j];
		end
	end
end
imh = imshow(color);
axis equal
axis tight
stop= 0;
run = 0;
freeze = 0;
population=0;
num=0;
while (stop==0)
	flag1=zeros(weith,length);
	if(run==1)
		for i=1:weith
			for j=1:length
				num=num+1
				disp(num);
				if(cells(i,j)==6||cells(i,j)==7)
					[chukou]=find_chukou(cells,i,j,exit_position);
					[newi,newj]=cal_distance(exit_position,i,j,chukou,flag);
					if(same(newi,newj,choice,weith,length)~=0)
							choice{i,j}=[newi newj];
							flag1(newi,newj)=cells(i,j);
					else
							if cells(newi,newj)<flag1(newi,newj)&&rand>0.3
									choice{i,j}=[newi newj];
									flag1(newi,newj)=cells(i,j);
							elseif cells(newi,newj)>flag1(newi,newj)&&rand>0.7
									choice{i,j}=[newi newj];
									flag1(newi,newj)=cells(i,j);
							elseif cells(newi,newj)==flag1(newi,newj)&&rand>0.5
								choice{i,j}=[newi newj];
								flag1(newi,newj)=cells(i,j);
							else
								choice{i,j}=[i j];
							end
					end
				end
			end
		end
		for i=1:weith
			for j=1:length
				if(choice{i,j} ~= [0 0])
					m=choice{i,j};
					color(i,j,1)=255;
					color(i,j,2)=255;
					color(i,j,3)=255;
					ii=m(1);jj=m(2);
					if flag1(ii,jj)==2
						population=population+1
					else
						cells(ii,jj)=flag1(ii,jj);
					end
					if flag(ii,jj)==6
						color(i,j,1)=116;
						color(i,j,2)=0;
						color(i,j,3)=0;
					end
					if flag(ii,jj)==7
						color(i,j,1)=255;
						color(i,j,2)=0;
						color(i,j,3)=255;
					end
					cells(i,j)=0;
				end
			end
		end
		for i=1:weith
			for j=1:length
				if(cells(i,j)~=0)
					choice{i,j}=[1 1];
				else choice{i,j}=[0 0];
				end
			end
		end

		pause(0.05);
		set(imh, 'cdata', color )
		stepnumber = 1 + str2num(get(number,'string'));
		set(number,'string',num2str(stepnumber))
	end
	if (freeze==1)
		run = 0;
		freeze = 0;
	end
	drawnow
end

