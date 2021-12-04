function vlcplayer(filenames)

exe = fullfile(fileparts(mfilename('fullpath')), 'private', ...
    'vlcplayer-3.0.7.1', 'vlc.exe');

if nargin == 0
    winopen(exe)
else
    filenames = convert_filenames(filenames);
    cmd = sprintf('"%s" "%s" &', exe, filenames{:});
    dos(cmd);
end

end
