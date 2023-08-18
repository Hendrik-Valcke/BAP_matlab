function [y,yReal, yImag] = iqFile2complex(filename,N)
    f = fopen(filename, 'rb'); % Opens the file to read as binary data.
    %y = fread(f, 2*N,'uint');
    y = fread(f, 2*N,'uint32');
    fclose(f); % Close the file handle after reading.
    
    yReal = y(1:2:end); % Set the real points
    yImag = y(2:2:end); % Set the imaginary points
    y = complex(yReal, yImag); % Create the actual complex samples
end