class ClawHooks < Formula
  desc "Hooks CLI for Claude Code, Cursor, Windsurf, Antigravity, Codex, and Grok"
  homepage "https://github.com/owayo/claw-hooks"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.10.102/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "20907435ec3867f0b416a3e87ad1106e36ba3ca2b28f9f309b2a0cab0c334660"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.10.102/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "4a4930b280558e8c0a57b55d00d326174f66b6a8a0cec088c38a322c29c77c25"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.10.102/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e3d71d4fb4a6c640d9893daa2b37b0ea07069cc8d06082d9bdb77598db1687a"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.10.102/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7abd70ee3a14aca05dfcc38e43b334f0f56cb316e7873fc2dfcfe04e710317d2"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claw-hooks --version")
  end
end
