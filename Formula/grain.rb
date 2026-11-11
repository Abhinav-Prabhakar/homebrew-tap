class Grain < Formula
  desc "A terminal companion for tracking focused work and earning break credits."
  homepage "https://github.com/Abhinav-Prabhakar/GrainCLI"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/Abhinav-Prabhakar/GrainCLI/releases/download/v1.0.0/grain-darwin-arm64.tar.gz"
      sha256 "19e0151fadbb79711ad13694ced51486c3a0d29a6d2c43a39c7ed242ce476b5d"
    end
    on_intel do
      url "https://github.com/Abhinav-Prabhakar/GrainCLI/releases/download/v1.0.0/grain-darwin-amd64.tar.gz"
      sha256 "c771a4e9a0e5091e8219aad3f414edd2ff2135c07cd875b5de761066c38cdd9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Abhinav-Prabhakar/GrainCLI/releases/download/v1.0.0/grain-linux-arm64.tar.gz"
      sha256 "f50d78ce658c35d93c5c0e7ffbc1ae554ee63ed7da57ffc0357d79b59e6dce29"
    end
    on_intel do
      url "https://github.com/Abhinav-Prabhakar/GrainCLI/releases/download/v1.0.0/grain-linux-amd64.tar.gz"
      sha256 "080f75ffa475ec6d9b464c123a3d8ffd4c1fd4e39d2ba5cb2b6038a87d7f9784"
    end
  end

  def install
    bin.install "grain"
  end

  test do
    assert_predicate bin/"grain", :executable?
  end
end
