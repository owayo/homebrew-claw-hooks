class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.2.109"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.109/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "b2ed68c535f0e99a1fc917cc7676a3dab6d048d33cf127916ebe516c1309e8b1"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.109/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "6bf2dbe562f8f1947fae78cfa48bab819c09786670f2380810c0913939c07e5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.109/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2ea98cdeb102ae7fefdc28e0ffdce6db1ea0136f55f1afc4a301452f670528dc"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.109/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7f6dca575d6103be8388440ebe5e2a9d76a01bbe230dde6a4156d649d74a245b"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
