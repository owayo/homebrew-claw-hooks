class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.3.105.tar.gz"
  sha256 "f0c88256a85ffd568e4612b0ce777166be647a4de4b920df2c66a005e2c591b9"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.3.105"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "0a4a2f9385b9b66807de330fea42fd7e3727dc0eb8b764dba3d92f014faf3d12"
    sha256 cellar: :any_skip_relocation, sonoma: "032210fae039928be27f85cda85e14d5fc1ec45221851598fee769f5bf4115ad"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4d135ac02637068607d4ad54d7ecf47821bcce1df11758effd311ccb9d3883d9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
