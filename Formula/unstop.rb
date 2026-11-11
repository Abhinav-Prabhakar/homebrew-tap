class Unstop < Formula
  desc "A keyboard-first terminal app for exploring Unstop hackathons."
  homepage "https://github.com/Abhinav-Prabhakar/UnstopCLI"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/Abhinav-Prabhakar/UnstopCLI/releases/download/v1.0.0/unstop-darwin-arm64.tar.gz"
      sha256 "1c139a3a392292e7025beaad476306a32f2b5d29b8ef32706fea3567e7ae2dfb"
    end
    on_intel do
      url "https://github.com/Abhinav-Prabhakar/UnstopCLI/releases/download/v1.0.0/unstop-darwin-amd64.tar.gz"
      sha256 "2186ae63994b02cd904935323cf1797276796f2557476b02ce9544da44e621b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Abhinav-Prabhakar/UnstopCLI/releases/download/v1.0.0/unstop-linux-arm64.tar.gz"
      sha256 "448881065c23b8c644e64e729d777a755a2686ec8df0a60b5eb7e768031550ec"
    end
    on_intel do
      url "https://github.com/Abhinav-Prabhakar/UnstopCLI/releases/download/v1.0.0/unstop-linux-amd64.tar.gz"
      sha256 "ea245a58887e52f80a4899c70eccea526e88d2d1a59cb92d4f31bd9b27b15af4"
    end
  end

  def install
    bin.install "unstop"
  end

  test do
    assert_predicate bin/"unstop", :executable?
  end
end
