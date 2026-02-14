class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.2.106"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.106/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "94f5daf5fc079003719e52aca1f0654488d1c4241171e8a36c08f28d838f9171"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.106/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "2a16c93f317f134fcf3b9f30a68815e7bb54e717217ce15f1ca674c00a23c8f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.106/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "199442feff3589379a1ec2928c128a17a9e294df6c1ec34372dea1726805e017"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.106/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c2417fc77716499597a727ff7df38bbbabdf8bd22113fc295c36fa1715866017"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
