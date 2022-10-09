#!/usr/bin/env python3
import click
from dblib.querydb import querydb

# build a click group
@click.group()
def cli():
    """A simple CLI to query a SQL DB"""


# build a click command
@cli.command()
@click.option(
    "--query", default = "SELECT * FROM default.unemployment_analysis_csv LIMIT 5", 
    help="Type in the unemployment rate of countries during 1991-2021"
)
def cli_query(query):
    """Execute a SQL query"""
    result = querydb(query)
    click.echo(result)

@click.option("--year", default=2020, help="Type in the relevant data in that year")
def cli_query(year):
    """Execute a SQL query"""
    result = querydb(year)
    click.echo(result)


# run the CLI
if __name__ == "__main__":
    cli()