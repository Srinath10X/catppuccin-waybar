{
  description = "Waybar with Catppuccin theme :)";

  inputs.nixpkgs.url = "github:nixos/nixpkgs";

  outputs = { self, nixpkgs }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in
    {
      devShells.x86_64-linux.default = pkgs.mkShell {
        buildInputs = [ pkgs.waybar ];

        shellHook = ''
          echo "Launching Waybar with custom configuration..."
          waybar --config ./leftbar/config.jsonc --style ./leftbar/style.css &
        '';
      };
    };
}

