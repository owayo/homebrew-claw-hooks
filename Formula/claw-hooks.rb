class ClawHooks < Formula
  desc "Hooks CLI for Claude Code, Cursor, Windsurf, Antigravity, Codex, and Grok"
  homepage "https://github.com/owayo/claw-hooks"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.9.102/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "fe99312194134c5b622470d7f6326ecd7224c5d56313bcc8bfa1ed357e595b94"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.9.102/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "8197215bf7f9fb3804d5bd84c80ce66232f57f6ae65b6682b8688e95d0e9ae54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.9.102/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "373689e79d4ab69d3e196ca628ce2c158994178b0b9e81b5bad3ddaf6e897c62"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.9.102/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d05935dcefc3cc7a72c79065269a957263b01ea0a2e3123a9ebedb6726805738"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claw-hooks --version")
  end
end
