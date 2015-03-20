function VHZ_ChemicalPlot( t_K, y_K, name )
%VHZ_CHEMICALPLOT Plot the Chemical Thingy
%   Given name of of each chemical.

chemicalFigure = figure('Position', [0, 0, 600,300]);
plot(t_K, y_K(:,1),'-g',t_K,y_K(:,2),'-b',t_K,y_K(:,3),'-r',t_K,.5)
title([name(1) ' Decay']);
xlabel('Years (Billion)');
ylabel('Moles');
legend(name);

savePlot = input('    Save Plot to file? [Enter]:','s');
if isempty(savePlot)
    saveas(chemicalFigure, 'VHZ_ChemicalPlot.png'); %Saves picture of graph
end

end

