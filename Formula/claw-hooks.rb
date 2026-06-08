class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.6.100.tar.gz"
  sha256 "a019f35b274177325d72fbe4f765cd2da1c056ad2e7a6003abc8490c6de4294e"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.6.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "0963e7fcaeed5cb998c4dbf7448d518f2eacbf564f6970921a561f0447e3b7e3"
    sha256 cellar: :any_skip_relocation, sonoma: "9f183a7696a5ede68a77e4e35bef1c71fd1ac8be97538fda91ccdf32121f794c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "85df5a3d100190e0ae4da9fb2563b77c99e1b88db6ca35a7034e0346adb94e6d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
