# tracertLogger

### Description
Windows command script (tested on Windows7 and 10) that runs the tracert command-line utility and appends the timestamped result to a file.

### Usage
Easiest way to run this script will be to double click the file.
By default, this script will run tracert against the IP address "8.8.8.8" (google's dns) and print results to "tracertLoggerResults.txt".
Can also be ran like any other batchfile/command script (type "tracertLogger" in the terminal with the script in the current directory, call with another script, etc.)

Will also take up to two additional input parameters.
If one parameter is entered following the script call, it will write to that file (or create and write if the file doesn't exist).
If a second parameter is entered follow the script call, it will run tracert against that parameter (a website or IP address).
e.g. `tracertLogger newTracertResults.txt google.ca`

### To Do
Accept only IP addresses?
Add option flags instead of fixed order inputs?
Add in script inputs to make it more beginner friendly?
Rerun timer?
Trace to additional/alternating targets?

### License
MIT License

Copyright (c) 2017 Kevin Tan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.