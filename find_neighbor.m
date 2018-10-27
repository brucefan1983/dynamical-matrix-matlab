function [NN,NL]=find_neighbor(N,r,r_cut,L,L_times_pbc)
NN=zeros(N,1);
NL=zeros(N,20);
for n1=1:N
    for n2=n1+1:N
        r12=r(n2,:)-r(n1,:);
        r12=r12-round(r12./L).*L_times_pbc; % minimum image convention
        d12=norm(r12);
        if d12<r_cut
            NN(n1)=NN(n1)+1;
            NL(n1,NN(n1))=n2;
            NN(n2)=NN(n2)+1;
            NL(n2,NN(n2))=n1;
        end
    end
end
