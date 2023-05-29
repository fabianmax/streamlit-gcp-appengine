import streamlit as st
import pandas as pd


st.title("Test App")
st.markdown("This is a demo Streamlit app.")

data = pd.DataFrame({"a": [1, 2, 3], "b": [4, 5, 6]})

table = st.experimental_data_editor(data, use_container_width=True)
