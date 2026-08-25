cask "secondbrain" do
  version "0.20.0"
  sha256 "65386ed684cd0fe941e7e9bac509d32ce8484fb287083ae190cf52c0808380f1"

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
