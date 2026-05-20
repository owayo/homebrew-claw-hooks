class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.5.103.tar.gz"
  sha256 "6def74931ac1b453fafd7770b6b9919fefbc3d459b9ddda926c7194e57ec977a"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.5.103"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "2537237e4932c524aa4e6713db0ef0f558c3ed84ed06d6e018d4466109850040"
    sha256 cellar: :any_skip_relocation, sonoma: "8298a585ab26308551108fd776dfe5148c9848f9a523182e0075f601c2b84907"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7b73841d8ee0d71d5f391099874d626d95c0415d3c564140c47c96a394f932ab"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
