
figure('Name', 'HUE Fuzzy Set', 'NumberTitle', 'off');
hold on

% RED MFUNCTION
line([0,30], [1, 0], 'Color', 'r');
line([30, 330], [0, 0], 'Color', 'r');
line([300, 330], [0, 1] , 'Color', 'r');
line([330, 360], [1, 1] , 'Color', 'r');


% ORANGE MFUNCTION
line([0,30], [0, 1], 'Color', [1,127/255,80/255]);
line([30, 60], [1, 0], 'Color', [1,127/255,80/255]);
line([60, 360], [0, 0] , 'Color', [1,127/255,80/255]);

% YELLOW MFUNCTION
line([30,60], [0, 1], 'Color', 'y');
line([90, 360], [0, 0], 'Color', 'y');
line([60, 90], [1, 0] , 'Color', 'y');

% GREEN MFUNCTION
line([60, 90], [0, 1], 'Color', 'g');
line([0, 60], [0, 0], 'Color', 'g');
line([90, 360], [0, 0], 'Color', 'g');
line([90, 150], [1, 1] , 'Color', 'g');
line([150, 180], [1, 0] , 'Color', 'g');

% CYAN MFUNCTION
line([150,180], [0, 1], 'Color', 'cyan');
line([0, 150], [0, 0], 'Color', 'cyan');
line([210, 360], [0, 0], 'Color', 'cyan');
line([180, 210], [1, 0] , 'Color', 'cyan');

% BLUE MFUNCTION
line([180,210], [0, 1], 'Color', 'b');
line([0, 180], [0, 0], 'Color', 'b');
line([270, 360], [0, 0], 'Color', 'b');
line([240, 270], [1, 0] , 'Color', 'b');
line([210, 240], [1, 1] , 'Color', 'b');

% VIOLET MFUNCTION
line([240,270], [0, 1], 'Color', [138/255, 43/255,226/255]);
line([0, 240], [0, 0], 'Color', [138/255, 43/255,226/255]);
line([270, 300], [1, 0] , 'Color', [138/255, 43/255,226/255]);


% MAGENTA MFUNCTION
line([270,300], [0, 1], 'Color', 'magenta');
line([0, 240], [0, 0], 'Color', 'magenta');
line([300, 330], [1, 0] , 'Color', 'magenta');

xlim([0 360])
hold off