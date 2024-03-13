{
  config = {
    autoCmd = [
      {
        event = "FileType";
        pattern = [ "nix" ];
        command = ''
          setlocal commentstring=#\ %s
        '';
      }
    ];
  };
}
