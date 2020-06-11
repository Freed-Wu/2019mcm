function rt=same(newi,newj,choice,wid,len)
rt=1;
for i=1:wid
	for j=1:len
		if([newi newj]==choice{i,j}) rt=0;break;
		end
	end
end
end