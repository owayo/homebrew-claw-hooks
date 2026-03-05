class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.3.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.103/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "6865b2afd745aa74ad35f6d946809c6bdaf2bd4274ff28580fab7931cd69d8c7"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.103/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "b956b3600ad8318a631f8f7d86789608f3a29426a0243c072d84b929fc1ae485"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.103/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "221ce2b71e2d7d07b6b7045b89298b8d3dccd6fc705d15c7a05fc4863e28060f"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.103/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b6ea5b9444b96c4569e551c92f4c1e107d9efb27ce4d41ed362c29d2f025e8fe"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
