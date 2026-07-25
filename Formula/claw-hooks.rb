class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.7.102.tar.gz"
  sha256 "aae4769f3a2555f8ee34c0303150dfab85844a3a5383f3f76212f23cdb9655ab"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.7.102"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ceebfe4e5e88fc5a74a653166bfb836855198da2103f36101cb1afb91c7059c1"
    sha256 cellar: :any_skip_relocation, sonoma: "932bdbfa058d2d43b77ed04609cc6b6074f8b4637cf42ae5dfb0df09343978e2"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "dd23c19b7720302e46a28992fdfa61115fa2329add9d1ed19885af9b12b96354"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
