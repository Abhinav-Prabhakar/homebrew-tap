class Whatschedule < Formula
  desc "A resilient Rust CLI for scheduling WhatsApp Web messages."
  homepage "https://github.com/Abhinav-Prabhakar/Whatschedule"
  version "0.1.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Abhinav-Prabhakar/Whatschedule/releases/download/v0.1.0/whatschedule-aarch64-apple-darwin.tar.xz"
      sha256 "af6bbb640b7d373026c297185d60733f058021c8d163901f913d2f2b6720da64"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Abhinav-Prabhakar/Whatschedule/releases/download/v0.1.0/whatschedule-x86_64-apple-darwin.tar.xz"
      sha256 "a65cabed9f637185fd1ccd8ec8562001157ed4588622243ef23b758186d95808"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Abhinav-Prabhakar/Whatschedule/releases/download/v0.1.0/whatschedule-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "a6e99fa8fd3bcc98304a92e7fb2dfbad21591e8d98629efff2b4812916cf26a7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Abhinav-Prabhakar/Whatschedule/releases/download/v0.1.0/whatschedule-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "749ce050afe301f50f2c1ca4f78e85d3360c4c17a5712a4ef497f6a0b50f33d4"
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
      bin.install "whatschedule"
    end
    if OS.mac? && Hardware::CPU.intel?
      bin.install "whatschedule"
    end
    if OS.linux? && Hardware::CPU.arm?
      bin.install "whatschedule"
    end
    if OS.linux? && Hardware::CPU.intel?
      bin.install "whatschedule"
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
