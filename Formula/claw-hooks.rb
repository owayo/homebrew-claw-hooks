class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.2.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.101/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "fda9cd76c698734dd10c142cd439f397114b58cdf2835f1a7a4ad09c7db572f2"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.101/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "037dd246bd5a08efdea868589a1c27bad5af6c4b29b0b4afd006fe505d772db0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.101/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "217ca6ffe9ebfcdf9e3f2e884b10866ed6e9ec0574bb574a627e5c85308e64a5"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.101/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2d2652b6a278e75ad834bca9e07853068a5cdcacc1b4e374b83d638f39226af"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
