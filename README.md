# racer

A Rack-compliant ruby web server. It's written in C cuz its fast.

![sick ride](http://i.imgur.com/HnPbK.jpg)

> *racer is almost as fast as this car*

## Benchmark

The following Rack app was used benchmark WEBrick, Unicorn, Thin and Racer:

```ruby
run ->env { [200, { "Content-Type" => "text/html" }, ["hello world"]] }
```

Tests were carried out on a 64 bit Linux VM running on an Intel Core i7 980X.

ApacheBench was used to run the benchmarks with the following options:

    ab -n 10000 -c <...> http://127.0.0.1:3000/

Here are the results:

![science](http://i.imgur.com/75GB8.png)

