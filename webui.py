try:
    import gradio as gr

    import sys, argparse, math, platform
    import numpy as np
    from tqdm import tqdm
    np.set_printoptions(linewidth=100)
    from typing import Optional

    from tinygrad.helpers import getenv, DEBUG
    from tinygrad.lazy import Device

except ModuleNotFoundError as moduleNotFound:
    print(f'Found that `gradio` is not installed')
