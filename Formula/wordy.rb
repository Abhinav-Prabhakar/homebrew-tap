class Wordy < Formula
  desc "A terminal UI for learning uncommon English vocabulary with spaced repetition."
  homepage "https://github.com/Abhinav-Prabhakar/Wordy"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Abhinav-Prabhakar/Wordy/releases/download/v1.0.0/wordy-darwin-arm64.tar.gz"
      sha256 "a3b5ed1fbc572a2282f68bf86d3fae67767c7f72cad43fc098b404d86d6dc9d2"
    end
    on_intel do
      url "https://github.com/Abhinav-Prabhakar/Wordy/releases/download/v1.0.0/wordy-darwin-amd64.tar.gz"
      sha256 "f92c4fc68c0b825c610584e15fba095e68360b4f218790e393fb87d01de31f30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Abhinav-Prabhakar/Wordy/releases/download/v1.0.0/wordy-linux-arm64.tar.gz"
      sha256 "06f5127b03a294a06c9801f074b33e2a76f72b4720410a2c3a14502e93b84b44"
    end
    on_intel do
      url "https://github.com/Abhinav-Prabhakar/Wordy/releases/download/v1.0.0/wordy-linux-amd64.tar.gz"
      sha256 "a5749c6907b11a8b9af3646a653593b30fc95e0486c5a51c6f5eec045fbedc9b"
    end
  end

  def install
    bin.install "wordy"
  end

  test do
    assert_predicate bin/"wordy", :executable?
  end
end
