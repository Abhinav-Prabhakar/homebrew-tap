class Littleclaw < Formula
  desc "A terminal-native AI companion for macOS power users."
  homepage "https://github.com/Abhinav-Prabhakar/LittleClaw"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/Abhinav-Prabhakar/LittleClaw/releases/download/v1.0.0/littleclaw-darwin-arm64.tar.gz"
      sha256 "f430e7be55a1aacd1a363a28afc81e6664c6ed1961c47dd604ffa97d86651094"
    end
    on_intel do
      url "https://github.com/Abhinav-Prabhakar/LittleClaw/releases/download/v1.0.0/littleclaw-darwin-amd64.tar.gz"
      sha256 "a8fc0c2164f8494b0d1297ab2853de6d1ac65e03f332d1bc848d6e9e91291415"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Abhinav-Prabhakar/LittleClaw/releases/download/v1.0.0/littleclaw-linux-arm64.tar.gz"
      sha256 "0fac1b349679d472c67178c2fb1fb5f92066e9f06685027b761ad8d3498fe4c1"
    end
    on_intel do
      url "https://github.com/Abhinav-Prabhakar/LittleClaw/releases/download/v1.0.0/littleclaw-linux-amd64.tar.gz"
      sha256 "4071f84825b8a2eca1419ff32b3725e03630bbe1487f4946a27f517ab0f74dc2"
    end
  end

  def install
    bin.install "claw"
    bin.install "littleclaw"
  end

  test do
    assert_predicate bin/"claw", :executable?
  end
end
