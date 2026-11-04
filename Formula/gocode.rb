class Gocode < Formula
  desc "Agentic coding assistant for your terminal, written in Go"
  homepage "https://github.com/umairge66/gocode"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.7/gocode-0.1.7-darwin-arm64.tar.gz"
      sha256 "0312a79a1f5953f52c09768e35cc507404f9ed286cd5d42eff07d0bda56000ab"
    end
    on_intel do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.7/gocode-0.1.7-darwin-amd64.tar.gz"
      sha256 "7175ad4e46da4b056182016166764efa3155571c83a2b3e1b800dcc7bc98c1c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.7/gocode-0.1.7-linux-arm64.tar.gz"
      sha256 "a505a4c3547e9fbd4011db9f7914d6f7f87e093831c3d5cb8f77a221d854d128"
    end
    on_intel do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.7/gocode-0.1.7-linux-amd64.tar.gz"
      sha256 "a20c3ffb14fb5e4038b78e5530e48a996df1142968924bd7771aee580c6e539d"
    end
  end

  def install
    bin.install "gocode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gocode --version")
  end
end
