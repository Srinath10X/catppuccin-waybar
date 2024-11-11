CONFIG_DIR := $(HOME)/.config
WAYBAR_DIR := $(CONFIG_DIR)/waybar
WAYBAR_BACKUP := $(CONFIG_DIR)/waybar.backup
PROJECT_WAYBAR := $(CURDIR)/waybar

install:
ifeq ($(wildcard $(WAYBAR_DIR)), $(WAYBAR_DIR))
	@echo "Backing up existing waybar directory..."
	mv $(WAYBAR_DIR) $(WAYBAR_BACKUP)
endif
	@echo "Copying waybar configuration from project root to $(CONFIG_DIR)..."
	cp -r $(PROJECT_WAYBAR) $(WAYBAR_DIR)
	@echo "Installation complete."

clean:
	@echo "Removing waybar from $(CONFIG_DIR)..."
	rm -rf $(WAYBAR_DIR)
	@echo "Cleanup complete."
