class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.2.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.102/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "03fc931eed384f9961575cabcefd1a6791d8c0907ce9d6533cfdaa4052fe9c3b"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.102/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "acfe87b331935915b0a7b1817ab9b84e2e3521150e57e263fab9e42d68c250c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.102/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1a716785f15a642a96c465253764d67140ecb59571e108568e4edbad3750fcaf"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.102/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "930bcce390f5d738db8cd7583bbb531575141d4f58c40e8178643c0e4b13680a"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
