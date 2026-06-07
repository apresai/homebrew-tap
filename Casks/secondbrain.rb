cask "secondbrain" do
  version "0.5.6"
  sha256 "c8212358dedc5a3dbf0b851498477925d41ce010ad3f5fd81bf5f8d7905a9bfd"

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
