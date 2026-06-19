# Minecraft Fabric Server

This repository is a GitHub-managed Fabric server scaffold. It is designed for:

- version controlling mods and config files
- archiving backups to GitHub Actions artifacts
- packaging a server release bundle
- keeping logs and runtime output out of source control

## Setup

1. Download the Fabric installer from https://fabricmc.net/use/
2. Run:
   ```sh
   java -jar fabric-installer.jar server -downloadMinecraft
   ```
3. Confirm `eula.txt` contains `eula=true`
4. Start the server:
   - Windows: `scripts\start.bat`
   - Linux/macOS: `scripts/start.sh`
5. Use `scripts/backup.bat` or `scripts/backup.sh` for local backups.

## GitHub Actions

- `.github/workflows/backup-world.yml` - archive the `world/` folder as an artifact
- `.github/workflows/validate-mods.yml` - run a quick mod folder validation when `mods/` changes
- `.github/workflows/release-server.yml` - package the repository for deployment

## Notes

- Keep `mods/` and `config/` under version control.
- Do not commit generated runtime folders like `world/`, `logs/`, or `libraries/`.
