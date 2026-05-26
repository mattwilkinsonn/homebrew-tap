class JjHooks < Formula
  desc "Run pre-commit / lefthook / hk hooks against jj bookmark pushes"
  homepage "https://github.com/mattwilkinsonn/jj-hooks"
  license "Apache-2.0"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/mattwilkinsonn/jj-hooks/releases/download/v#{version}/jj-hooks-v#{version}-darwin-arm64.tar.gz"
      sha256 "5131a0199822279fff1576dc4ca7fdab4be8a88fbe23e55b38f000f155fdf621"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mattwilkinsonn/jj-hooks/releases/download/v#{version}/jj-hooks-v#{version}-linux-x64.tar.gz"
      sha256 "86ea423399c4cd368416852c24b5eb0c9ee4b8a0db7a64d7b8a011dff8e54750"
    end
    on_arm do
      url "https://github.com/mattwilkinsonn/jj-hooks/releases/download/v#{version}/jj-hooks-v#{version}-linux-arm64.tar.gz"
      sha256 "3dadbcea75ad501ffcf4360efc020d4971cfe05e722ee44cdfac464c5f09a38a"
    end
  end

  def install
    bin.install "jj-hooks"
    bin.install "jj-hp"
  end

  test do
    assert_match "jj-hooks #{version}", shell_output("#{bin}/jj-hooks --version")
    assert_match "jj-hp #{version}", shell_output("#{bin}/jj-hp --version")
  end
end
