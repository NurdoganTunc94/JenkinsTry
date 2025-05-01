
folderPath = pwd;

% Add current folder and all its subfolders to MATLAB path
addpath(genpath(folderPath));

% Updated script for generating PLC code from an atomic subsystem
run("Parameters.m");
modelName = 'ChiefMaster_TTC580';
subsystemName = 'ChiefMaster_TTC580/ChiefMaster';  % Update this to your actual subsystem name

load_system(modelName);

% Generate PLC code for the atomic subsystem
plcgeneratecode(subsystemName);

remove_xml_comments('cdsys\ChiefMaster_TTC580.xml','cdsys\Cleaned_output.xml')

close_system(modelName, 0);

function remove_xml_comments(inputFilePath, outputFilePath)
    % REMOVE_XML_COMMENTS removes XML comments from a Simulink-generated XML file.
    %
    % Usage:
    % remove_xml_comments('input.xml', 'output.xml')

    if nargin < 2
        error('Usage: remove_xml_comments(inputFilePath, outputFilePath)');
    end

    % Read the entire XML file content as text
    fid = fopen(inputFilePath, 'r');
    if fid == -1
        error('Failed to open input file: %s', inputFilePath);
    end
    xmlContent = fread(fid, '*char')';
    fclose(fid);

    % Remove XML comments: <!-- anything -->
    xmlContent = regexprep(xmlContent, '<!--.*?-->', '', 'dotall');

    % Remove ST comments: (* ... *)
    xmlContent = regexprep(xmlContent, '\(\*.*?\*\)', '', 'dotall');

      % Split into lines and remove empty or whitespace-only lines
    lines = regexp(xmlContent, '\r?\n', 'split');
    nonEmptyLines = lines(~cellfun(@(line) all(isspace(line) | line == ""), lines));

    % Join the cleaned lines with newline characters
    cleanedContent = strjoin(nonEmptyLines, newline);

    % Write cleaned content to new file
    fid = fopen(outputFilePath, 'w');
    if fid == -1
        error('Failed to open output file: %s', outputFilePath);
    end
    fwrite(fid, cleanedContent);
    fclose(fid);

    fprintf('Comments removed. Cleaned file saved to: %s\n', outputFilePath);
end

