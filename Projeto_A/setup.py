from setuptools import setup,find_packages,find_namespace_packages

with open("README.MD", "r") as f:
    page_description = f.read()

with open("requirements.txt", "r") as f:
    requirements = f.read().splitlines()

setup(
    name="cryp_to",
    version="0.0.1",
    author="Sergio Castro",
    author_email="sergiomcastro94@gmail.com",
    description="encrypter",
    long_description=page_description,
    long_description_content_type="text/markdown",
    url="",
    packages=find_packages(),
    install_requires=requirements,
    python_requires='>=3.8',  
)