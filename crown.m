%     RatSLAM script file for the Axon Level 5 dataset

%     Copyright (C) 2008 David Ball (d.ball@uq.edu.au) (MATLAB version)
%     Michael Milford (m.milford1@uq.edu.au) & Gordon Wyeth (g.wyeth@uq.edu.au)
% 
%     This program is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
% 
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU General Public License
%     along with this program.  If not, see <http://www.gnu.org/licenses/>.

clear all;
% for xOdo = 300:-100:1
%     % IMAGE_ODO_X_RANGE
%     for vROT = 300:-100:1
%         % IMAGE_VROT_Y_RANGE
%         for vTRANS = 300:-100:1
%             % IMAGE_VTRANS_Y_RANGE
%             for expDelta = 1.0:4.0:5.0
%                 % EXP_DELTA_PC_THRESHOLD
%                 for expCOR = 0.1:0.4:0.5
%                     % EXP_CORRECTION
%                     for expLOOP = 100:200:100
%                         % EXP_LOOPS
%                         for odoROT = 10:1:10
%                             % ODO_ROT_SCALING
%                             for poseSCALE = -1
%                                 % POSECELL_VTRANS_SCALING
%                                 rs_main('VIDEO0003.mov',0, 'crown_log', ...
%                                     'BLOCK_READ', 3, ...
%                                     'RENDER_RATE', 3, ...
%                                     'END_FRAME', 429, ...
%                                     'IMAGE_VTRANS_Y_RANGE', vTRANS:(640 - vTRANS), ... % range to process translations default:1:640
%                                     'IMAGE_ODO_X_RANGE', xOdo:(480-xOdo), ... % range to process translations and rotations default:1:480
%                                     'IMAGE_VROT_Y_RANGE', vROT:(640-vROT), ... % range to process rotations default:1:640
%                                     'EXP_DELTA_PC_THRESHOLD', expDelta, ... % The threshold change in pose cell activity to generate new xp given same view template default:1.0
%                                     'EXP_CORRECTION', expCOR, ... % ammount of correction to apply per update default:0.5
%                                     'EXP_LOOPS', expLOOP, ... % number of experience updates to process default:100
%                                     'ODO_ROT_SCALING',pi/180/odoROT, ... % default pi/180/7 (0.1 Degree)
%                                     'POSECELL_VTRANS_SCALING',10^poseSCALE); % 1/10 to 1 default 1
%                                 % fname = sprintf('D:\%d_%d_%d_%d-%d_%d_%d_%d_%d-%d_%d_%d_%d_%d-%d_%d_%d-%d_%d',);
%                                 filename = sprintf('%d %d %d %f %f %d %d %d.png',xOdo,vROT,vTRANS,expDelta,expCOR,expLOOP,odoROT,poseSCALE)
%                                 saveas(gcf,filename,'png')
%                                 close all
%                                 delete('*.mat')
%                             end
%                         end
%                     end
%                 end
%             end
%         end
%     end
% end


rs_main('VIDEO0003.mp4',0, 'crown_log', ...
    'IMAGE_X_OFFSET', 0, ...
    'BLOCK_READ', 8, ...
    'RENDER_RATE', 1, ...
    'VT_MATCH_THRESHOLD', 0.05, ... %used
    'IMAGE_VT_Y_RANGE', 1:300, ...  %used
    'IMAGE_VT_X_RANGE', 1:200, ...  %used
    'EXP_DELTA_PC_THRESHOLD', 1.0, ...
    'EXP_CORRECTION', 0.5, ...
    'ODO_ROT_SCALING', pi/180/7, ... % to get the data into delta change in radians between frames
    'EXP_LOOPS', 100, ...
    'POSECELL_VTRANS_SCALING',0.1); % 1/10 to 1 default 1

%     case 'RENDER_RATE', RENDER_RATE = varargin{i+1};
%     case 'BLOCK_READ', BLOCK_READ = varargin{i+1};
%     case 'START_FRAME', START_FRAME = varargin{i+1};
%     case 'END_FRAME', END_FRAME = varargin{i+1};
% 
%     case 'PC_VT_INJECT_ENERGY', PC_VT_INJECT_ENERGY = varargin{i+1};               
%     case 'IMAGE_VT_Y_RANGE', IMAGE_VT_Y_RANGE = varargin{i+1};
%     case 'IMAGE_VT_X_RANGE', IMAGE_VT_X_RANGE = varargin{i+1};       
%     case 'VT_SHIFT_MATCH', VT_SHIFT_MATCH = varargin{i+1};
%     case 'VT_MATCH_THRESHOLD', VT_MATCH_THRESHOLD = varargin{i+1};
% 
%     case 'VTRANS_SCALE', VTRANS_SCALE = varargin{i+1};
%     case 'VISUAL_ODO_SHIFT_MATCH', VISUAL_ODO_SHIFT_MATCH = varargin{i+1};
%     case 'IMAGE_VTRANS_Y_RANGE', IMAGE_VTRANS_Y_RANGE = varargin{i+1};
%     case 'IMAGE_VROT_Y_RANGE', IMAGE_VROT_Y_RANGE = varargin{i+1};
%     case 'IMAGE_ODO_X_RANGE', IMAGE_ODO_X_RANGE = varargin{i+1};         
% 
%     case 'EXP_DELTA_PC_THRESHOLD', EXP_DELTA_PC_THRESHOLD = varargin{i+1};
%     case 'EXP_CORRECTION', EXP_CORRECTION = varargin{i+1};
%     case 'EXP_LOOPS', EXP_LOOPS = varargin{i+1};
% 
%     case 'ODO_ROT_SCALING', ODO_ROT_SCALING = varargin{i+1};
%     case 'POSECELL_VTRANS_SCALING', POSECELL_VTRANS_SCALING = varargin{i+1};


