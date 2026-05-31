class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.5.106.tar.gz"
  sha256 "68e316691fd6e3d6c18786365d7282a683db017b97f31e4021dda99289f89b33"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.5.106"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "f105a6020a783d8d2b27a430b7a43396322d43d6fe77f5692aa01df04c666274"
    sha256 cellar: :any_skip_relocation, sonoma: "fe5f1e91dbb167a7521746011cdd17271e6b856e93452f4b305a246ec0398d88"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "aaade92b13fc15bddae02bd640ec283b241259dc981f39324d9f30e0a2f4e031"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
