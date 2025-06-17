#!/bin/bash

CONTAINER_NAME="haxor"

echo "🗑️ Menghapus port forwarding dari container: $CONTAINER_NAME"

# === XRAY ===
lxc config device remove $CONTAINER_NAME xray443
lxc config device remove $CONTAINER_NAME xray80
lxc config device remove $CONTAINER_NAME xray10000

# === SSH WebSocket ===
lxc config device remove $CONTAINER_NAME sshws8880
lxc config device remove $CONTAINER_NAME sshws2082
lxc config device remove $CONTAINER_NAME sshws8080

# === Dropbear ===
lxc config device remove $CONTAINER_NAME dropbear22
lxc config device remove $CONTAINER_NAME dropbear109
lxc config device remove $CONTAINER_NAME dropbear143
lxc config device remove $CONTAINER_NAME dropbear442

# === HAProxy ===
lxc config device remove $CONTAINER_NAME haproxy8443
lxc config device remove $CONTAINER_NAME haproxy8080
lxc config device remove $CONTAINER_NAME haproxy3000
lxc config device remove $CONTAINER_NAME Access81

echo "✅ Semua port forwarding berhasil dihapus."
