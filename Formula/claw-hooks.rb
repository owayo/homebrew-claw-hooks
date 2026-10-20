class ClawHooks < Formula
  desc "Hooks CLI for Claude Code, Cursor, Windsurf, Antigravity, Codex, and Grok"
  homepage "https://github.com/owayo/claw-hooks"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.10.101/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "3fce30d89aa12f806f0fe840c3e9be7a19ab80d4866e26e90eeb55dc8c97a021"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.10.101/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "6b6bbdaa4756bcb941442553044c108787a147741fd077769dd5ab90d1b9990f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.10.101/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b92ea4d6d6cc699b586bcc3c641b957f2b988eff8bb946130e45485a3eb9aab4"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.10.101/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "911eecd447e1b3e835e8082fbcfb5c72343cd84919740e47ce15dd9918302e7f"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claw-hooks --version")
  end
end
