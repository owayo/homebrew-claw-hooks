class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.1.105"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.1.105/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "c6dae3e6ecd54c7b823eac4f05e58ceb354b8d67532ba154ddb4af4bfbc882cd"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.1.105/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "6faab784b38715e83bd4dc9e5f7da5a55db6f021c8224b9940edaf0085ed773f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.1.105/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "07a764e9f39ebdbf08085dcdc67e8c246a37c68e7e8b9c960bce0c2a7ad3dd7d"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.1.105/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f6191be3c55011cc5691b232ed9a593616e8d65a019ee93918d8e89ea1bdf51"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
