### How does tracking and adding changes make developers' lives easier?

Tracking and adding changes makes it much easier to work without fear of overwriting previous work, or introducing bugs into previously clean code.

### What is a commit?

A commit is essentially saving changes that have been made to whatever file or directory you're working on.

### What are the best practices for commit messages?

Best practices include being concise yet descriptive and meaningful, using the imperative in order to be consistent with verb forms. Using the imperative will inform anyone reading the messages what the changes will do, not the work that you've done, which is easier to understand.

### What does the HEAD^ argument mean?

While HEAD refers to the latest commit in the current branch, HEAD^ means the commit prior to that one.

### What are the 3 stages of a git change and how do you move a file from one stage to the other?

The three stages of a git change are modification, staging, and commit. You start by making modifications to a file, but these modifications won't be saved until they're committed. You can move a modification to the staging area by using git add, meaning that it's ready to be committed. Before then, the changes cannot be committed. Once committed, they are saved and ready to be pushed and merged to the master branch in the GitHub repository.

### Write a handy cheatsheet of the commands you need to commit your changes?

git checkout -b [branch_name] - create new branch
git add [file_name] - add changes to staging
git commit -m "commit message" - commit changes with commit message

### What is a pull request and how do you create and merge one?

A pull request is used from GitHub to ask for a change to be added to an existing project. They are created in a GitHub repository by clicking the pull request button. Once the desired committed changed being pushed by a local work station is selected, you can use the merge button to merge the branch with the master. Alternatively, you can do it manually by clicking the pull request button on the right-hand side of the page, then clicking the pull request button on the next page. Once there, you can merge the branch with committed changes with the master branch.

### Why are pull requests preferred when working with teams?

They are preferred because it keeps one member of the team from inadvertently creating problems with new changes to the code without other members being aware, and presents more gating for preventing user errors.