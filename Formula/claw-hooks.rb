class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.3.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.102/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "8d956919994e1f75e9be87543139f5b92fe77144ef555f1300c9ca492e78e4bb"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.102/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "3b708612b0c03351158d7a873fb0c74c527199346de686c7aad490dd72fe76dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.102/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f29418ae7e895b72b4ff885e338981c767a948866d16ea38b8d41566e5787bd6"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.102/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c7a41bf623c6306a1013c0de87a4104004d6bb1c32691665ca9986c5b056377a"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
