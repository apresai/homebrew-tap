cask "secondbrain" do
  version "0.5.11"
  sha256 "c894b2dd705081c5497750ba9b78606caf4280de1beed190818751bb780bcce7"

  url "https://github.com/apresai/2ndbrain/releases/download/v#{version}/SecondBrain-#{version}-arm64.zip"
  name "SecondBrain"
  desc "AI-native markdown knowledge base editor"
  homepage "https://github.com/apresai/2ndbrain"

  depends_on formula: "apresai/tap/twonb"

  app "SecondBrain.app"

  caveats <<~EOS
    SecondBrain shells out to the `2nb` CLI, installed automatically as a
    dependency. `brew upgrade --cask secondbrain` does NOT bump the CLI, so
    after upgrading the app run:

      brew upgrade apresai/tap/twonb

    to keep the two in step. The app warns on its Home screen when the CLI is
    behind.
  EOS
end
