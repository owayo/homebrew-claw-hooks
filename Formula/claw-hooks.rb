class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.4.100.tar.gz"
  sha256 "d8e6278f83c5faf996f3d3cfe423d68324659b3ea833a09c60691109f692ea11"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.4.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "9dc2df9fd17e3d664e5cfde0299477398c2f302f5a4173a75a41c46bcfe4cdf9"
    sha256 cellar: :any_skip_relocation, sonoma: "8c412387b1d74609f4c33bf614f2a74a82411cd3d1890b9ec282ce6c964373d7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3e3d0a1b1237213efcf2939d1129f11f6ccee0d73dbe23ed3e1fd303b85ffeb0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
