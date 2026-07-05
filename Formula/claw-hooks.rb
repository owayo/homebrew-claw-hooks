class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.7.100.tar.gz"
  sha256 "2be0efb2781319d31c320960e0499cf1a68c5645ebc2096763a195b916a7b59e"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.7.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "659d0cadf709fcac3757f875440606cd8ec4a1d16d16d8bea01b76195f30214e"
    sha256 cellar: :any_skip_relocation, sonoma: "373235d5146607bfced01036c735a4ef5ca2699210f8e04b7df1d860358cf4a0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "053591d69344b017183b7be09de8fc9e44b0757a4bacc03ebb0f331081aa5626"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
