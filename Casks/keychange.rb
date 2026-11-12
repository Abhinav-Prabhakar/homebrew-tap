cask "keychange" do
  version "0.5.0"
  sha256 "3b5e0722ec3bc6269d76f6f055dd1bb00c95ff735f3d4ddf2934d4ccaa732487"

  url "https://github.com/Abhinav-Prabhakar/KeyChange/releases/download/v#{version}/KeyChange-#{version}.dmg"
  name "KeyChange"
  desc "MIDI text instrument — play your words loud"
  homepage "https://github.com/Abhinav-Prabhakar/KeyChange"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "KeyChange.app"

  caveats <<~EOS
    KeyChange is ad-hoc signed, not notarised. On first launch, right-click
    the app in Applications and choose Open.
  EOS
end
