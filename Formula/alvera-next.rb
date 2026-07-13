# Prerelease channel for the alvera CLI. keg_only so it installs
# alongside the stable alvera formula without clobbering it; point the
# alvera command at this build on demand with
#   brew link --overwrite --force alvera-next
# and revert with
#   brew unlink alvera-next
# Updated by release-cli.yml on every prerelease (next dispatch or rc tag).
class AlveraNext < Formula
  desc "Alvera platform CLI (prerelease channel) — point alvera at unstable on demand"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.12.1-next.g1acd0b5"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g1acd0b5/alvera-0.12.1-next.g1acd0b5-darwin-arm64.tar.gz"
      sha256 "3961ad525700ba6a8be128adf52f1ede3d8aa155ebb96c992213bc540ddb23af"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g1acd0b5/alvera-0.12.1-next.g1acd0b5-darwin-x64.tar.gz"
      sha256 "7e0833313aed33ebe963ea36b145ebe1712df3f5d38c8468dccb42da512e331c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g1acd0b5/alvera-0.12.1-next.g1acd0b5-linux-x64.tar.gz"
      sha256 "8a2665ca946236e144307eaa6894ef00492ce342d43fcee0b34d38416dce64fe"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g1acd0b5/alvera-0.12.1-next.g1acd0b5-linux-arm64.tar.gz"
      sha256 "ec2b5a0e833956d7b519514a497120250d951a5abe1811be9d979bd5494048b1"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
