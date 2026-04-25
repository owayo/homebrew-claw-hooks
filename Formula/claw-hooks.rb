class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.4.102.tar.gz"
  sha256 "457e06814c9a00d42f2a37b66b18fd18ab3b8ef8dbced64099c51958f561d901"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.4.102"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ba37d8e0485715f40e2a74a8b3588a762a1d34c759e6e18c5375aaaa53a3b107"
    sha256 cellar: :any_skip_relocation, sonoma: "1f6cd8ddd02f13539fae0290c48aab39163f1852fd556751306925eb85ad6a12"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7e864bed38ef9a74c55b08cb34beeab42f4e8f1f7e5ece0aaf05d0d8eb21f926"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
