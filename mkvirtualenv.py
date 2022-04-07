"""
This is going to recieve
mkvirtualenv.py bin_python_path workon_folder virtual_env_name
"""

import sys, os

if __name__ == "__main__":
    print(f"creating {sys.argv[2]} ...")
    os.system(f"{sys.argv[1]} -m venv {sys.argv[2]}/{sys.argv[3]}")