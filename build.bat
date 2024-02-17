@REM #!/bin/bash
set -eu

@REM # For use in the GitHub workflow process.
@REM # Run in the root of the repository to produce a dist/ directory.

@REM # Create directory structure
mkdir -p dist

@REM # Copy fonts and images
cp -a fonts images dist

@REM # Copy and minify CSS
mkdir -p dist/css
cp sigma.css dist/css
npm run minify

