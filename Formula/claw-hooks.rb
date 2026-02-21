class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.2.112"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.112/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "c8d34784e49cd952ab720801cc2e4b0f2bfccfd270593a37333ed0dcd48b7e2c"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.112/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "b77065544627fa0774dd44795bd83688423a401770274d3cc130e0370364e31d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.112/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "af83caf0f95db499d1dd6605686807d32c9014cc10dcf4c4d7d590dea29a7729"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.112/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f40f9f00f6fdfd731140b148a7bbd6b7ebff3f732022d504ba14c5d6807f24d1"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
