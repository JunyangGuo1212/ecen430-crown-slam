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

rs_main('VIDEO0003.avi',0, 'axon1_log', ...
    'IMAGE_X_OFFSET', 0, ...
    'BLOCK_READ', 8, ...
    'RENDER_RATE', 1, ...
    'VT_MATCH_THRESHOLD', 0.05, ... %used
    'IMAGE_VT_Y_RANGE', 1:640, ...  %used
    'IMAGE_VT_X_RANGE', 1:480, ...  %used
    'EXP_DELTA_PC_THRESHOLD', 1.0, ...
    'EXP_CORRECTION', 0.5, ...
    'ODO_ROT_SCALING', pi/180/7, ... % to get the data into delta change in radians between frames
    'EXP_LOOPS', 100);


