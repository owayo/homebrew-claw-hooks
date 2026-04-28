class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.4.103.tar.gz"
  sha256 "4afab50bca8d4551e7afb4754474248e78d91649f052927618063e954006a086"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.4.103"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "47759a13c3bd212f82190a6a50913a48434dfaa06096b8cff361c57ef70e9180"
    sha256 cellar: :any_skip_relocation, sonoma: "ecf4ef3a5a063339e8f4bc14ce6708b53589e73b666dd1332a04d9beaf1c8ed4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "54c9b074801ef785a624b84e1f61f8c4335ae5c858f1e5d7951e7a2a9c167a4d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
