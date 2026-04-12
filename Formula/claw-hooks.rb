class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.4.101.tar.gz"
  sha256 "2dee555479d7a191cdcc13552492b554aacde57b159beeee72e7efef0bb792eb"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.4.101"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "bda41f3ac9222a265795f85fb19e11739c255ca3d0927fc0f493d4efd99a304c"
    sha256 cellar: :any_skip_relocation, sonoma: "95b67f476752febd591fca184d405704b5004e32755395b19143f41c1bc58225"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f3597bdaf8cfe0a53b94bc350b475081f6a3319f034fb082c665c687a6ada7b5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
