class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.2.107"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.107/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "db0da25a2a17a1acdc2ef22f750f79a1d306ade5b04e6e0a07f762a57064d675"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.107/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "ca135104c54b0dda53fc4dc41763c7eb7a4bdad5e1bddbc40d6b5427bcccfead"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.107/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ca08e9333dea6360051d75d66651564d6645fea0c5c10171d6227cbfafd548c8"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.107/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d39fe381d7a6da6ec9967f8a9fc930dd3f87d14ee16a2d5e5805a1439038924"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
