{ cabal, binary, dataenc, extensibleExceptions, filepath, mmap, mtl
, zlib
}:

cabal.mkDerivation (self: {
  pname = "hashed-storage";
  version = "0.5.11";
  sha256 = "0s8mnayxlvwrrii2l63b372yi5g08br6gpbgz2256d8y128mwjvk";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    binary dataenc extensibleExceptions filepath mmap mtl zlib
  ];
  doCheck = false;
  meta = {
    description = "Hashed file storage support code";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
