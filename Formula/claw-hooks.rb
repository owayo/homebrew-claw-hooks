class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.2.105"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.105/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "8d132e2e954aafb3d2ec59f905d98af92076af05a2b1c72d25fa95f644c572e9"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.105/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "eff70adf21294c7e5fae854fad8df6aaee05ae774926f11eff27c68c94099403"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.105/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2773e2c494906ec8fd02ff999f156e4b16348cb7aefe620ff2bd4df5ae01369a"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.105/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aeb03c76e5daa0281afdbc0235d029b71f581e1623b5684be4db311cb428f0c2"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
