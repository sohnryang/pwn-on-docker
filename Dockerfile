FROM archlinux:latest

RUN pacman -Sy
RUN pacman -S --noconfirm base-devel python gdb llvm lldb pwndbg python-pwntools python-pip ipython openbsd-netcat git curl wget
RUN echo 'source /usr/share/pwndbg/gdbinit.py' >> ~/.gdbinit

CMD ["bash", "--login"]
