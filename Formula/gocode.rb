class Gocode < Formula
  desc "Agentic coding assistant for your terminal, written in Go"
  homepage "https://github.com/umairge66/gocode"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.2/gocode-0.1.2-darwin-arm64.tar.gz"
      sha256 "c0853f79e375424142cb37a3073a3bb09da408b5862b7d48edf178e364f091b6"
    end
    on_intel do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.2/gocode-0.1.2-darwin-amd64.tar.gz"
      sha256 "a2c6d99e80073c123628ce523a3112c249d57891cb115df84175e999ea465b08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.2/gocode-0.1.2-linux-arm64.tar.gz"
      sha256 "c9d435e5bd531fa8962431a180c59cdf948d9ebceba37e87135f8b0fce247899"
    end
    on_intel do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.2/gocode-0.1.2-linux-amd64.tar.gz"
      sha256 "09c71f7b62b07bb373c649cbe663602a0682c88fdb402db57b07b67986bc554e"
    end
  end

  def install
    bin.install "gocode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gocode --version")
  end
end
