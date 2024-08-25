//https://docs.github.com/en/authentication
GitHub removed support for password authentication for Git operations. To push changes to your repository, you'll need to use either Personal Access Tokens (PATs) or SSH keys.

Here's how you can use a Personal Access Token:

1. **Generate a Personal Access Token**:
   - Go to [GitHub's Personal Access Tokens page](https://github.com/settings/tokens).
   - Click "Generate new token."
   - Give your token a descriptive name, select the scopes you need (e.g., `repo` for full control of private repositories), and click "Generate token."
   - Copy the token (you won’t be able to see it again).

2. **Update Your Git Configuration**:
   - When you push changes, use your token as the password. You can either use the command line and provide the token when prompted or update your Git configuration to cache the token.

   ```bash
   git config --global credential.helper store
   ```

   - Then, run:

   ```bash
   git push -u origin main
   ```

   - When prompted for a username, enter your GitHub username. For the password, paste the Personal Access Token.

If you prefer using SSH:

1. **Generate an SSH Key**:
   - Run `ssh-keygen -t ed25519 -C "your_email@example.com"` and follow the prompts.
   - Add the SSH key to your GitHub account by copying the key from `~/.ssh/id_ed25519.pub` and adding it in GitHub under Settings > SSH and GPG keys.

2. **Configure SSH for GitHub**:
   - Ensure you have the SSH key added to your SSH agent: 

     ```bash
     ssh-add ~/.ssh/id_ed25519
     ```

   - Update your Git repository to use SSH instead of HTTPS:

     ```bash
     git remote set-url origin git@github.com:atharvapatil1210/chatbot-his.git
     ```

   - Push your changes:

     ```bash
     git push -u origin main
     ```

Let me know if you need help with any of these steps!



To manage and store your Personal Access Token (PAT) securely on your Linux system, you can use the `git` credential helper to cache your credentials. Here's how you can do it:

1. **Store Your Personal Access Token in Git Configuration**:

   If you haven't yet configured Git to use a credential helper, you can set it up to cache your credentials. First, ensure that the credential helper is set up:

   ```bash
   git config --global credential.helper store
   ```

2. **Add Your PAT to Git Configuration**:

   Create or edit a file to store your GitHub PAT. This file will be used by the Git credential helper to authenticate your requests.

   ```bash
   echo "https://atharvapatil1210:<YOUR_PERSONAL_ACCESS_TOKEN>@github.com" > ~/.git-credentials
   ```

   Replace `<YOUR_PERSONAL_ACCESS_TOKEN>` with the actual token you generated from GitHub.

3. **Verify the Configuration**:

   Make sure the credentials are stored correctly by checking the contents of the `.git-credentials` file:

   ```bash
   cat ~/.git-credentials
   ```

   You should see a line that looks like this:

   ```
   https://atharvapatil1210:<YOUR_PERSONAL_ACCESS_TOKEN>@github.com
   ```

4. **Push Your Changes**:

   Now you should be able to push your changes to GitHub without needing to enter your PAT each time:

   ```bash
   git push -u origin main
   ```

This setup will store your credentials in plaintext, so make sure that your `.git-credentials` file is secure and not exposed to unauthorized users. For better security, consider using SSH for authentication if possible.
