from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

pytheta_extension = Extension(
    name="pytheta",
    sources=["pytheta.pyx"],
    libraries=["theta_launcher"]
)
setup(
    name="pytheta",
    ext_modules=cythonize([pytheta_extension])
)