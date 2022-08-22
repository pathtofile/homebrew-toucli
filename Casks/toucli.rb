cask "toucli" do
    version :latest
    sha256 :no_check
  
    url "https://github.com/pathtofile/toucli/releases/latest/download/toucli.zip"
    name "toucli"
    desc "Use touchID and the Secure Enclave to encrypt data from the commandline"
    homepage "https://github.com/pathtofile/toucli"

    depends_on macos: ">= :big_sur"
    app "toucli.app"

    postflight do
      system "ln -s /Applications/toucli.app/Contents/MacOS/toucli /opt/homebrew/bin/toucli"
    end

    uninstall_postflight do
      system "rm -f /opt/homebrew/bin/toucli"
    end

  end
