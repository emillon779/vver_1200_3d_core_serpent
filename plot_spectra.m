clear;

% Read data:

reactor_det0;

% Neutron flux per lethargy:

figure(1);
clf;
semilogx(DET1E(:,3), DET1(:,11),'r-');
xlabel('Neutron energy (MeV)');
ylabel('Flux per lethargy');
title('Neutron flux per lethargy');
grid on;
print -depsc 'spectr1.eps';

% Differential capture and production spectra:

figure(2);
clf;
loglog(DET2E(:,3), DET2(:,11), 'r-');
hold on;
loglog(DET3E(:,3), DET3(:,11), 'g-');
loglog(DET4E(:,3), DET4(:,11), 'b-');
legend('Capture', 'Fission', 'Production');
xlabel('Neutron energy (MeV)');
ylabel('Rate per energy');
title('Differential capture, fission and production spectra');
grid on;
print -depsc 'spectr2.eps';

% Integral absorption and production spectra:

figure(3);
clf;
semilogx(DET5E(:,3), DET5(:,11) + DET6(:,11), 'r-');
hold on;
semilogx(DET7E(:,3), DET7(:,11), 'b-');
legend('Absorption (capt. + fiss.)', 'Production', 2);
xlabel('Neutron energy (MeV)');
ylabel('Rate per energy (cumulative)');
title('Integral absorption and production spectra');
grid on;
print -depsc 'spectr3.eps';
