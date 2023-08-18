function [y,yReal, yImag] = wavFile2complex(filename,N)
    y = audioread(filename);   
    yReal = y(:,1); % Set the real points
    yImag = y(:,2); % Set the imaginary points
    y = complex(yReal(1:N), yImag(1:N)); % Create the actual complex samples
end