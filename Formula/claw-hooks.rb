class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.2.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.100/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "019caaeada7844942c14078671e97250f3827d426600b43fd4188f0bcf3844f0"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.100/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "58472e6c97703d9f2e37d5a812f425f4a9ca006931f30db533df05ed8a500836"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.100/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cd7afc8eeace12f6a2d26f27172d514713156618977fae5def7c9ad836de79b5"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.100/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86c6714edc95bd8dd82a4e62bae2a9f583abca1fda4d2c93c7ba33bc60bb6d7d"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
