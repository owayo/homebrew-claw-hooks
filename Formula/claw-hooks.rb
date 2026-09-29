class ClawHooks < Formula
  desc "Hooks CLI for Claude Code, Cursor, Windsurf, Antigravity, Codex, and Grok"
  homepage "https://github.com/owayo/claw-hooks"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.9.105/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "4b994e651d53ef52cc25077d5b41123242bf435416da1c015503e5c715c971b8"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.9.105/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "33437841bef240d5d09592bae2aa600c715ff8189c9687822bdad50af55a8cfe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.9.105/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "205da074ae088c6a2bb5bb747c5797f43e34ed5517dff7ff0aacdc125402c08c"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.9.105/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cfbd1be4bbdc4f4b5c8554848c3fa57ad817e2f56d9e9b5b1734f532fa862e42"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claw-hooks --version")
  end
end
