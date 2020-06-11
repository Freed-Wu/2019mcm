function[stair_standard,stair_pyramid,stair_standard_flag,stair_pyramid_flag]=ditu2()
stair_width=10;
stair_long=40;
stair_layer=4
stair_num=7
stair_pywid=10;
stair_pylon=40;
stair_pylay=2;
stair_pynum=2;
stair_standard=zeros(stair_layer*stair_long+1,stair_width*stair_num+stair_num-1,3);
stair_pyramid=zeros(stair_pylay*stair_pylon+1,stair_pywid*stair_pynum+stair_pynum-1,3);
stair_standard_flag=ones(stair_layer*stair_long+1,stair_width*stair_num+stair_num-1);
stair_pyramid_flag=ones(stair_pylay*stair_pylon+1,stair_pywid*stair_pynum+stair_pynum-1);
for i=1:stair_layer*stair_long+1
	for j=0:stair_num-1
		for k=stair_width*j+1+j:stair_width*j+1+j+stair_width-1
			stair_standard_flag(i,k)=0;
			for q=1:3
				stair_standard(i,k,q)=255;
			end
		end
	end
end
for flag1=0:stair_layer
	for j=0:stair_num-1
		for k=stair_width*j+1+j:stair_width*j+1+j+stair_width-1
			 stair_standard(flag1*stair_long+1,k,3)=0;
			 stair_standard(flag1*stair_long+1,k,2)=0;
			 stair_standard(flag1*stair_long+1,k,1)=255;
			 stair_standard_flag(i,k)=2;
		end
	end
end
for i=1:stair_pylay*stair_pylon+1
	for j=0:stair_pynum-1
		for k=stair_pywid*j+1+j:stair_pywid*j+1+j+stair_pywid-1
			stair_pyramid_flag(i,k)=0;
			for q=1:3
				stair_pyramid(i,k,q)=255;
			end
		end
	end
end
for flag1=1:stair_pylay
	for j=0:stair_pynum-1
		for k=stair_pywid*j+1+j:stair_pywid*j+1+j+stair_pywid-1
			 stair_pyramid(flag1*stair_pylon+1,k,3)=0;
			 stair_pyramid(flag1*stair_pylon+1,k,2)=0;
			 stair_pyramid(flag1*stair_pylon+1,k,1)=255;
			 stair_pyramid_flag(i,k)=2;
		end
	end
end

for j=0:stair_pynum-1
		for k=stair_pywid*j+1+j:stair_pywid*j+1+j+stair_pywid-1
			 stair_pyramid(1,k,3)=0;
			 stair_pyramid(1,k,2)=255;
			 stair_pyramid(1,k,1)=0;
			 stair_pyramid_flag(1,k)=4;
		end
end
end

