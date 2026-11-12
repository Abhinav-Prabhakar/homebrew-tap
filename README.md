# homebrew-tap

Homebrew formulae for [Abhinav Prabhakar](https://github.com/Abhinav-Prabhakar)'s
command-line tools.

```sh
brew tap Abhinav-Prabhakar/tap
```

| Formula | What it is |
|---|---|
| `meow` | Git, without the growl. A beginner-first Git CLI. |
| `whatschedule` | Schedule WhatsApp Web messages from the terminal. |
| `annas-archive-mcp` | An MCP server for searching and downloading books from Anna's Archive. |
| `grain` | Track focused work and earn break credits. |
| `wordy` | Learn uncommon English vocabulary with spaced repetition. |
| `littleclaw` | A terminal-native AI companion. |
| `unstop` | Explore Unstop hackathons from the terminal. |

## Casks

| Cask | What it is |
|---|---|
| `keychange` | A MIDI text instrument. Play your words loud. |

Homebrew treats third-party taps as untrusted until you say otherwise:

```sh
brew trust Abhinav-Prabhakar/tap
brew install --cask Abhinav-Prabhakar/tap/keychange
```

Install any of them:

```sh
brew install Abhinav-Prabhakar/tap/meow
```

Formulae are refreshed by each project's release pipeline, or by hand for the
Go projects, whenever a new tag is published.
