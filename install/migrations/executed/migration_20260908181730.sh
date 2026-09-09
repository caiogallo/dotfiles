#!/usr/bin/env bash
# Substitui o charge limit do tlp por script via sysfs (kernel ASUS suporta nativamente)

# Script do charge limit
sudo tee /usr/local/bin/charge-limit > /dev/null <<'EOF'
#!/usr/bin/env bash
# Define o limite de carga da bateria via sysfs (ASUS/Zenbook)
LIMIT="${1:-80}"

if ! echo "$LIMIT" | grep -qE '^[0-9]+$'; then
	echo "uso: charge-limit [0-100]" >&2
	exit 1
fi

for bat in /sys/class/power_supply/BAT*; do
	[ -w "$bat/charge_control_end_threshold" ] && echo "$LIMIT" > "$bat/charge_control_end_threshold" || true
	[ -w "$bat/charge_control_start_threshold" ] && echo "$((LIMIT - 5))" > "$bat/charge_control_start_threshold" || true
done

exit 0
EOF
sudo chmod +x /usr/local/bin/charge-limit

# Service systemd que aplica o limite no boot
sudo tee /etc/systemd/system/charge-limit.service > /dev/null <<'EOF'
[Unit]
Description=Apply battery charge limit
After=multi-user.target

[Service]
Type=oneshot
ExecStart=/usr/local/bin/charge-limit 80

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable charge-limit.service
sudo systemctl start charge-limit.service