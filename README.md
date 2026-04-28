# D&D 5e Encounter Builder — Docker

A self-contained nginx container serving the SRD 5.2.1 Encounter Builder.

## Files

| File | Purpose |
|---|---|
| `Dockerfile` | Builds the nginx image |
| `nginx.conf` | Nginx site config (gzip, MIME types, headers) |
| `index.html` | The encounter builder app |
| `srd_creatures.json` | Monster data (loaded at runtime by the app) |
| `docker-compose.yml` | Convenience compose file |

## Quick Start

### With Docker Compose (recommended)
```bash
docker compose up -d
```
Then open http://localhost:8080

### With plain Docker
```bash
docker build -t encounter-builder .
docker run -d -p 8080:80 --name encounter-builder --restart unless-stopped encounter-builder
```

## Change the port

Edit `docker-compose.yml` and change `"8080:80"` to your preferred host port, e.g. `"3000:80"`.

Or with plain Docker: `-p 3000:80`

## Stop / Remove

```bash
docker compose down          # stop and remove container
docker compose down --rmi all  # also remove the image
```

## Attribution

This work includes material from the System Reference Document 5.2.1 ("SRD 5.2.1")
by Wizards of the Coast LLC, available under the Creative Commons Attribution 4.0
International License (CC-BY-4.0). https://creativecommons.org/licenses/by/4.0/
