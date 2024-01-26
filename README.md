# decode-spam-headers-container
Just a quick container for https://github.com/mgeeky/decode-spam-headers.git

```
git clone https://github.com/D3lta/decode-spam-headers-container.git
cd decode-spam-headers-container
docker build -t dshc .
docker run -v $(pwd)/message.txt:/opt/message.txt -t dshc message.txt
```
