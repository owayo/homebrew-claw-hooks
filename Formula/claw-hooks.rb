class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.2.110"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.110/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "aa6cc14bf4b26b71c87f628729bb17b2ecc6591295baac7af85a310083d09dc4"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.110/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "6fd7c4a477886cf915a5261cc80f6783bcfdf7263e113bfa0909719d173e2d74"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.110/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "15b9fe28d8a6843e52bf42362c896a26af68a205214c5d8e73f1daacb349dfa0"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.110/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e78f8000871e1d75eda86fb50a056df51544dbf5162fc7f21981172a291104b9"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
