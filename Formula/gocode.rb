class Gocode < Formula
  desc "Agentic coding assistant for your terminal, written in Go"
  homepage "https://github.com/umairge66/gocode"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.4/gocode-0.1.4-darwin-arm64.tar.gz"
      sha256 "8125f36b65fa07545e565ebdf736ed2ce6d12321af36a02773cd54f420a7ba7f"
    end
    on_intel do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.4/gocode-0.1.4-darwin-amd64.tar.gz"
      sha256 "0c40e02907c4b9d260fe92af03fee94c3d189c39a78439bb28ce291048f034b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.4/gocode-0.1.4-linux-arm64.tar.gz"
      sha256 "83b493f916c861f1af9f822738a540f4fe044e154e02e19c2039a257444d6dc2"
    end
    on_intel do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.4/gocode-0.1.4-linux-amd64.tar.gz"
      sha256 "663798c1212da983fa23138227bd5553d3d20a3f8c01d0bb500411e39c4b8384"
    end
  end

  def install
    bin.install "gocode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gocode --version")
  end
end
