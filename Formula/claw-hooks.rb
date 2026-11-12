class ClawHooks < Formula
  desc "Hooks CLI for Claude Code, Cursor, Windsurf, Antigravity, Codex, and Grok"
  homepage "https://github.com/owayo/claw-hooks"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.11.100/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "2ca40366a6c1bec5bd191db62ec8325295869bfdf1f762d26c31496dcac84103"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.11.100/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "8d0400e128604db533a39f77965b103829e984a81dc362478dd551cc66c1e4d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.11.100/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "af15f6d821f8a9edcb2c4a8761cb4a6d31dda0ecd74b8c23c29d1debb77f38a8"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.11.100/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c45e8a7136522fb766a4112c025e0b31de56abe07eec138a02ab29611e091d3"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claw-hooks --version")
  end
end
