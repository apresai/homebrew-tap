cask "secondbrain" do
  version "0.5.10"
  sha256 "eca46d85a23a011ef06e98ffc11d9b2ed00d54379ae27c75ec545308970079b7"

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
