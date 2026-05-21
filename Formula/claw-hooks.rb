class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.5.104.tar.gz"
  sha256 "1bc7d4fa12054166d868d493e7b4a7ace63790b94939f5a17d81d5a909682d45"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.5.104"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "497d2ea5d3c0a5a53e604bc8b9f2ed6cc3bb7b7d9df267be9c91bcb0d226c43c"
    sha256 cellar: :any_skip_relocation, sonoma: "8dcaa178f12b0a2dab45aae51fc38999ded0846706233d6298966a0797a9f91e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "57d1f870bddcf6edd7f4940bfcebb16dc5928dcda11824a38c316d796d77bdee"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
