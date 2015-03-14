function VHZ_ChemicalPlot( t_K, y_K, name )
%VHZ_CHEMICALPLOT Plot the Chemical Thingy
%   Given name of of each chemical.

plot(t_K, y_K(:,1),'-g',t_K,y_K(:,2),'-b',t_K,y_K(:,3),'-r',t_K,.5)

title('Potassium-40 Decay');
xlabel('Years (Billion)')
ylabel('Moles of Isotope');
legend(name);

end

