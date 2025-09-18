from setuptools import setup, find_packages

with open("README.md", "r", encoding="utf-8") as f:
    long_description = f.read()

setup(
    name="erpnext_china_coa",
    version="0.0.1",
    description="Chart of Accounts for China for ERPNext",
    long_description=long_description,
    long_description_content_type="text/markdown",
    author="Gemini",
    packages=find_packages(),
    include_package_data=True,
    install_requires=["erpnext"],
)
