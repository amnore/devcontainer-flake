# Devcontainer with Nix Flake

## Usage

1. Add the following feature to your `devcontainer.json`:

   ```json
   {
   	"ghcr.io/amnore/devcontainer-flake:0": {}
   }
   ```
   
2. Ensure there's a `flake.nix` at the project root directory.

3. When connecting to the container, this will automatically
   use `nix develop` to setup the environment.

Currently only the `default` output in `flake.nix` can be used.
