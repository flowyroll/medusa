#!/usr/bin/env python

import pandas as pd
import os
import csv
import click
import numpy as np
import math
import seaborn as sns
import matplotlib.pyplot as plt
import tikzplotlib

def get_name(column_name):
    return column_name.split("_")[0]

# READ FOR merge.csv
    # df = pd.read_csv(path, skiprows=1, error_bad_lines=False, header=None).transpose()
    #
    # # Drop multiple entries (merge false entries)
    # df.columns = df.iloc[0]
    # df = df.drop(df.index[0])

def read_from_csv(path):
    data = {}

    with open(path) as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')
        line_count = 0

        for row in csv_reader:
            name = get_name(row[0])
            if name == 'new':
                continue

            values = [int(x) for x in row[1:] if x != '']

            if name in data:
                data[name].append(pd.Series(values))
            else:
                data[name] = pd.Series(values)

    df = pd.DataFrame.from_dict(data)
    return df


@click.command()
@click.argument('path', type=click.Path(exists=True))
@click.argument('output', type=click.Path(), required=False)
def main(path, output):
    # Read with custom CSV parser
    df = read_from_csv(path)

    # remove outliers
    df = df.mask(df.sub(df.mean()).div(df.std()).abs().gt(2))

    # Plot
    ax = None
    for column in df:
        ax = sns.distplot(df[column].dropna(), ax=ax, label=get_name(column), kde=False,
                          hist_kws={'alpha': 0.8, 'linewidth': 0})

    # Plot Settings
    plt.legend(ncol=2)
    plt.ylabel('')
    plt.xlabel('')
    plt.grid(False)

    if output is None:
        plt.show()
    else:
        tikzplotlib.save(
        output,
        figureheight = '\\figureheight',
        figurewidth = '\\figurewidth'
    )

if __name__ == "__main__":
    main()
