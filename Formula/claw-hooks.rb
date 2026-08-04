class ClawHooks < Formula
  desc "Hooks CLI for Claude Code, Cursor, Windsurf, Antigravity, Codex, and Grok"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.8.100.tar.gz"
  sha256 "9da0476fa8e4207e0d7b5724391eaa7c53204f414d2549ed5269b1fcbef9d927"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.8.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "3797f57b56eaace62731b5f0557411647567264880d3f27d161ce9f9cb5ae12d"
    sha256 cellar: :any_skip_relocation, sonoma: "eee24a9e6f4615cb1e62fb05ec46a58444c9e0676c6a8687ab2362105f0733cc"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3f8e1498de1b63e505844338a124d1ee1610c851989227ad8591ef7c36bf5a97"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
