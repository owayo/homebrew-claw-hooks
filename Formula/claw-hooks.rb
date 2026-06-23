class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.6.102.tar.gz"
  sha256 "5b6db0a5fbd0f7e85dae62f37a22e5d5c2196afa27e95c4a3358a29d3c77bcaf"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.6.102"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "fb0d25fa3b61a1b3507083d2baa8117790b94713035b3aa5a34b62d4b0d204e2"
    sha256 cellar: :any_skip_relocation, sonoma: "83125ca1061e5579486a0318557b198ff6f4b2ab7f24fc9e85cc45b4b86f95a0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "326e3701549180ea54ab40e788f8145472902faf626597762c953d28c136a5a4"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
