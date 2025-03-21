function Rc = circularity(A)
    % Convert the image to binary form
    binaryImage = ~logical(imbinarize(A));

    % Find the contour of the object
    contour = edge(binaryImage);

    % Find the coordinates of the contour points
    [row, col] = find(contour);

    % Initialize variables for diameter calculation
    maxDiameter = 0;

    % Calculate the maximum distance over all pairs of pixels
    for i = 1:length(row)
        for j = 1:length(row)
            distance = sqrt((row(i) - row(j))^2 + (col(i) - col(j))^2);
            if distance > maxDiameter
                maxDiameter = distance;
            end
        end
    end

    % Calculate the area of the object
    area = sum(binaryImage(:));

    % Calculate the circularity coefficient
    Rc = (4 * pi * area) / (maxDiameter^2);

    % Normalize the circularity coefficient
    Rc = 1 / Rc;
end
