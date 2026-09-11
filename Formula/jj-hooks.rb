class JjHooks < Formula
  desc "Run pre-commit / lefthook / hk hooks against jj bookmark pushes"
  homepage "https://github.com/mattwilkinsonn/jj-hooks"
  version "0.3.12"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mattwilkinsonn/jj-hooks/releases/download/v#{version}/jj-hooks-v#{version}-darwin-arm64.tar.gz"
      # SHA256 is updated by hand until the standalone release pipeline is re-pointed at this tap.
      sha256 "a2d23fd182c95d882d656ec347c03e2c0c8dbb063954552dabe2148709e10ebf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mattwilkinsonn/jj-hooks/releases/download/v#{version}/jj-hooks-v#{version}-linux-x64.tar.gz"
      sha256 "94c787b1db387cc891427441b5b67de328db54475fe8ee1a0bdc4720d39a0a82"
    end
    on_arm do
      url "https://github.com/mattwilkinsonn/jj-hooks/releases/download/v#{version}/jj-hooks-v#{version}-linux-arm64.tar.gz"
      sha256 "d36c4ea6e2dc7032e0dce3c092ba417982d4ea9aae4b3d383ab1a3d6964693ab"
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
