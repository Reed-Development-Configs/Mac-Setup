# Mac Setup

1. Install Homebrew

    ```
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

2. Clone This Repo Locally

3. Open Terminal & Navigate to Cloned Repo

4. Run the script

    ```
    ./install.sh
    ```

5. Configure SSH Key(s)

- got home directory and confirm there is a .ssh directory
    ```
    ls -a
    ```

- if non exists then make one
    ```
    mkdir .ssh
    ```


5.1 - Bitbucket

- https://support.atlassian.com/bitbucket-cloud/docs/set-up-personal-ssh-keys-on-macos/

- enter the .ssh directory and create the ssh key

    ```
    ssh-keygen -t ed25519 -b 4096 -C "YOUR_EMAIL@gmail.com" -f PREFIX_FOR_FILES
    ```

- update .ssh/.config with Host

    ```
    Host bitbucket.org
    AddKeysToAgent yes
    IdentityFile ~/.ssh/reed_meratas_bitbucket
    ```



5.2 - Github

TBD...

5.3 - Add SSH Key to SSH Agent

```
ssh-add PREFIX_FOR_FILES
```

