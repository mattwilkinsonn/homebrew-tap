class JjHooks < Formula
  desc "Run pre-commit / lefthook / hk hooks against jj bookmark pushes"
  homepage "https://github.com/mattwilkinsonn/jj-hooks"
  license "Apache-2.0"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/mattwilkinsonn/jj-hooks/releases/download/v#{version}/jj-hooks-v#{version}-darwin-arm64.tar.gz"
      sha256 "338842490348d7fedc99432d2c022dc31fbe4c47ec5786c1851204c7147a2984"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mattwilkinsonn/jj-hooks/releases/download/v#{version}/jj-hooks-v#{version}-linux-x64.tar.gz"
      sha256 "16fb86fd887f84d71d219e7599deaaae1878329aba38b30554344cb108c8a5cf"
    end
    on_arm do
      url "https://github.com/mattwilkinsonn/jj-hooks/releases/download/v#{version}/jj-hooks-v#{version}-linux-arm64.tar.gz"
      sha256 "f7574da9460caef9a1df45d5cf9617f6812723bbf61ff676372a12fa52aeadca"
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
