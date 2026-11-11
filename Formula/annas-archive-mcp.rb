class AnnasArchiveMcp < Formula
  desc "A Rust MCP server for searching and downloading books from Anna's Archive."
  homepage "https://github.com/Abhinav-Prabhakar/AnnasArchiveMCP"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Abhinav-Prabhakar/AnnasArchiveMCP/releases/download/v1.0.5/annas-archive-mcp-server-aarch64-apple-darwin.tar.xz"
      sha256 "67e4a26a9ce361c62da647712a08202cf8c7ebcd710143d6ca7c7e0bf524c6d8"
    end
    on_intel do
      url "https://github.com/Abhinav-Prabhakar/AnnasArchiveMCP/releases/download/v1.0.5/annas-archive-mcp-server-x86_64-apple-darwin.tar.xz"
      sha256 "da8777abbabfe9b047faf90eaa69afa747d3b4560fcb0549fe536c499acc0ffd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Abhinav-Prabhakar/AnnasArchiveMCP/releases/download/v1.0.5/annas-archive-mcp-server-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "ac3ce1e0b8d291488b806af6432efc928a20323817408b8316e8a8c9fb5ecc68"
    end
    on_intel do
      url "https://github.com/Abhinav-Prabhakar/AnnasArchiveMCP/releases/download/v1.0.5/annas-archive-mcp-server-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "d5b5e0378310b5dfb1ecc419ff17893a769652a3f4d6a158e704848e04ce2765"
    end
  end

  def install
    bin.install "annas-archive-mcp"
  end

  test do
    assert_predicate bin/"annas-archive-mcp", :executable?
  end
end
