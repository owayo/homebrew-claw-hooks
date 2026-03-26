class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.3.107.tar.gz"
  sha256 "fb948e3c9703fbbf0d7e36e2ee6f59289d24aa11c5babdebf8c333d658990a02"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.3.107"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "9f8865ee7d01fdb528fa2b8e10c2ddb208ef104adc6d611c789a71691b143c7d"
    sha256 cellar: :any_skip_relocation, sonoma: "96c968fd305275d7af78be09585e5092345e7e481af32b8ef5fdf54423029826"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2e7d9fd75e68343f7107af91c576b91498ddb81953d55c3f8f482bca5cee4d54"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
