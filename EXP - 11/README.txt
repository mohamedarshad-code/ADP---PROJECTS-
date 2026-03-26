================================================================================
            LUMINA DIGITAL ASSETS | GITHUB COLLABORATION REFERENCE
================================================================================

1.  TASK        : To create a duplicate copy of a repository for independent work
    Command     : Fork (GitHub UI)
    Syntax      : Click 'Fork' on a target repository
    Explanation : This command creates a complete copy of another user's project 
                  under your own account for modification.

2.  TASK        : To clone a forked repository to a local machine
    Command     : git clone
    Syntax      : git clone https://github.com/yourusername/repo.git
    Explanation : This command downloads the cloud-hosted fork to your local terminal.

3.  TASK        : To propose changes to the original project
    Command     : Pull Request (GitHub UI)
    Syntax      : Click 'New Pull Request' on the forked repository
    Explanation : Proposes the modifications from your dev branch back into the 
                  original source repository for review and merging.

4.  TASK        : To keep the local fork updated with the original source
    Command     : git fetch & git merge
    Syntax      : git fetch upstream && git merge upstream/main
    Explanation : This command synchronizes your fork with the original 
                  'upstream' repository to prevent drift.

5.  TASK        : To identify and resolve line conflicts during merging
    Command     : Resolve Conflicts
    Syntax      : Open conflicting file, edit the '<<<< HEAD' markers, save, and commit
    Explanation : This manual operation occurs when two developers modify the 
                  same line of code and the system cannot automatically merge.

6.  TASK        : To push local commits back to the cloud-hosted fork
    Command     : git push
    Syntax      : git push origin branch_name
    Explanation : Dispatches your refined local changes to your personal 
                  GitHub-hosted repository.

7.  TASK        : To contribute as an official collaborator
    Command     : Collaboration Invitation
    Syntax      : Settings -> Collaborators -> Add people
    Explanation : Directly authorizes a user to push commits to the main repository
                  without the pull request overhead.

================================================================================
                END OF GITHUB COLLABORATION MASTER GUIDE
================================================================================
