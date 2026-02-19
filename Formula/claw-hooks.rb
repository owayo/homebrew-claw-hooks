class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.2.111"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.111/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "02093988b9f50b788edd8b7b6bd99183cfda2d3a2ccd2e5044918c81b71e79b5"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.111/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "a9e459214fd5cfe9103e83cfe284639ffb6460193a42415ad64f777acacc6606"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.111/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b6fe12b004e85c23951033e63ddddc48a162c59ba3b4b00113d0c03b966ab69"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.111/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7db7c7e63b2ee5ce0280b62a3d9b78ff22f6044f344d9182e13e152ebbb151d5"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
