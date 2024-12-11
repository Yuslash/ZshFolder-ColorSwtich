import subprocess

def source_zshrc():
    command = "source ~/.zshrc"

    subprocess.run(f'zsh -c "{command}"', shell=True, check=True)

if __name__ == "__main__":
    source_zshrc()
