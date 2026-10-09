% Path to the ZIP file in MATLAB Drive


if strcmp(getenv('MW_DDUX_APP_NAME'), 'MATLAB_ONLINE')
    if(~exist(fullfile(matlabdrive, '+matlab.zip')))
        srcDir  = fileparts(which(mfilename));
        srcZip  = fullfile(srcDir,'+matlab.zip');
        copyfile(srcZip,fullfile(matlabdrive, '+matlab.zip'))

        zipFile = fullfile(matlabdrive, '+matlab.zip');

        % Unzip directly to the root of MATLAB Drive
        unzip(zipFile, [matlabdrive filesep '+matlab']);

        disp('Zip file extracted successfully.');
    else
        disp('HTML Zip exists already')
    end
else
    disp('Not in MATLAB Online')
end