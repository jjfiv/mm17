# Git basics

## Configuration

You'll want to set up your editor (sometimes git asks you to write things to help it understand what you mean). You'll also want to name yourself and provide an email. The email is how services like github link your commits to your accounts.

```bash
git config --global core.editor nano # If you hate VI
git config --global user.name "Your Name"
git config --global user.email "you@server.email"
```

## Telling git about files

When you change or add a file to a directory that git knows about, you need to tell git that you meant to change it. You do this by adding the file.

```bash
git add changed.txt # include changed.txt
```

## Not sure what to do next?

Your best friend is almost always to run the ``git status`` command. If you can make your way through the output, it usually diagnoses your problem, especially if you've done something simple or common.

```bash
git status
```

## Commit: you must have a message

If you don't specify a message with `-m` then you will be dropped into your editor.

```bash
git commit -m "I achieved X with the following changes"
```

