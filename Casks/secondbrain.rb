cask "secondbrain" do
  version "0.1.12"
  sha256 "e2189a0691959ee63bb77504252284943e17d70528cd66649c4b58c7519ed010"

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
