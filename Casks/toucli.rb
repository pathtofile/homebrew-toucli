cask "toucli" do
    version "1.0"
    sha256 "9f544ce9d9f3100054745377759303213744b5ed9e7940d956efed3724696868"
  
    url "https://github.com/pathtofile/toucli/releases/download/v#{version}/toucli.zip"
    name "toucli"
    desc "Use touchID and the Secure Enclave to encrypt data from the commandline"
    homepage "https://github.com/pathtofile/toucli"

    depends_on macos: ">= :big_sur"
    app "toucli.app"

    postflight do
      # system "ln -s /Applications/toucli.app/Contents/MacOS/toucli /opt/homebrew/bin/toucli"
      system "touch /opt/homebrew/bin/toucli"
    end

    uninstall_postflight do
      system "rm -f /opt/homebrew/bin/toucli || true"
    end

    # uninstall delete: "#{bin}/toucli"
end
