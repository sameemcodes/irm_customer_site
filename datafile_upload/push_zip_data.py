import pandas as pd
import zipfile

def read_zipped_csv(source_type, zip_path):
    zf = zipfile.ZipFile(zip_path)
    df = pd.read_csv(zf.open('SOD-05-AGR_1251.csv'))
    print(df.iloc[0,0])
