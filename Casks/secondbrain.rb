cask "secondbrain" do
  version "0.9.5"
  sha256 "9cfe0b7dafb3853300a385f1871f0ec559780343cb1e1a05403ed9facb1a3899"

  url "https://github.com/apresai/2ndbrain/releases/download/v#{version}/SecondBrain-#{version}-arm64.zip"
  name "SecondBrain"
  desc "AI companion dashboard for Obsidian vaults (semantic search, RAG, MCP)"
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
