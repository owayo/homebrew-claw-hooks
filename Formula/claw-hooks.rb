class ClawHooks < Formula
  desc "Hooks CLI for Claude Code, Cursor, Windsurf, Antigravity, Codex, and Grok"
  homepage "https://github.com/owayo/claw-hooks"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.10.100/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "f6e2ac30942cdd0783705ac23e22b9955c891cdda25c8c7fc854cb72c520a9ed"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.10.100/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "16f374d31ea8fa1fc1faf4e98cf67f1f52b8c9103da01b1f638eca6646fa31d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.10.100/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3df0a82bbcdd363769bfa22f0c5ee500c14ced51ca50e86e3e87dce29fc81199"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.10.100/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fb1217b7be26d6a858e7178b6a629b99c3f578779035d8293bb8edc83f1efc24"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claw-hooks --version")
  end
end
