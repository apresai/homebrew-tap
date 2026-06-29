cask "secondbrain" do
  version "0.11.0"
  sha256 "f88bce46052e2aab1d0a295878aa2e9b4c3966c1114b208414b1b4881a88f034"

  url "https://github.com/apresai/2ndbrain/releases/download/v#{version}/SecondBrain-#{version}-arm64.dmg"
  name "SecondBrain"
  desc "AI companion dashboard for Obsidian vaults (semantic search, RAG, MCP)"
  homepage "https://github.com/apresai/2ndbrain"

  depends_on formula: "apresai/tap/twonb"

  app "SecondBrain.app"

  caveats <<~EOS
    SecondBrain bundles its own version-matched `2nb` CLI and uses it for all
    AI/indexing/lint work, so the app always runs a matching CLI. The `2nb`
    formula is still installed as a dependency so you have `2nb` on your PATH
    for the terminal and the Obsidian plugin. `brew upgrade --cask secondbrain`
    does NOT bump that formula, so to refresh the command-line `2nb` run:

      brew upgrade apresai/tap/twonb
  EOS
end
