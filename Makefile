get_inventory:
	@echo "⚙️\tGetting inventory..."
	@mkdir -p inventory
	@if [ -f inventory/prod ]; then rm inventory/prod; fi
	@kubectl get nodes | grep 'master' | awk '{print $$1;}' > inventory/prod
	@echo "✓\tdone"
