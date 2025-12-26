# Obsidian Plugins

> [!NOTE]
> This folder contains community plugins for the vault. Plugin code is auto-downloaded; only manifests and configurations are tracked in version control.

## Git Tracking Strategy

This folder uses a selective `.gitignore` approach to balance **reproducibility** with **security**:

### Tracked Files

| File Type | Purpose |
|-----------|---------|
| `manifest.json` | Plugin metadata (name, version, description) |
| Safe `data.json` | UI preferences, templates, non-sensitive settings |
| `.gitignore` | Tracking rules for this folder |

### Ignored Files

| File Type | Reason |
|-----------|--------|
| `*.js`, `*.css` | Plugin code (auto-downloaded from plugin repos) |
| `**/cache.json`, `**/cache/` | Regenerated automatically |
| Secret-containing `data.json` | Contains API keys, tokens, or credentials |

### Plugins with Secrets (Ignored)

The following plugins store sensitive data in their `data.json` and are explicitly ignored:

| Plugin | Secrets Stored |
|--------|----------------|
| `copilot` | OpenAI, Anthropic, Google, Cohere, etc. API keys |
| `obsidian-local-rest-api` | API key, private key, SSL certificates |
| `obsidian-imgur-plugin` | Imgur client ID and album IDs |
| `smart-connections` | AI service API keys |
| `readwise-official` | Readwise API token |
| `obsidian-raindrop-highlights` | Raindrop API token |
| `github-copilot` | GitHub authentication tokens |
| `google-drive-sync` | OAuth tokens |
| `obsidian-google-lookup` | Google API key |

### Safe Configurations (Tracked)

These plugins store only UI preferences, templates, or non-sensitive settings:

| Plugin | Configuration Type |
|--------|-------------------|
| `templater-obsidian` | Folder templates, syntax settings |
| `obsidian-git` | Commit messages, backup preferences |
| `todoist-sync-plugin` | UI preferences (token stored separately) |
| `calendar` | Week start, display preferences |
| `terminal` | Shell profiles, terminal settings |
| `metadata-menu` | Field definitions, indexing settings |
| `lazy-plugins` | Plugin load order |
| `obsidian-plugin-groups` | Plugin group configurations |

## Secure Storage for Secrets

### Current State (No Native Keychain Support)

Obsidian does **not** currently expose Electron's `safeStorage` API to plugins. This is a [requested feature](https://forum.obsidian.md/t/cross-platform-secure-storage-for-secrets-and-tokens-that-can-be-syncd/100716) in the community.

Electron's `safeStorage` provides OS-level encryption:
- **macOS**: Keychain Access
- **Windows**: DPAPI (Data Protection API)
- **Linux**: kwallet, gnome-libsecret, or similar

However, even if exposed, keychain-encrypted data **cannot sync** between devices.

### Current Workarounds

Plugins use various approaches to handle secrets:

| Approach | Example | Pros | Cons |
|----------|---------|------|------|
| Separate token file | `todoist-token` | Can gitignore specifically | Extra file management |
| `localStorage` | Machine-local storage | Not synced, per-machine | Not truly encrypted |
| Encrypted settings | Plugin-specific encryption | Portable | Key management complexity |
| Environment variables | System-level | Works across vaults | Hard to configure, no mobile |

### Recommendations

1. **For new vault setups**: Configure plugins requiring API keys manually
2. **For syncing**: Use Obsidian Sync or cloud storage for vault, but secrets stay local
3. **For backups**: Document which plugins need manual API key entry (see below)

## Plugin Setup After Clone

After cloning this vault, you'll need to configure these plugins with your credentials:

1. **Copilot**: Settings > Copilot > Add your OpenAI/Anthropic API keys
2. **Local REST API**: Plugin generates new keys on first run
3. **Imgur**: Settings > Imgur > Add your client ID
4. **Readwise**: Settings > Readwise > Connect your account
5. **Raindrop Highlights**: Settings > Raindrop > Connect your account
6. **GitHub Copilot**: Settings > GitHub Copilot > Authenticate
7. **Google Drive Sync**: Settings > Google Drive > Connect your account
8. **Google Lookup**: Settings > Google Lookup > Add API key
9. **Smart Connections**: Settings > Smart Connections > Add AI API keys

## Related Documentation

- [[PLUGINS]] - Full plugin list with versions and descriptions
- [[05-SYSTEM/Meta/AGENTS]] - AI tooling and MCP configuration
- [`.obsidian/README.md`](../README.md) - Full `.obsidian` folder documentation

