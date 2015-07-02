function zissoumyplot(hfigure)

% function zissoumyplot(hfigure)
%
% Make your plots look just like they escaped from The Life Aquatic.
% Changes the colormap to Zissou and fonts to Helvetica.
% Inspired by and translated from 
% https://github.com/karthik/wesanderson/blob/master/README.md
%
% KIM 03.14

% set the figure
if nargin <1 
    hfigure = gcf; 
end

% change the colormap to Zissou
colormap(zissou)

% change all the fonts on the plot to futura
set(findall(hfigure,'type','text'),'fontSize',16, 'fontname', 'futura', 'fontweight', 'normal')
% set(gca,'fontSize',14, 'fontname', 'futura', 'fontweight', 'normal')
set(gca, 'fontname', 'futura', 'fontweight', 'normal')

% Zissouify the title
htitle = get(gca, 'title'); 

% Change title to upper case
tstring = upper(get(htitle, 'string')); 
set(htitle, 'string', tstring)

% change the font and size of the title
% set(htitle, 'fontsize', 24, 'fontname', 'futura', 'color', 'k', 'fontweight', 'normal')
set(htitle, 'fontname', 'futura', 'fontweight', 'normal')
