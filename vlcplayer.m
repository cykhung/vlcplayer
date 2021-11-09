function vlcplayer(filenames)

exe = fullfile(fileparts(mfilename('fullpath')), 'private', ...
    'vlcplayer-3.0.7.1', 'vlc.exe');
exe = [exe, ' '];

if nargin == 0
    winopen(exe)
else
    filenames = convert_filenames(filenames);
    cmd = [exe, ' '];
    cmd = [cmd, sprintf('"%s" ', filenames{:})];
    cmd = [cmd, sprintf('&')];
    dos(cmd);
end

end
