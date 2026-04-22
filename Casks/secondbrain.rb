cask "secondbrain" do
  version "0.2.11"
  sha256 "4f9a9810cf7131780691304964aec2224bc0649e4ea24119660cfd94cb4f3ded"

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
