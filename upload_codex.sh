# 1. Navigate to your Codex folder
cd "/c/Users/nemesis/Documents/Paradox Interactive/Victoria 3/GIT_HUB_CODEX_FILES/Codex_Universal_v1.6.2_to_1.11.0_v1"

# 2. Initialize Git and enable Large File Support
git init
git lfs install

# 3. Create the .gitignore file
cat > .gitignore << 'EOF'
# Ignore system and temp files
.DS_Store
Thumbs.db
desktop.ini
*.tmp
*.bak
*.old
*.log

# Ignore local IDE and environment folders
__pycache__/
.vscode/
.idea/

# Ignore compression leftovers
*.zip
*.7z
*.rar

# Ignore game cache or compiled artifacts
cache/
temp/
logs/
output/
EOF

# 4. Create the .gitattributes file
cat > .gitattributes << 'EOF'
# Treat large binary or compressed files with Git LFS
*.zip filter=lfs diff=lfs merge=lfs -text
*.bin filter=lfs diff=lfs merge=lfs -text
*.dds filter=lfs diff=lfs merge=lfs -text
*.png filter=lfs diff=lfs merge=lfs -text

# Normalize line endings for text-based files
*.txt text eol=lf
*.json text eol=lf
*.csv text eol=lf
*.md text eol=lf

# Preserve UTF-8 encoding for localization and scripts
*.yml text working-tree-encoding=UTF-8
*.loc text working-tree-encoding=UTF-8
EOF

# 5. Stage and commit everything
git add .
git commit -m "Initial upload: Universal Victoria 3 Codex (v1.6.2–1.11.0) with .gitignore and .gitattributes"

# 6. Link to your GitHub repository
git branch -M main
git remote add origin https://github.com/amahnir55/Victoria3-Codex-Universal.git

# 7. Push all files to GitHub
git push -u origin main