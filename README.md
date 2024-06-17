# Mac Setup

## 1. Install Homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## 2. Clone Repo Locally

## 3. Open Terminal & Navigate to Cloned Repo

## 4. Run the '_install.sh_' script

```
./install.sh
```

## 5. Configure SSH Key(s)

1. got home directory and confirm there is an .ssh directory
    ```
    ls -a
    ```

2. if non exists then make one
    ```
    mkdir .ssh
    ```


3. Make Keys

    - Bitbucket
        - https://support.atlassian.com/bitbucket-cloud/docs/set-up-personal-ssh-keys-on-macos/
    - Github
        - TBD...

    - enter the .ssh directory and create the ssh key

        ```
        ssh-keygen -t ed25519 -b 4096 -C "YOUR_EMAIL@gmail.com" -f PREFIX_FOR_FILES
        ```

4. Update .ssh/.config with Host(s)

    ```
    Host bitbucket.org
    AddKeysToAgent yes
    IdentityFile ~/.ssh/PREFIX_FOR_FILES
    ```


5. Add SSH Key to SSH Agent

    ```
    ssh-add PREFIX_FOR_FILES
    ```

## 6 Configure NVM

1. Add the following code to your .zshrc file

    ```
    #####
    # NVM
    #####
    # Set the NVM_DIR environment variable to the location where nvm will store its data.
    # $HOME represents the current user's home directory.
    export NVM_DIR="$HOME/.nvm"

    # Check if the nvm.sh script exists at the specified location.
    # The -s flag tests if the file exists and has a non-zero size.
    # If the file exists, the && operator ensures the next command is executed.
    # \. is a shorthand for the 'source' command, which executes the contents of the script in the current shell.
    [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"

    # Check if the nvm bash completion script exists at the specified location.
    # Bash completion provides auto-completion features for the nvm command.
    # If the file exists, source it to enable nvm command auto-completion in the current shell.
    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
    ```

2. Source the new configuration (or completly exit and reopen terminal)

    ```
    source ~/.zshrc  # or ~/.bashrc or ~/.bash_profile
    ```


