{
    description = "Nixlang shell";
    inputs = { nixpkgs.url = "nixpkgs/nixos-25.11"; };

    outputs = {self, nixpkgs, ...}:
        let system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
    in
    {
        devShell.default = nixpkgs.mkShellNoCC {
            name = "nix-dev";
            packages = with pkgs; [
                nil
                    nixd
            ];
        };
    };
}
