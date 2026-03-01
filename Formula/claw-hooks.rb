class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.3.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.100/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "948dad195580eee9d8385fb05e24f043c506cab231d2376623f6f143db330a01"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.100/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "fd8d73a9a737e76b574f57652159f86ad27038d43d59b9e07059caaa85ed3776"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.100/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "72b51d412eba01e9aeabecefd08add91d4ec06d76b1fb2e2cb66f5f72c8cea83"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.100/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9874272fe77374679152279521d92bf37f69296d710b2dd55a0b17f62721ce68"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
