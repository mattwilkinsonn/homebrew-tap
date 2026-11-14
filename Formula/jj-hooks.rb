class JjHooks < Formula
  desc "Run pre-commit / lefthook / hk hooks against jj bookmark pushes"
  homepage "https://github.com/mattwilkinsonn/jj-hooks"
  version "0.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mattwilkinsonn/jj-hooks/releases/download/v#{version}/jj-hooks-v#{version}-darwin-arm64.tar.gz"
      # SHA256 is updated by hand until the standalone release pipeline is re-pointed at this tap.
      sha256 "02b14a5d08631644521a26c275f8498e717c254943e2d11dba5648c23155b90c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mattwilkinsonn/jj-hooks/releases/download/v#{version}/jj-hooks-v#{version}-linux-x64.tar.gz"
      sha256 "6fe1aee3e38f9a3aa6b23d21c19acd7f880273d8909538766d77eecdb5d03e81"
    end
    on_arm do
      url "https://github.com/mattwilkinsonn/jj-hooks/releases/download/v#{version}/jj-hooks-v#{version}-linux-arm64.tar.gz"
      sha256 "5fa79bc5243f6efa5494e575ac5246bd45034fbc39f0261b8bbb084e687bb94f"
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
