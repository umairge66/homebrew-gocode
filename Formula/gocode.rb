class Gocode < Formula
  desc "Agentic coding assistant for your terminal, written in Go"
  homepage "https://github.com/umairge66/gocode"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.6/gocode-0.1.6-darwin-arm64.tar.gz"
      sha256 "144bf47e884a1ecfcd325c3a3cb5e6c0e801ae99260aad6e7d623378ef7623a9"
    end
    on_intel do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.6/gocode-0.1.6-darwin-amd64.tar.gz"
      sha256 "de27f017b20b7bcc7be14f8cddaccfb61b31744c877b0b167d943f31946817e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.6/gocode-0.1.6-linux-arm64.tar.gz"
      sha256 "744725956dc9739a17256299d8860fc03d1789c48eee9c9fe68b29899235a010"
    end
    on_intel do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.6/gocode-0.1.6-linux-amd64.tar.gz"
      sha256 "faa4d9967967916c88b29b9fad72225055acf35537b2fd536670eda5f2f94b11"
    end
  end

  def install
    bin.install "gocode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gocode --version")
  end
end
