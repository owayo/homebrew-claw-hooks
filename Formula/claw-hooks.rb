class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.6.101.tar.gz"
  sha256 "40f8065b7d79d92acfc8e7c125fb8e3ecba8ae5c599630b8123a788c6adf7178"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.6.101"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "6d51c1fc732875fe82d8544033aae2965dbdf24369a752ce2ec4cc392b6d1c74"
    sha256 cellar: :any_skip_relocation, sonoma: "ebcbbda276dd054aac23bce9613461e0d72b7de5962a249681f9600c1d604caa"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d58cb653ae6f5a0b5b4600de0f050f6377ea265364a36eefd7b7f0e9aba6028d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
