cask "secondbrain" do
  version "0.8.3"
  sha256 "bc3e3d37f7d06c9a4bd5fa1f9dfae43bac2344096ee8e2c572c35668cb1c0192"

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
