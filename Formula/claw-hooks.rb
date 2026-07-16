class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.7.101.tar.gz"
  sha256 "d28b0e52788a5f4012236037d6aa2a90fe1e1091dd6bb86d216605226e9c0991"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.7.101"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "7bb2b64b4c53d6ac7e7c883f6741b600a5b4449407a61661e5d415281e6ac321"
    sha256 cellar: :any_skip_relocation, sonoma: "5f0841f96dbe0a5488639cd047b9441e0d48bbb24c3185d0833583dd53c7f1df"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "801f1b7916846e2a69921840fb6fa699204c70c6ecf67d7119daf0444c86e72b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
