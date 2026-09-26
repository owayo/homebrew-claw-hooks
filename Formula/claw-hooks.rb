class ClawHooks < Formula
  desc "Hooks CLI for Claude Code, Cursor, Windsurf, Antigravity, Codex, and Grok"
  homepage "https://github.com/owayo/claw-hooks"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.9.103/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "fd6a0319a43a28942342e606da7a99d2197d0c0554080dce2a8cb7601fcf4808"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.9.103/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "ec3f3d020f3883420d33423746bf2b4c9aa22bce626f930e6a06dd01782c18b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.9.103/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "024320c618a5d8bdb560d2f2c971523a9bb5a06f138070694f6640ecbcacf802"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.9.103/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "426d83428a1d4ef36883c8f746d238fd3b28db81ab5c65ab4d86f12f182960dc"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claw-hooks --version")
  end
end
