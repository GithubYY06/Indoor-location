xpa = [0:80:22*80 0:80:22*80 0:80:22*80 0:80:22*80];
ypa = [15*ones(1,23) 79*ones(1,23) (79+80)*ones(1,23) (79+80+68)*ones(1,23)];
xpb = [(22*80+29):80:(22*80+29+19*80) (22*80+29):80:(22*80+29+19*80) (22*80+29):80:(22*80+29+19*80) (22*80+29):80:(22*80+29+19*80) (22*80+29):80:(22*80+29+19*80) (22*80+29):80:(22*80+29+19*80)];
ypb = [15*ones(1,20) 95*ones(1,20) (95+80)*ones(1,20) (95+80+80)*ones(1,20) (95+80+80+80)*ones(1,20) (95+80+80+80+32)*ones(1,20)];
xpc = [3378:80:(3378+4*80) 3378:80:(3378+4*80) 3378:80:(3378+4*80) 3378:80:(3378+4*80)];
ypc = [15*ones(1,5) 81*ones(1,5) (81+80)*ones(1,5) (81+80+67)*ones(1,5)];
hold on;
scatter(xpa, ypa, 20, 'r', 'fill');
scatter(xpb, ypb, 20, 'r', 'fill');
scatter(xpc, ypc, 20, 'r', 'fill');
axis([-100 3750 -20 390]);