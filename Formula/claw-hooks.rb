class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.2.108"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.108/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "010e892484857da5140ab0495bb16df52b3d2ba127034a393402d3ea2ef95f8e"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.108/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "4b9b5e8fd5e13867ae7e6ac36af60a0ce8c5b39dbcd53d63a077e9914dc7eb8d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.108/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7451642151131b0dbb49d89e53045dba5956a60412f9e007e45eea4e2fc888cb"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.108/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f14308887666f3b509f91d3a6a9ecbc5af3cf649b194d5d35684ff0d8dc45345"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
