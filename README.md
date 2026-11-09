# catppuccin-waybar

Kiwi's [Catppuccin](https://catppuccin.com) [Macchiato](https://catppuccin.com/palette) themed [Waybar](https://github.com/Alexays/Waybar) configuration

*A fork of [Srinath10X/catppuccin-waybar](https://github.com/Srinath10X/catppuccin-waybar).*

## Preview
Coming soon

## Features
- Easy install with `make`
  - Backs up your existing Waybar config
- **Catppuccin** themes

## Installation

1. Clone the repository:

  ```bash
  git clone https://github.com/KiwiFlavored/catppuccin-waybar.git
  ```

2. Navigate into the project directory:

  ```bash
  cd catppuccin-waybar
  ```

3. Build your desired Catppuccin flavor:
  ```bash
  make <flavor>
  ```
  where `<flavor>` is one of `frappe`, `latte`, `macchiato`, or `mocha`.

4. Install the configuration to your `~/.config` directory:
  ```bash
  make install
  ```
  this will automatically back up any existing Waybar configuration to `~/.config/waybay.backup_<YYYYMMDD>_<HHMMSS>`.

### Additional `make` targets
- `backup`: Move your current Waybar config to a timestamped backup.
- `clean`: Clear the built configuration to allow building a new one.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

## License

This project is licensed under [GPLv3](LICENSE).
