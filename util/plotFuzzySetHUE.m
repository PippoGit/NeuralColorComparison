
figure('Name', 'HUE Fuzzy Set', 'NumberTitle', 'off');
hold on

% RED MFUNCTION
line([0,50], [1, 0], 'Color', 'r');
line([50, 330], [0, 0], 'Color', 'r');
line([310, 350], [0, 1] , 'Color', 'r');
line([350, 360], [1, 1] , 'Color', 'r');


% ORANGE MFUNCTION
line([0, 50], [0, 1], 'Color', [1,127/255,80/255]);
line([50, 90], [1, 0], 'Color', [1,127/255,80/255]);
line([50, 360], [0, 0] , 'Color', [1,127/255,80/255]);

% YELLOW MFUNCTION
line([50, 90], [0, 1], 'Color', 'y');
line([90, 130], [1, 0] , 'Color', 'y');
line([130, 360], [0, 0], 'Color', 'y');

% LIME MFUNCTION
line([90, 130], [0, 1], 'Color', [191/255, 1, 0]);
line([130, 170], [1, 0] , 'Color', [191/255, 1, 0]);
line([170, 360], [0, 0], 'Color', [191/255, 1, 0]);

% GREEN MFUNCTION
line([130, 170], [0, 1], 'Color', 'g');
line([170, 220], [1, 0] , 'Color', 'g');
line([220, 360], [0, 0], 'Color', 'g');

% TEAL MFUNCTION
line([170, 220], [0, 1], 'Color', [0, 128/255, 128/255]);
line([220, 270], [1, 0] , 'Color', [0, 128/255, 128/255]);
line([270, 360], [0, 0], 'Color', [0, 128/255, 128/255]);

% BLUE MFUNCTION
line([220, 270], [0, 1], 'Color', 'b');
line([270, 310], [1, 0] , 'Color', 'b');
line([310, 360], [0, 0], 'Color', 'b');

% VIOLET MFUNCTION
line([270, 310], [0, 1], 'Color', [138/255, 43/255,226/255]);
line([310, 350], [1, 0] , 'Color', [138/255, 43/255,226/255]);

xlim([0 360])
hold off