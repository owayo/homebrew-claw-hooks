class ClawHooks < Formula
  desc "Hooks CLI for Claude Code, Cursor, Windsurf, Antigravity, Codex, and Grok"
  homepage "https://github.com/owayo/claw-hooks"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.9.104/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "254eee0b42f5757685767b7d3838a97b84e5a97b40461eecab17a2294ea0bba2"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.9.104/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "c8de458c69a8c2b32811a8fd604a94bef476db4d767346219ef22f2d400a9560"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.9.104/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6528c025136b3a5080105e6800887c3d8a98a0b94cec390691e369c8fdda8c93"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.9.104/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "573793f34382bc617899fc59410ece18023900ea0c8090ab2526014db076c59a"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claw-hooks --version")
  end
end
