# rawos
My attempt to learn how operating systems works. Feel free to fork this.

<!---
I have commented this out since this feature doesn't seem very useful right now.

I'll try to explain every possible detail. The "dirty" source with comments is located at the src_explained/ folder.
You can run ```make update``` to read all source files inside src_explained/ and create uncommented copies on the project folder.
That way you can develop inside the src_explained/ folder using big chunks of comments and create pretty versions of it later.

For instance, ```make update``` will remove all the lines starting with ```;;```:
- ```;; This comment will be removed```
- ```; This comment will be kept```
-->

The makefile contains some useful rules:
- ```make all``` builds the files.
- ```make clean``` wipes the generated files.
- ```make view``` shows an hex dump of the file (```lfhex``` is required).
- ```make run``` runs the generated files (```qemu``` is required).

Be aware that both ```view``` and ```run``` targets may rebuild the generated files.

#### Why
I've been wanting to learn how operating systems work.
I mainly use GNU/Linux both at work and home, but diving in to the source code seemed a bit pretentious.

Thus I'm following some tutorials I find on the Internet and commiting my work here for personal use mostly.


#### How

I'm following these tutorials:

- [**The little book about OS development**](https://littleosbook.github.io/) by [*Erik Helin*](https://github.com/helino) and [*Adam Renberg*](https://github.com/tgwizard)

- [**OS Development Tutorials**](https://www.youtube.com/playlist?list=PLxEVubjFScbApy_2zSOQo3UBEfSJQ-lhM) by [*Codepixl*](https://www.youtube.com/channel/UCce5fC7TvN4lkIi0-v3SMVQ)

Also, there's the **OSDev** [**Wiki**](http://wiki.osdev.org) and [**Forum**](http://forum.osdev.org/). I highly recommend taking a look at the Wiki. It contains more than 600 articles.
