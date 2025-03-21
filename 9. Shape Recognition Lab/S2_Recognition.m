% Load circularity function (assuming it's in the same folder)
addpath('E:\Üniversite\3. SINIF\Digital Image\9. Shape Recognition Lab'); % Replace 'path_to_circularity_function_folder' with the actual path

% Load circularity function
circularity = @circularity;

% Create a subplot for displaying query images
figure;

% Initialize vector w
w = zeros(1, 3);

% Loop through all model images to calculate circularity coefficients and update w
modelImages = {'Models\apple.gif', 'Models\bell.gif', 'Models\hammer.gif'};
for classIndex = 1:3
    % Read the model image
    modelImage = imread(modelImages{classIndex});

    % Calculate circularity coefficient
    RcModel = circularity(modelImage);

    % Update vector w
    w(classIndex) = RcModel;
end

% Loop through all query images
for i = 1:18
    % Read the query image
    A = imread(['Queries\image', num2str(i), '.gif']);

    % Calculate circularity coefficient
    RcQuery = circularity(A);

    % Find the closest element and its index in vector w
    [M, I] = min(abs(w - RcQuery));

    % Display the query image in the subplot
    subplot(3, 6, i);
    imshow(A);

    % Display the name of the closest class as the title of the subplot
    if I == 1
        title('Apple');
    elseif I == 2
        title('Bell');
    elseif I == 3
        title('Hammer');
    end
end

% Remove path to circularity function
rmpath('E:\Üniversite\3. SINIF\Digital Image\9. Shape Recognition Lab');
