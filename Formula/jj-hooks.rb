class JjHooks < Formula
  desc "Run pre-commit / lefthook / hk hooks against jj bookmark pushes"
  homepage "https://github.com/mattwilkinsonn/jj-hooks"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mattwilkinsonn/jj-hooks/releases/download/v#{version}/jj-hooks-v#{version}-darwin-arm64.tar.gz"
      # SHA256 is updated by hand until the standalone release pipeline is re-pointed at this tap.
      sha256 "35705704e9e161807c95f7f33bfe186db2f1a957f5b580df0b111dc0c373c839"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mattwilkinsonn/jj-hooks/releases/download/v#{version}/jj-hooks-v#{version}-linux-x64.tar.gz"
      sha256 "3cbf71b4cad18f232d9b283af1ec8c3ab6c73f865717bfe824536daf006c6214"
    end
    on_arm do
      url "https://github.com/mattwilkinsonn/jj-hooks/releases/download/v#{version}/jj-hooks-v#{version}-linux-arm64.tar.gz"
      sha256 "75c1c45d6ec4f646399cc41514eae05b0c001aa6a3c5e9ec958cdb9cc5f8b092"
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
