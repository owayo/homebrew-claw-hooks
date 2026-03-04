class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.3.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.101/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "80a5dc2bad9d3775638f88937b5485d6b2a137284054b3bb420b1e6a30ff70af"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.101/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "da3496b99ff3845538fbfcd9fd35bc73f39be0d80c20887f1ed61b6479d86d06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.101/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4455237d07e2aa4cd5aea1819c9430874afa5fd9e22649f086ce4d9193b31963"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.101/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a60f1bbfbcce8f33741bcc45444e4235fc375db6e9bbbfdc540db90b4b081a1"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
