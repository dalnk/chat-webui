try:
    import gradio as gr
    import tinygrad

except ModuleNotFoundError as moduleNotFound:
    print(f'Found that `gradio` is not installed, try installing it first')