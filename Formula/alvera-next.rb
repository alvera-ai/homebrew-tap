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
  version "0.17.0-next.g97c2ef9"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g97c2ef9/alvera-0.17.0-next.g97c2ef9-darwin-arm64.tar.gz"
      sha256 "88521623dac987a0f2752fc25f5eb4588480d65b3fd6866dc5e4287de22dcba5"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g97c2ef9/alvera-0.17.0-next.g97c2ef9-darwin-x64.tar.gz"
      sha256 "1150c8059749c80d18edfd438f00a8454cb2536458f65c17b1a5f53ed70c2e66"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g97c2ef9/alvera-0.17.0-next.g97c2ef9-linux-x64.tar.gz"
      sha256 "862cfcb31f866b2a7b443c6429dbfb50f9346a30a134a1f49302342bb38a59a0"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g97c2ef9/alvera-0.17.0-next.g97c2ef9-linux-arm64.tar.gz"
      sha256 "00e7f0481eb63cafde39b10a4167eb77fc2237469bf016c8405c027d81a99bd6"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
