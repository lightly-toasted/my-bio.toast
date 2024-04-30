# my-bio.toast
This is where you can design your [bio.toast](https://github.com/lightly-toasted/bio.toast) bio.
Have fun customizing it to your liking!

## Getting Started
1. [Fork](https://github.com/lightly-toasted/bio.toast/fork) this, and set the repository name to `my-bio.toast`.
2. Edit the files to customize your bio.
3. Commit changes to your GitHub repository and visit your bio.

## Why my customizations does not apply?
- Your repository name is not exactly `my-bio.toast`. All letters are case-sensitive and lowercase.
- Try waiting up to a hour.
- [Open an issue](https://github.com/lightly-toasted/bio.toast/issues/new) for help.

## Configure bio.toast.json
- `name`: Your name, leave it empty if you want to use your GitHub name.
- `description`: About yourself, leave it empty if you want to use your GitHub profile descriptions.
- `github`
    - `username`: Your GitHub username, leave it empty if you want to display your account.
- `discord`: This uses [Lanyard](https://github.com/Phineas/lanyard), join their [Discord server](https://discord.gg/lanyard) to use this.
    - `id`: Your [Discord user ID](https://support.discord.com/hc/en-us/articles/206346498-Where-can-I-find-my-User-Server-Message-ID). 
    - `lanyard-api-base-url`: Base URL of Lanyard API. Leave it empty to use default (`https://api.lanyard.rest/v1`)
    - `statuses`
        - `online`: Text to display when you are online. Leave it empty to use default (Online)
        - `offline`: Text to display when you are offline. Leave it empty to use default (Offline)
        - `idle`: Text to display when you are idle. Leave it to empty to use default (Idle)
        - `dnd`: Text to display when you are DND. Leave it to empty to use default (Do Not Disturb)