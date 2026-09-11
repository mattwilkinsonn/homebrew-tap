class JjGt < Formula
  desc "Bridge jj bookmark stacks and Graphite (gt) PR stacks"
  homepage "https://github.com/mattwilkinsonn/jj-gt"
  version "0.3.12"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mattwilkinsonn/jj-gt/releases/download/v#{version}/jj-gt-v#{version}-darwin-arm64.tar.gz"
      # SHA256 is updated by hand until the standalone release pipeline is re-pointed at this tap.
      sha256 "c07fb9f6c24ab8c7bc9594cbb40a763e4ed49a9101ff23ee710bff197ba372c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mattwilkinsonn/jj-gt/releases/download/v#{version}/jj-gt-v#{version}-linux-x64.tar.gz"
      sha256 "5e49df6c1968960a0d5795872b7ea99941406fe2e93ae61ca79d9278b0b3f6b6"
    end
    on_arm do
      url "https://github.com/mattwilkinsonn/jj-gt/releases/download/v#{version}/jj-gt-v#{version}-linux-arm64.tar.gz"
      sha256 "7e8400ff3a01af843d7ca05d8feabf378af6a487df23dcf5d584ef43dec994da"
    end
  end

  def install
    bin.install "jj-gt"
  end

  test do
    assert_match "jj-gt #{version}", shell_output("#{bin}/jj-gt --version")
  end
end
