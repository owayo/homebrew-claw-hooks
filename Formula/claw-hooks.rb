class ClawHooks < Formula
  desc "Hooks CLI for Claude Code, Cursor, Windsurf, Antigravity, Codex, and Grok"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.9.100.tar.gz"
  sha256 "3b5cf45084b3c3ecf75418f1b418f9d5c1ff310f69b241c723dc07cd2deb7e09"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.9.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "bb528479a7abfc33d006b693ec5f2728433dcf1429c1a14620dbbadf45f5e9a6"
    sha256 cellar: :any_skip_relocation, sonoma: "466ecf4ee02005d842177f006b114fafeb79ec3ad47495ab704568f0998ca4d4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "85a882faacb23e3178e812cfae9fe9f686026bf2cbec45a502ec90f72a922851"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
