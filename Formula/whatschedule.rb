class Whatschedule < Formula
  desc "A resilient CLI for scheduling WhatsApp Web messages."
  homepage "https://github.com/Abhinav-Prabhakar/Whatschedule"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Abhinav-Prabhakar/Whatschedule/releases/download/v0.1.0/whatschedule-aarch64-apple-darwin.tar.xz"
      sha256 "af6bbb640b7d373026c297185d60733f058021c8d163901f913d2f2b6720da64"
    end
    on_intel do
      url "https://github.com/Abhinav-Prabhakar/Whatschedule/releases/download/v0.1.0/whatschedule-x86_64-apple-darwin.tar.xz"
      sha256 "a65cabed9f637185fd1ccd8ec8562001157ed4588622243ef23b758186d95808"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Abhinav-Prabhakar/Whatschedule/releases/download/v0.1.0/whatschedule-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "a6e99fa8fd3bcc98304a92e7fb2dfbad21591e8d98629efff2b4812916cf26a7"
    end
    on_intel do
      url "https://github.com/Abhinav-Prabhakar/Whatschedule/releases/download/v0.1.0/whatschedule-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "749ce050afe301f50f2c1ca4f78e85d3360c4c17a5712a4ef497f6a0b50f33d4"
    end
  end

  def install
    bin.install "whatschedule"
  end

  test do
    assert_predicate bin/"whatschedule", :executable?
  end
end
