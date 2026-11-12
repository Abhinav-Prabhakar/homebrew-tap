cask "keychange" do
  version "0.6.0"
  sha256 "871c125fdbb8411e6b6d13bdbb7e775bf12e82bf3c90fa395422beeb7ec22d3d"

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
