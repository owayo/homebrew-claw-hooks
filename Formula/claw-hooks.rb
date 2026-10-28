class ClawHooks < Formula
  desc "Hooks CLI for Claude Code, Cursor, Windsurf, Antigravity, Codex, and Grok"
  homepage "https://github.com/owayo/claw-hooks"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.10.103/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "b57388d3453b519809d15efa72e40aa731cf9c1636d83917ee8cc50fc76a1494"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.10.103/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "153326d81ba2ab8a8b3fcc08c98818a8900b50033bc578858ebb802381c88e74"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.10.103/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c0493134be6a23bd1a8e9f0f36dcf7642929a9f6023b04193b4fbd3fc83b7974"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.10.103/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a8f9f05f3a99a63d64b429f057a4d571a0652c9a1d5bddb59627603e8378bf9"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claw-hooks --version")
  end
end
