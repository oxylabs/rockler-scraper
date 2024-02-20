curl --user user:pass \
'https://realtime.oxylabs.io/v1/queries' \
-H "Content-Type: application/json" \
-d '{"source": "universal_ecommerce", "url": "https://www.rockler.com/search?customfilters=filter.ss_morewaystoshop:flash$2520sale,free$2520gift,outlet$2520store,sale;filter.stock_status:in$2520stock"}'