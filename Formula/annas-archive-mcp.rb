class AnnasArchiveMcp < Formula
  desc "A robust Rust MCP server for searching and downloading books from Anna's Archive over MCP."
  homepage "https://github.com/Abhinav-Prabhakar/AnnasArchiveMCP"
  version "1.0.5"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Abhinav-Prabhakar/AnnasArchiveMCP/releases/download/v1.0.5/annas-archive-mcp-server-aarch64-apple-darwin.tar.xz"
      sha256 "67e4a26a9ce361c62da647712a08202cf8c7ebcd710143d6ca7c7e0bf524c6d8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Abhinav-Prabhakar/AnnasArchiveMCP/releases/download/v1.0.5/annas-archive-mcp-server-x86_64-apple-darwin.tar.xz"
      sha256 "da8777abbabfe9b047faf90eaa69afa747d3b4560fcb0549fe536c499acc0ffd"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Abhinav-Prabhakar/AnnasArchiveMCP/releases/download/v1.0.5/annas-archive-mcp-server-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "ac3ce1e0b8d291488b806af6432efc928a20323817408b8316e8a8c9fb5ecc68"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Abhinav-Prabhakar/AnnasArchiveMCP/releases/download/v1.0.5/annas-archive-mcp-server-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "d5b5e0378310b5dfb1ecc419ff17893a769652a3f4d6a158e704848e04ce2765"
    end
  end
  license "MIT"

  BINARY_ALIASES = {
    "aarch64-apple-darwin":      {},
    "aarch64-unknown-linux-gnu": {},
    "x86_64-apple-darwin":       {},
    "x86_64-pc-windows-gnu":     {},
    "x86_64-unknown-linux-gnu":  {},
  }.freeze

  def target_triple
    cpu = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    os = OS.mac? ? "apple-darwin" : "unknown-linux-gnu"

    "#{cpu}-#{os}"
  end

  def install_binary_aliases!
    BINARY_ALIASES[target_triple.to_sym].each do |source, dests|
      dests.each do |dest|
        bin.install_symlink bin/source.to_s => dest
      end
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "annas-archive-mcp"
    end
    if OS.mac? && Hardware::CPU.intel?
      bin.install "annas-archive-mcp"
    end
    if OS.linux? && Hardware::CPU.arm?
      bin.install "annas-archive-mcp"
    end
    if OS.linux? && Hardware::CPU.intel?
      bin.install "annas-archive-mcp"
    end

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
