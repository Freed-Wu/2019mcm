function[newi,newj]=cal_distance(exit_position,i,j,chukou,flag)

if i==1&&j==1;
	s(1)=0;s(2)=0;s(3)=0;s(4)=0;s(7)=0;
	s(5)=1/((exit_position(chukou,1)-i)^2+(exit_position(chukou,2)-j)^2)*flag(i,j);
	s(6)=1/((exit_position(chukou,1)-i)^2+(exit_position(chukou,2)-j-1)^2)*flag(i,j+1);
	s(8)=1/((exit_position(chukou,1)-i-1)^2+(exit_position(chukou,2)-j)^2)*flag(i+1,j);
	s(9)=1/((exit_position(chukou,1)-i-1)^2+(exit_position(chukou,2)-j-1)^2)*flag(i+1,j+1);
end
if i==350&&j==1360
	s(3)=0;s(6)=0;s(7)=0;s(8)=0;s(9)=0;
	s(1)=1/((exit_position(chukou,1)-i+1)^2+(exit_position(chukou,2)-j+1)^2)*flag(i-1,j-1);
	s(2)=1/((exit_position(chukou,1)-i+1)^2+(exit_position(chukou,2)-j)^2)*flag(i-1,j);
	s(4)=1/((exit_position(chukou,1)-i)^2+(exit_position(chukou,2)-j+1)^2)*flag(i,j-1);
	s(5)=1/((exit_position(chukou,1)-i)^2+(exit_position(chukou,2)-j)^2)*flag(i,j);
end
if i==1&&j~=1
	s(1)=0;s(2)=0;s(3)=0;
	s(4)=1/((exit_position(chukou,1)-i)^2+(exit_position(chukou,2)-j+1)^2)*flag(i,j-1);
	s(5)=1/((exit_position(chukou,1)-i)^2+(exit_position(chukou,2)-j)^2)*flag(i,j);
	s(6)=1/((exit_position(chukou,1)-i)^2+(exit_position(chukou,2)-j-1)^2)*flag(i,j+1);
	s(7)=1/((exit_position(chukou,1)-i-1)^2+(exit_position(chukou,2)-j+1)^2)*flag(i+1,j-1);
	s(8)=1/((exit_position(chukou,1)-i-1)^2+(exit_position(chukou,2)-j)^2)*flag(i+1,j);
	s(9)=1/((exit_position(chukou,1)-i-1)^2+(exit_position(chukou,2)-j-1)^2)*flag(i+1,j+1);
end
if i==350&&j~=1360
	s(7)=0;s(8)=0;s(9)=0;
	s(1)=1/((exit_position(chukou,1)-i+1)^2+(exit_position(chukou,2)-j+1)^2)*flag(i-1,j-1);
	s(2)=1/((exit_position(chukou,1)-i+1)^2+(exit_position(chukou,2)-j)^2)*flag(i-1,j);
	s(3)=1/((exit_position(chukou,1)-i+1)^2+(exit_position(chukou,2)-j-1)^2)*flag(i-1,j+1);
	s(4)=1/((exit_position(chukou,1)-i)^2+(exit_position(chukou,2)-j+1)^2)*flag(i,j-1);
	s(5)=1/((exit_position(chukou,1)-i)^2+(exit_position(chukou,2)-j)^2)*flag(i,j);
	s(6)=1/((exit_position(chukou,1)-i)^2+(exit_position(chukou,2)-j-1)^2)*flag(i,j+1);
end
if i~=350&&j==1360
	s(3)=0;s(6)=0;s(9)=0;
	s(1)=1/((exit_position(chukou,1)-i+1)^2+(exit_position(chukou,2)-j+1)^2)*flag(i-1,j-1);
	s(2)=1/((exit_position(chukou,1)-i+1)^2+(exit_position(chukou,2)-j)^2)*flag(i-1,j);
	s(4)=1/((exit_position(chukou,1)-i)^2+(exit_position(chukou,2)-j+1)^2)*flag(i,j-1);
	s(5)=1/((exit_position(chukou,1)-i)^2+(exit_position(chukou,2)-j)^2)*flag(i,j);
	s(7)=1/((exit_position(chukou,1)-i-1)^2+(exit_position(chukou,2)-j+1)^2)*flag(i+1,j-1);
	s(8)=1/((exit_position(chukou,1)-i-1)^2+(exit_position(chukou,2)-j)^2)*flag(i+1,j);
end

if j==1&&i~=1
	s(1)=0;s(4)=0;s(7)=0;
	s(2)=1/((exit_position(chukou,1)-i+1)^2+(exit_position(chukou,2)-j)^2)*flag(i-1,j);
	s(3)=1/((exit_position(chukou,1)-i+1)^2+(exit_position(chukou,2)-j-1)^2)*flag(i-1,j+1);
	s(5)=1/((exit_position(chukou,1)-i)^2+(exit_position(chukou,2)-j)^2)*flag(i,j);
	s(6)=1/((exit_position(chukou,1)-i)^2+(exit_position(chukou,2)-j-1)^2)*flag(i,j+1);
	s(8)=1/((exit_position(chukou,1)-i-1)^2+(exit_position(chukou,2)-j)^2)*flag(i+1,j);
	s(9)=1/((exit_position(chukou,1)-i-1)^2+(exit_position(chukou,2)-j-1)^2)*flag(i+1,j+1);
end
if i~=1&&j~1&&i~=350&&j~=1360
	s(1)=1/((exit_position(chukou,1)-i+1)^2+(exit_position(chukou,2)-j+1)^2)*flag(i-1,j-1);
	s(2)=1/((exit_position(chukou,1)-i+1)^2+(exit_position(chukou,2)-j)^2)*flag(i-1,j);
	s(3)=1/((exit_position(chukou,1)-i+1)^2+(exit_position(chukou,2)-j-1)^2)*flag(i-1,j+1);
	s(4)=1/((exit_position(chukou,1)-i)^2+(exit_position(chukou,2)-j+1)^2)*flag(i,j-1);
	s(5)=1/((exit_position(chukou,1)-i)^2+(exit_position(chukou,2)-j)^2)*flag(i,j);
	s(6)=1/((exit_position(chukou,1)-i)^2+(exit_position(chukou,2)-j-1)^2)*flag(i,j+1);
	s(7)=1/((exit_position(chukou,1)-i-1)^2+(exit_position(chukou,2)-j+1)^2)*flag(i+1,j-1);
	s(8)=1/((exit_position(chukou,1)-i-1)^2+(exit_position(chukou,2)-j)^2)*flag(i+1,j);
	s(9)=1/((exit_position(chukou,1)-i-1)^2+(exit_position(chukou,2)-j-1)^2)*flag(i+1,j+1);
end
distance=find(s==max(s));
if max(size(distance))~=1
		distance=5;
	end


	switch distance
	case 1
					newi=i-1;newj=j-1;
				case 2
					newi=i-1;newj=j;
				case 3
					newi=i-1;newj=j+1;
				case 4
					newi=i;newj=j-1;
				case 5
					newi=i;newj=j;
				case 6
					newi=i;newj=j+1;
				case 7
					newi=i+1;newj=j-1;
				case 8
					newi=i+1;newj=j;
				case 9
					newi=i+1;newj=j+1;
	  end
end

