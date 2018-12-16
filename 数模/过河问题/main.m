clc;
clear;
% merchant -- 商人数目
% servant -- 仆人数目
merchant = 3;
servant = 3;
capacity = 2;
scheme = [];

% 获取所有可用状态
for x=0:merchant
    for y=0:servant
        if x==0 || x==merchant || x==y
            scheme=[scheme;x,y];
        end
    end
end
x=merchant;
y=servant;

scatter(scheme(:,1),scheme(:,2))
set(gca,'XLim',[0 merchant]);
set(gca,'XTick',0:merchant);
set(gca,'XTickLabel',0:merchant);
set(gca,'YLim',[0 servant]);
set(gca,'YTick',0:servant);
set(gca,'YTickLabel',0:servant);
