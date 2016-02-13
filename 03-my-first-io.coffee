fs=require 'fs'

buffer = fs.readFileSync process.argv[2]
data = buffer.toString()
console.log data.split('\n').length - 1
