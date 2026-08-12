cask "secondbrain" do
  version "0.17.1"
  sha256 "cd4df48898b1e8c4b06e1c2ff5b21c27f090b59847cce73337c69f103446b969"

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
