#!/bin/bash

# Dossier Obsidian
OBSDIAN_DIR="$HOME/ObsidianNotes"
# Dossier du dépôt local
REPO_DIR="$HOME/path/to/obsidian-notes"

# Synchroniser les notes
rsync -av --delete "$OBSDIAN_DIR/" "$REPO_DIR/"

# Aller au dossier du dépôt
cd "$REPO_DIR"

# Ajouter les changements à Git
git add .
git commit -m "Mise à jour automatique des notes Obsidian"
git push origin main
