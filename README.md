# Rockler Scraper API

[![Oxylabs promo code](https://user-images.githubusercontent.com/129506779/250792357-8289e25e-9c36-4dc0-a5e2-2706db797bb5.png)](https://oxylabs.go2cloud.org/aff_c?offer_id=7&aff_id=877&url_id=112)

Oxylabs' [Rockler Scraper](https://oxylabs.io/products/scraper-api/ecommerce/rockler?utm_source=github&utm_medium=repositories&utm_campaign=product) is a data gathering solution allowing you to extract real-time information from an Rockler website effortlessly. This brief guide showcases how Rockler Scraper works, along with code examples to help you better understand how to use it hassle-free.

### How it works

You can get Rockler results by providing your own URLs to our service. We can return the HTML for any page you like.

#### Python code example

The example below illustrates how you can get HTML of Rockler page.

```python
import requests
from pprint import pprint

# Structure payload.
payload = {
    'source': 'universal_ecommerce',
    'url': 'https://www.rockler.com/search?customfilters=filter.ss_morewaystoshop:flash$2520sale,free$2520gift,outlet$2520store,sale;filter.stock_status:in$2520stock'
}

# Get response.
response = requests.request(
    'POST',
    'https://realtime.oxylabs.io/v1/queries',
    auth=('user', 'pass1'),
    json=payload,
)

# Instead of response with job status and results url, this will return the
# JSON response with the result.
pprint(response.json())
```
Find code examples for other programming languages [**here**](https://github.com/oxylabs/rockler-scraper/tree/main/code%20examples)

#### Output Example
```json
{
  "results": [
    {
      "content": "<!DOCTYPE html>\n<html lang=\"en\" dir=\"ltr\" xmlns=\"http://www.w3.org/1999/xhtml\">\n\n<head><script>windo ... </html>",
      "created_at": "2024-02-20 12:43:13",
      "updated_at": "2024-02-20 12:43:15",
      "page": 1,
      "url": "https://www.rockler.com/search?customfilters=filter.ss_morewaystoshop:flash$2520sale,free$2520gift,outlet$2520store,sale;filter.stock_status:in$2520stock",
      "job_id": "7165687337005891585",
      "status_code": 200
    }
  ]
}
```
With our Rockler Scraper, you can seamlessly gather public data from any Rockler product page. Retrieve necessary woodworking tool information, such as current pricing, customer reviews, or detailed product descriptions for your market analysis. Stay ahead in the game with updated information about woodworking tools. If you have queries or need help, feel free to reach our support team via live chat or send us an email at hello@oxylabs.io.