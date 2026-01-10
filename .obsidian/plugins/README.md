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

### Native Keychain Support

Obsidian provides a **native Keychain** feature for securely storing secrets (added in v1.8+):

**Settings > Keychain**

This uses Electron's `safeStorage` API with OS-level encryption:
- **macOS**: Keychain Access
- **Windows**: DPAPI (Data Protection API)
- **Linux**: kwallet, gnome-libsecret, or similar

### Using the Keychain

Secrets can be stored in the Keychain and referenced by plugins that support it:

| Secret Name | Used By |
|-------------|---------|
| `openai-api-key` | Copilot, Smart Connections |
| `anthropic-api-key` | Copilot |
| `todoist-api-key` | Todoist Sync |
| `obsidian-rest-api-key` | Local REST API |

To add a secret:
1. Open **Settings > Keychain**
2. Click the **+** button
3. Enter a secret name (e.g., `openai-api-key`)
4. Enter the secret value

### Keychain Limitations

- **Machine-local**: Keychain secrets are stored per-machine and **do not sync** between devices
- **Plugin API in development**: The official Plugin API for Keychain is still being developed; not all plugins support it yet
- **Manual setup**: After cloning the vault on a new machine, secrets must be re-entered

### Legacy Plugin Approaches

Some plugins still use older approaches for secrets:

| Approach | Example | Notes |
|----------|---------|-------|
| Separate token file | `todoist-token` | Gitignored, machine-local |
| `data.json` storage | Copilot, Imgur | Gitignored for security |
| `localStorage` | Machine-local | Not synced |

### Recommendations

1. **Prefer Keychain**: When plugins support it, use Keychain for API keys
2. **After cloning**: Re-enter Keychain secrets on each new machine
3. **Check plugin docs**: Some plugins may still require `data.json` configuration

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

- [PLUGINS](PLUGINS.md) - Full plugin list with versions and descriptions
- [05-SYSTEM/Meta/AGENTS](05-SYSTEM/Meta/AGENTS.md) - AI tooling and MCP configuration
- [`.obsidian/README.md`](../README.md) - Full `.obsidian` folder documentation

