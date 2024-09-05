# Mac Setup

## 1. Install Homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

export PATH="/opt/homebrew/bin:$PATH"
```

## 2. Clone Repo Locally

## 3. Open Terminal & Navigate to Cloned Repo

## 4. Run the '_install.sh_' script

```
./install.sh
```

## 5. Configure SSH Key(s)

['Managing Multiple Keys']('https://www.youtube.com/watch?v=pE3EuiyShoM')

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


5. Configure Agent (add section to .zshrc file)

   ```
    #####
    # Start SSH agent
    #####
    if [ -z "$SSH_AUTH_SOCK" ] ; then
        # Check if SSH_AUTH_SOCK is not set (indicating no SSH agent is running)
        eval "$(ssh-agent -s)"  # Start the SSH agent and set the environment variable
        ssh-add ~/.ssh/reed_meratas_bitbucket  # Add the specific SSH key to the agent
    fi

    # Ensure the key is added every time a new shell starts
    if [ -n "$SSH_AUTH_SOCK" ] && ! ssh-add -L | grep -q "$(cat ~/.ssh/reed_meratas_bitbucket.pub)"; then
        # Check if SSH_AUTH_SOCK is set (indicating an SSH agent is running)
        # and if the specific SSH key is not already loaded
        ssh-add ~/.ssh/reed_meratas_bitbucket  # Add the specific SSH key to the agent
    fi
   ```


## 6. Configure NVM

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

## 7. Update git Author

    ```
    git config --global user.name "New Author Name"
    git config --global user.email "<email@address.example>"
    ```

## 8. Manage Postgres

1. Start Postgres
    - `brew services start postgresql@14`

      - starts the PostgreSQL service as a background service that will automatically start every time you boot up your machine. It essentially daemonizes the process.

    - `brew services run postgresql@14`
      - starts the PostgreSQL service in the foreground, meaning the service will only run as long as your terminal session is active. Once you close the terminal or stop the service, it will not restart automatically when you reboot your machine.

2. Confirm psql

    ```
    psql postgres
    ...
    postgres=# \l

    ** should see at least a postgres table **

    ```