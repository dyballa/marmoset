% Load all images in a subdirectory into a 3D array

% Specify the directory containing the images
imageDir = 'frames';

% Specify dimensions of each image
W = 2560;
H = 1440;

% Get a list of all image files in the directory
imageFiles = dir(fullfile(imageDir, '*.png'));

% Initialize an array to hold the images
images = uint8(zeros(H, W, numel(imageFiles)));

% Loop through each frame and load the image
for k = 1:numel(imageFiles)
    % Construct the full image file path
    imagePath = fullfile(imageDir, imageFiles(k).name);
    
    % Read the image
    img = imread(imagePath);
    
    % Store the image in the array
    images(:,:,k) = img;
end

