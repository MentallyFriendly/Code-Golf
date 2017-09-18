# Go workspace first time setup

[Click here](https://golang.org/dl/) to select the binary distribution for your operating system and run the installation program. After you run the installation program, Go will be installed at the following locations:  


`Mac: /usr/local/go`  
`Windows: c:\go`  
`Linux: $HOME/go`  

Note: If you download the tar.gz file for Linux, unzip the file in your $HOME directory under a folder named go. This is the expected and default location. Make sure the $HOME/go/bin folder is in your path.

run `go version` to check installation  
Running the `Go` command from your terminal you will see a list of other commands available.  

Next, run `go env` from your terminal.  

You should notice is that the `$GOPATH` variable is empty. This needs fixing, but to fix it we need to understand what a Go workspace is.  

#### The Go Workspace

>A Go workspace is a physical location on disk where you will load and work with Go code. I recommend that you maintain a single workspace on your machine. It will be simpler and most editor plugins are easier to configure as well.

>Note: There are ways with most editors to create different configurations that could be used to point to different workspaces. So it is not impossible to have multiple workspaces, but I find it is better to maintain a single workspace.

>Your Go workspace can’t be the same location that Go was installed in. So for Window and Linux users, please stay away from the c:\go and $HOME/go folders respectively. For Mac users, you would really need to go out of your way to use /usr/local/go but stay away from this location as well.

>We need to create a new set of folders to represent the Go workspace. There is a special folder that must exist inside your Go workspace named `src` and is __very important__. All the code you load and work on must exist inside this src folder.

>The src folder represents the start of your Go workspace. Your `GOPATH` is an environment variable that points to your Go workspace and represents the physical location on disk where the src folder is located, but does not include the src folder.

#### Mac and Linux Users  



Create a folder for your ```Go workspace``` in your `$HOME` folder. All your imports will live here.  
E.g ```/go_workspace```, and then create three folders within:
```
/go_workspace/src
/go_workspace/pkg
/go_workspace/bin
```

Update the `.bash_profile` file or your shell profile if there is another one you use:  
```
cd $HOME
nano .bash_profile
```
At the top of the .bash_profile add these environmental variables:
```
export GOPATH="$HOME/go_workspace"
export PATH="$PATH:$GOPATH/bin"
```
Save the file and then source it:
```
source .bash_profile
```

#### Windows Users

Create folders named
```
/go_workspace\src
/go_workspace/pkg
/go_workspace/bin
```
in your `$HOME` folder.  

Go to your system settings and add the `GOPATH` variable and update your `PATH`.

```
GOPATH="c:\Users\<username>\go_workspace"
PATH="...;%GOPATH%\bin"
```

### Then close all terminal windows and open a new one.

Running `go env` you should now see your `go path` filled in and configured correctly.  

Create new projects within your `/go_workspace/src` folder.
