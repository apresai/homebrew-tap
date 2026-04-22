cask "secondbrain" do
  version "0.2.10"
  sha256 "f670d3d1b830391327b78873d754504169a2f0bcd71f121acfa5d2ee970acd15"

  url "https://github.com/apresai/2ndbrain/releases/download/v#{version}/SecondBrain-#{version}-arm64.zip"
  name "SecondBrain"
  desc "AI-native markdown knowledge base editor"
  homepage "https://github.com/apresai/2ndbrain"

  depends_on formula: "apresai/tap/twonb"

  app "SecondBrain.app"

  caveats <<~EOS
    On first launch, macOS will block the app because it is not notarized.
    Right-click SecondBrain.app and choose "Open" to bypass the warning.
  EOS
end
