class Gocode < Formula
  desc "Agentic coding assistant for your terminal, written in Go"
  homepage "https://github.com/umairge66/gocode"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.3/gocode-0.1.3-darwin-arm64.tar.gz"
      sha256 "622a628cd1eb3a3791720ba88b6b7a93e13bcbe28cb60dd328b4ded0b2dc8fbd"
    end
    on_intel do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.3/gocode-0.1.3-darwin-amd64.tar.gz"
      sha256 "c4a8b1d93364c6104a85296f3b148597d03e256297d4c18bae5afdefc06533e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.3/gocode-0.1.3-linux-arm64.tar.gz"
      sha256 "b8d6cb525796b8a10acec3c16f5adafa86bad33de82dc4c55587f146d430af77"
    end
    on_intel do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.3/gocode-0.1.3-linux-amd64.tar.gz"
      sha256 "aeb67049fb2c816e001c17c6a89f5d8d49eead03c7e2b8b8f5c18f161f1ab171"
    end
  end

  def install
    bin.install "gocode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gocode --version")
  end
end
