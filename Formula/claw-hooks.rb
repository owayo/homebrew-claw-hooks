class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.3.104"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.104/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "b404b728f7ed372dbf68409caaaee751d20ef0928d6fccc90163da14f6f2138a"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.104/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "042979e14aa6afa525443ae2118dd62b38d428d4675f8839bc03722519326912"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.104/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d11cdfef30a696f3b43b41364cb111a4cf371912d13debbff84e26d24401a3c2"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.3.104/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "90f82d4490620f289cc4c69c62536c541d598c601332d682d9b8f87f8b2042be"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
