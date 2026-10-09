% Path to the ZIP file in MATLAB Drive
if strcmp(getenv('MW_DDUX_APP_NAME'), 'MATLAB_ONLINE')
    zipFile = fullfile(matlabdrive, 'matlab.zip');

    % Unzip directly to the root of MATLAB Drive
    unzip(zipFile, matlabdrive);

    disp('Zip file extracted successfully.');
end