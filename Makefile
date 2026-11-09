CONFIG_DIR := $(HOME)/.config
WAYBAR_DIR := $(CONFIG_DIR)/waybar
WAYBAR_BACKUP := $(CONFIG_DIR)/waybar.backup_`date +'%Y%m%d_%H%M%S'`
SOURCE_DIR := $(CURDIR)/src
WAYBAR_BUILD := $(CURDIR)/waybar


install: $(WAYBAR_BUILD)
	make backup
	@echo "Copying waybar configuration from project root to $(CONFIG_DIR)..."
	cp -r $(WAYBAR_BUILD) $(WAYBAR_DIR)
	@echo "Installation complete."

frappe latte macchiato mocha:
	@echo "Using $@ color palette."
	mkdir $(WAYBAR_BUILD)
	cp $(SOURCE_DIR)/config.jsonc $(SOURCE_DIR)/modules.jsonc $(SOURCE_DIR)/style.css $(WAYBAR_BUILD)
	cp $(SOURCE_DIR)/flavors/catppuccin-$@.css $(WAYBAR_BUILD)/flavor.css

backup:
ifeq ($(wildcard $(WAYBAR_DIR)), $(WAYBAR_DIR))
	@echo "Backing up existing waybar directory..."
	mv $(WAYBAR_DIR) $(WAYBAR_BACKUP)
endif

clean:
	@echo "Cleaning up $(WAYBAR_BUILD)..."
	rm -r $(WAYBAR_BUILD)
	@echo "Cleanup complete."
