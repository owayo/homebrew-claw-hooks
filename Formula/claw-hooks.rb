class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.7.103.tar.gz"
  sha256 "35d5bccf4656823002a04e31d95018c4c5bf2571a76ed22318f46beb09f47eb1"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.7.103"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "a13a4f47052b3cb038273ba44301be0ab0218671081b7670585c2c325381f0a9"
    sha256 cellar: :any_skip_relocation, sonoma: "b6c375c57542fec94eec4bbb8e6bc1ff22c0c49363c918d9e10cf0be94c5161c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8fd900f692da57503276ee5caf32a2e37869cf8aff12af2ef982874c2de2287f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
