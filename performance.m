clear all;

figure()
max = 1e-8
for i=1:45
    Mach = i*0.02;
    M(i) = Mach;
    sim('aircraftperformance')
    FN(i) = (Fn.data)*Mach*340 ;
    teste = FN(i)-(D_del.data(i))*Mach*340
    if (teste>max)
        max = teste
        Mach_opt = M(i)
        Fn_max = FN(i)
    end
    if ((D_del.data(i))*Mach*340>FN(i))
        break
    end
end

plot(M,FN)
hold on;
plot(M,M.*340.*D_del.data(1:length(M)))
xlabel("M")
ylabel("Fn/del * Uo")

Mach = Mach_opt
sim('aircraftperformance')

Sg_max = Sg_max.data
Sc_max = Sc_max.data
        