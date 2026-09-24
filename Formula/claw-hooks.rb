class ClawHooks < Formula
  desc "Hooks CLI for Claude Code, Cursor, Windsurf, Antigravity, Codex, and Grok"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.9.101.tar.gz"
  sha256 "196de86975c763e8e2282f37aea37c153fd9f285eb55487e069932e1dafdfab4"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.9.101"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "adce46607f7e388845079ea30a28c067c17d751d2a7a139bfc74a6cc078c4bbc"
    sha256 cellar: :any_skip_relocation, sonoma: "6fcdae1987aadb30e1c71ad2f4aac9e816b38291fff1e4c47b1702e3d38dcb27"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d5c2eb8602d633b1dfa9522544c2aa0c479e3a536145233951b7be910e479b1e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
