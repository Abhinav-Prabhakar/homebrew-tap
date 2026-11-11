class Meow < Formula
  desc "Git, without the growl. A beginner-first Git CLI."
  homepage "https://github.com/Abhinav-Prabhakar/Meow"
  version "1.0.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Abhinav-Prabhakar/Meow/releases/download/v1.0.0/meow-git-aarch64-apple-darwin.tar.xz"
      sha256 "1b96f95bf25e2048d3fb9549c2e57822d8c7a7b7266bd14ea961ebc63c1618b6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Abhinav-Prabhakar/Meow/releases/download/v1.0.0/meow-git-x86_64-apple-darwin.tar.xz"
      sha256 "9b549488482b2d80a281492078f3a3ae20d1778dd5600d5009be6c477a2ccc44"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Abhinav-Prabhakar/Meow/releases/download/v1.0.0/meow-git-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "621458a4b23fc214bb68680f90cd11044548485c6c45dca2e47e16361cc36c7d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Abhinav-Prabhakar/Meow/releases/download/v1.0.0/meow-git-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "88cea8fb29f039c5ed0f3a36cdecbe51ca63bc4476443492a70ac93b9b321bb7"
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
      bin.install "meow"
    end
    if OS.mac? && Hardware::CPU.intel?
      bin.install "meow"
    end
    if OS.linux? && Hardware::CPU.arm?
      bin.install "meow"
    end
    if OS.linux? && Hardware::CPU.intel?
      bin.install "meow"
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
