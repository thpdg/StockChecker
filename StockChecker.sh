#!/bin/bash

export TERM=${TERM:-dumb}

clear

echo "Product Stock Checker and Product Finder"

# Calculate todays date and create a folder with the date as the title
DIR=$(date +%Y-%j-%H-%M-%S)
mkdir Output 2> nul
mkdir Output/$DIR

echo $DIR

# Switch to new dated folder
cd Output/$DIR

# The following are tasks for each individual retailer and product. Commented out sections are retailers that continually changed format to block bots or announced there would be no stock.

# Bestbuy PS5 Console
`curl 'https://www.bestbuy.com/site/sony-playstation-5-console/6426149.p?skuId=6426149' \
  -H 'authority: www.bestbuy.com' \
  -H 'pragma: no-cache' \
  -H 'cache-control: no-cache' \
  -H 'sec-ch-ua: "Chromium";v="86", "\"Not\\A;Brand";v="99", "Google Chrome";v="86"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-user: ?1' \
  -H 'sec-fetch-dest: document' \
  -H 'referer: https://www.bestbuy.com/site/sony-playstation-5-digital-edition-console/6430161.p?skuId=6430161' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cookie: tfs_upg=true; tfs_upg=true; UID=9776ccd2-80ae-4904-be60-4a94c04be105; oid=1723412917; optimizelyEndUserId=oeu1590947307610r0.9216782938138322; vt=f1458c3f-a366-11ea-8e9b-12819f37f54d; s_ecid=MCMID%7C80901005036657981333414591764691259649; _cs_c=1; ui=1590947385788; G_ENABLED_IDPS=google; pt=41462534; DYN_USER_CONFIRM=a73f276c7dac31933b77c64a9041fe1b; DYN_USER_ID=ATG13432619882; ut=753850f4-eb67-11e2-a88a-00505692405b; CTT=dd804c23db9b8f5b53036206ce8bd3a6; partner=P10T12R109%26BODY%262020-10-14+15%3A07%3A40.326; pst2=484|N; locStoreId=484; campaign_date=1602706069638; campaign=P10T12R109,BODY; aamoptsegs=aam%3D9369139; aam_uuid=87480637531110284392756628720280647715; 52245=; _gcl_au=1.1.544250689.1602706072; _cs_ex=1602104015; _abck=A46848818D2F93CC83021C531022316D~0~YAAQPw3orBFZaa11AQAAc4AZuASYjofVfTH7bazfSnv4WS+kRYLn4OvPt5B+7w9i43NmCryaSquNTczpGmPl1oI7vr13eH+1Kht6xEJHSuHRjwRDRMpQ1uvBRU7u6TlgnGOSLx20cVs0yczO1XsSedwFyJMH7dLh9iReA4IqL7wV4MoUu5qACEUFbJ8KyhcVQo04P4hrUqPLZ05hygOoX4OW4ROTDnikSo2ne5V1ohCfaa33wW/Mszpxsu863GIl2NNoxDgGjv+eanOSmiQZ9Pbkfhbd9r9xdTPXPJKCioOnr5FKxv+YKdHgdzwtDB459LpmgmDa6Rs=~-1~-1~-1; locDestZip=06095; at=eyJhY2Nlc3NUb2tlbiI6IllXTXRkMnBvekNRNUVldWppdzU5M05OYjd6aGdTTUo4Z3NoRTI1aktvVWJ0LWtaZTNVNXBBQUFBQUFBQUFBQSIsInRpbWVUb0xpdmUiOjE4MDAsImlzc3VlZFRpbWVzdGFtcCI6MTYwNTExMTQ4MDAxMywiYXNzZXJ0aW9uIjoidTp3RlN3LW9JZmY1by1TOWhvUGpqeUVIZVk2YmUxVGlwZTJzeGdXdXFsZ2NrIiwicHJpbmNpcGFsIjoidTp3RlN3LW9JZmY1by1TOWhvUGpqeUVIZVk2YmUxVGlwZTJzeGdXdXFsZ2NrIiwicHJpbmNpcGFsSWRlbnRpZmllciI6Ijc1Mzg1MGY0LWViNjctMTFlMi1hODhhLTAwNTA1NjkyNDA1YiIsImNvbnN1bWFibGUiOmZhbHNlLCJ2ZXJzaW9uIjoiMS4wIn0.oejNQeGeUaaPF23EOkDsaG1Uhn-Gm3n_lvlkphix9IQ9PSrCsLkw1K4s_PKlAtQ6-lKoZtYAAFUq4XFkWAf5Ow; SID=cc36598d-ee04-41a4-95a2-1b9735ce30ba; physical_dma=521; customerZipCode=02901|N; bm_sz=E7F3548445B8B925A107B284C6A5637E~YAAQxPzDF3tyIgR2AQAAvTHpBgkxG6eeZme9dRBuzGVNwPXysjplayUKZ5SwNdew2+Cz7u+LXJ76GqBxRNbW2OC+zg4QGdD5Y3T5JoKfbv2/BvZCudVB+Z1VYI8FI4xoS8T7vYVFKkuPWeruB1pY/Tq0HZdGASIU/eHkVdXXVh/ddrvRR2wDpfYYsUWrgXMX; bby_rdp=l; rxVisitor=1606433715599QPAB3LD1MGTDMIL96ABO620JG4VNTOAC; COM_TEST_FIX=2020-11-26T23:35:16.116Z; basketTimestamp=1606402288309; tfs_upg=true; dtCookie=v_4_srv_2_sn_ITF74V43SAHON31GEUMNQATOA256FKUV_app-3A1b02c17e3de73d2a_1_ol_0_perc_100000_mul_1; AMCVS_F6301253512D2BDB0A490D45%40AdobeOrg=1; AMCV_F6301253512D2BDB0A490D45%40AdobeOrg=1585540135%7CMCMID%7C80901005036657981333414591764691259649%7CMCAAMLH-1607038524%7C9%7CMCAAMB-1607038524%7CRKhpRz8krg2tLO6pguXWp5olkAcUniQYPHaMWWgdJ3xzPWQmdj0y%7CMCOPTOUT-1606440924s%7CNONE%7CMCAID%7CNONE%7CMCCIDH%7C-1435408033%7CvVersion%7C4.4.0; _cs_mk=0.5846612419725017_1606433724607; s_cc=true; lastSearchTerm=ps5%20console; listFacets=undefined; CTE22=T; CRTOABE=1; s_sq=%5B%5BB%5D%5D; bby_cbc_lb=p-browse-e; ltc=10150; bby_prc_lb=p-prc-e; dtSa=-; rxvt=1606437683943|1606433715601; dtPC=2$235881548_33h-vGFCGPWGUMPWWHLDCAUJCBPSMGHUFTGKN-0e12; sc-location-v2=%7B%22meta%22%3A%7B%22CreatedAt%22%3A%222020-05-31T17%3A48%3A33.382Z%22%2C%22ModifiedAt%22%3A%222020-11-27T00%3A11%3A24.185Z%22%2C%22ExpiresAt%22%3A%222021-11-27T00%3A11%3A24.185Z%22%7D%2C%22value%22%3A%22%7B%5C%22physical%5C%22%3A%7B%5C%22zipCode%5C%22%3A%5C%2206095%5C%22%2C%5C%22source%5C%22%3A%5C%22C%5C%22%2C%5C%22captureTime%5C%22%3A%5C%222020-11-27T00%3A11%3A23.869Z%5C%22%7D%2C%5C%22store%5C%22%3A%7B%5C%22zipCode%5C%22%3A%5C%2206042%5C%22%2C%5C%22storeId%5C%22%3A%5C%22484%5C%22%2C%5C%22storeHydratedCaptureTime%5C%22%3A%5C%222020-11-27T00%3A11%3A24.185Z%5C%22%2C%5C%22userToken%5C%22%3A%5C%22753850f4-eb67-11e2-a88a-00505692405b%5C%22%7D%2C%5C%22destination%5C%22%3A%7B%5C%22zipCode%5C%22%3A%5C%2206095%5C%22%7D%7D%22%7D; c2=Video%20Games%3A%20PlayStation%205%3A%20PS5%20Consoles%3A%20pdp; dtLatC=3' \
  --compressed -s > BestBuyPS5Console.htm`

# Parse product page with perl script. PERL returns 2 files, one is human readable
perl ../../StockChecker.pl BestBuyPS5Console.htm

# Best Buy PS4 (Generally in stock; For QA Testing)
# `curl 'https://www.bestbuy.com/site/the-last-of-us-part-ii-standard-edition-playstation-4/6255399.p?skuId=6255399' \
#   -H 'authority: www.bestbuy.com' \
#   -H 'pragma: no-cache' \
#   -H 'cache-control: no-cache' \
#   -H 'sec-ch-ua: "Chromium";v="86", "\"Not\\A;Brand";v="99", "Google Chrome";v="86"' \
#   -H 'sec-ch-ua-mobile: ?0' \
#   -H 'upgrade-insecure-requests: 1' \
#   -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36' \
#   -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
#   -H 'sec-fetch-site: same-origin' \
#   -H 'sec-fetch-mode: navigate' \
#   -H 'sec-fetch-user: ?1' \
#   -H 'sec-fetch-dest: document' \
#   -H 'referer: https://www.bestbuy.com/site/searchpage.jsp?st=last+of+us&_dyncharset=UTF-8&_dynSessConf=&id=pcat17071&type=page&sc=Global&cp=1&nrp=&sp=&qp=&list=n&af=true&iht=y&usc=All+Categories&ks=960&keys=keys' \
#   -H 'accept-language: en-US,en;q=0.9' \
#   -H 'cookie: tfs_upg=true; tfs_upg=true; UID=9776ccd2-80ae-4904-be60-4a94c04be105; oid=1723412917; optimizelyEndUserId=oeu1590947307610r0.9216782938138322; vt=f1458c3f-a366-11ea-8e9b-12819f37f54d; s_ecid=MCMID%7C80901005036657981333414591764691259649; _cs_c=1; ui=1590947385788; G_ENABLED_IDPS=google; pt=41462534; DYN_USER_CONFIRM=a73f276c7dac31933b77c64a9041fe1b; DYN_USER_ID=ATG13432619882; ut=753850f4-eb67-11e2-a88a-00505692405b; CTT=dd804c23db9b8f5b53036206ce8bd3a6; pst2=484|N; locStoreId=484; aamoptsegs=aam%3D9369139; aam_uuid=87480637531110284392756628720280647715; 52245=; _gcl_au=1.1.544250689.1602706072; _cs_ex=1602104015; _abck=A46848818D2F93CC83021C531022316D~0~YAAQPw3orBFZaa11AQAAc4AZuASYjofVfTH7bazfSnv4WS+kRYLn4OvPt5B+7w9i43NmCryaSquNTczpGmPl1oI7vr13eH+1Kht6xEJHSuHRjwRDRMpQ1uvBRU7u6TlgnGOSLx20cVs0yczO1XsSedwFyJMH7dLh9iReA4IqL7wV4MoUu5qACEUFbJ8KyhcVQo04P4hrUqPLZ05hygOoX4OW4ROTDnikSo2ne5V1ohCfaa33wW/Mszpxsu863GIl2NNoxDgGjv+eanOSmiQZ9Pbkfhbd9r9xdTPXPJKCioOnr5FKxv+YKdHgdzwtDB459LpmgmDa6Rs=~-1~-1~-1; locDestZip=06095; at=eyJhY2Nlc3NUb2tlbiI6IllXTXRkMnBvekNRNUVldWppdzU5M05OYjd6aGdTTUo4Z3NoRTI1aktvVWJ0LWtaZTNVNXBBQUFBQUFBQUFBQSIsInRpbWVUb0xpdmUiOjE4MDAsImlzc3VlZFRpbWVzdGFtcCI6MTYwNTExMTQ4MDAxMywiYXNzZXJ0aW9uIjoidTp3RlN3LW9JZmY1by1TOWhvUGpqeUVIZVk2YmUxVGlwZTJzeGdXdXFsZ2NrIiwicHJpbmNpcGFsIjoidTp3RlN3LW9JZmY1by1TOWhvUGpqeUVIZVk2YmUxVGlwZTJzeGdXdXFsZ2NrIiwicHJpbmNpcGFsSWRlbnRpZmllciI6Ijc1Mzg1MGY0LWViNjctMTFlMi1hODhhLTAwNTA1NjkyNDA1YiIsImNvbnN1bWFibGUiOmZhbHNlLCJ2ZXJzaW9uIjoiMS4wIn0.oejNQeGeUaaPF23EOkDsaG1Uhn-Gm3n_lvlkphix9IQ9PSrCsLkw1K4s_PKlAtQ6-lKoZtYAAFUq4XFkWAf5Ow; SID=cc36598d-ee04-41a4-95a2-1b9735ce30ba; physical_dma=521; customerZipCode=02901|N; bm_sz=E7F3548445B8B925A107B284C6A5637E~YAAQxPzDF3tyIgR2AQAAvTHpBgkxG6eeZme9dRBuzGVNwPXysjplayUKZ5SwNdew2+Cz7u+LXJ76GqBxRNbW2OC+zg4QGdD5Y3T5JoKfbv2/BvZCudVB+Z1VYI8FI4xoS8T7vYVFKkuPWeruB1pY/Tq0HZdGASIU/eHkVdXXVh/ddrvRR2wDpfYYsUWrgXMX; bby_rdp=l; rxVisitor=1606433715599QPAB3LD1MGTDMIL96ABO620JG4VNTOAC; COM_TEST_FIX=2020-11-26T23:35:16.116Z; basketTimestamp=1606402288309; tfs_upg=true; dtCookie=v_4_srv_2_sn_ITF74V43SAHON31GEUMNQATOA256FKUV_app-3A1b02c17e3de73d2a_1_ol_0_perc_100000_mul_1; AMCVS_F6301253512D2BDB0A490D45%40AdobeOrg=1; AMCV_F6301253512D2BDB0A490D45%40AdobeOrg=1585540135%7CMCMID%7C80901005036657981333414591764691259649%7CMCAAMLH-1607038524%7C9%7CMCAAMB-1607038524%7CRKhpRz8krg2tLO6pguXWp5olkAcUniQYPHaMWWgdJ3xzPWQmdj0y%7CMCOPTOUT-1606440924s%7CNONE%7CMCAID%7CNONE%7CMCCIDH%7C-1435408033%7CvVersion%7C4.4.0; _cs_mk=0.5846612419725017_1606433724607; s_cc=true; lastSearchTerm=ps5%20console; listFacets=undefined; CTE22=T; CRTOABE=1; s_sq=%5B%5BB%5D%5D; 056bbf6d78d4ce8e6f5e02444d25952b=c482b34713e38ee713ad63d193096427; partner=P10T12R103%26BODY%262020-11-26+18%3a42%3a05.000; campaign_date=1606437732821; campaign=P10T12R103_BODY; bby_cbc_lb=p-browse-e; ltc=10150; bby_suggest_lb=p-suggest-e; bby_prc_lb=p-prc-e; c2=no%20value; dtLatC=6; sc-location-v2=%7B%22meta%22%3A%7B%22CreatedAt%22%3A%222020-05-31T17%3A48%3A33.382Z%22%2C%22ModifiedAt%22%3A%222020-11-27T01%3A28%3A27.288Z%22%2C%22ExpiresAt%22%3A%222021-11-27T01%3A28%3A27.288Z%22%7D%2C%22value%22%3A%22%7B%5C%22physical%5C%22%3A%7B%5C%22zipCode%5C%22%3A%5C%2206095%5C%22%2C%5C%22source%5C%22%3A%5C%22C%5C%22%2C%5C%22captureTime%5C%22%3A%5C%222020-11-27T01%3A28%3A25.291Z%5C%22%7D%2C%5C%22store%5C%22%3A%7B%5C%22zipCode%5C%22%3A%5C%2206042%5C%22%2C%5C%22storeId%5C%22%3A%5C%22484%5C%22%2C%5C%22storeHydratedCaptureTime%5C%22%3A%5C%222020-11-27T01%3A28%3A27.288Z%5C%22%2C%5C%22userToken%5C%22%3A%5C%22753850f4-eb67-11e2-a88a-00505692405b%5C%22%7D%2C%5C%22destination%5C%22%3A%7B%5C%22zipCode%5C%22%3A%5C%2206095%5C%22%7D%7D%22%7D; rxvt=1606442309814|1606440491806; dtPC=2$240502460_478h-vCKRHIKQCUOREHBFHUUOUKPIUCKDGAKFP-0e19; dtSa=false%7C_load_%7C2%7C_onload_%7C-%7C1606440509813%7C240502460_478%7Chttps%3A%2F%2Fwww.bestbuy.com%2Fsite%2Fthe-last-of-us-part-ii-standard-edition-playstation-4%2F6255399.p%3FskuId%3D6255399%7CThe%20Last%20of%20Us%20Part%20II%20Standard%20Edition%20PlayStation%204%203003180%20-%20Best%20Buy%7C1606440497060%7C%7C' \
#   --compressed -s > BestBuyPS5Controller.htm`

# Parse product page with perl script. PERL returns 2 files, one is human readable
# perl ../../StockChecker.pl BestBuyPS5Controller.htm

# Amazone PS5 Bundle
# `curl 'https://www.amazon.com/PlayStation-5-Console/dp/B08FC5L3RG?tag=georiot-us-default-20&ascsubtag=trd-us-8254727366816840000-20&ref_=d6k_applink_bb_dls_failed&fbclid=IwAR3XweqW6dLnoYEJaznsDHtD4LuWE8_x8BGgHeYSrTWXfqlmJncsQOdJreg' \
#   -H 'authority: www.amazon.com' \
#   -H 'pragma: no-cache' \
#   -H 'cache-control: no-cache' \
#   -H 'rtt: 50' \
#   -H 'downlink: 10' \
#   -H 'ect: 4g' \
#   -H 'sec-ch-ua: "Chromium";v="86", "\"Not\\A;Brand";v="99", "Google Chrome";v="86"' \
#   -H 'sec-ch-ua-mobile: ?0' \
#   -H 'upgrade-insecure-requests: 1' \
#   -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36' \
#   -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
#   -H 'sec-fetch-site: cross-site' \
#   -H 'sec-fetch-mode: navigate' \
#   -H 'sec-fetch-user: ?1' \
#   -H 'sec-fetch-dest: document' \
#   -H 'accept-language: en-US,en;q=0.9' \
#   -H 'cookie: ubid-main=131-1464985-9108715; lc-main=en_US; p2dPopoverID_all_A3UXT63U8P1DOJ=1584983980.924; p2dPopoverID_default_A3UXT63U8P1DOJ=1584983980.924; ubid-tacbus=133-4980221-0924612; s_vnum=2022680962843%26vn%3D2; s_nr=1594816874371-Repeat; s_dslv=1594816874373; session-id-apay=132-8630792-1288263; session-id=139-8565073-4853807; skin=noskin; x-main="fgQnAwjIzXZwI4PhXMoi89wDEdla??Cf"; at-main=Atza|IwEBIMGqxlkq7we0EfqWuTvKtFXTI8-EzO-dM3A3C5sAFITjcJZIhofqVw4UJJh0cDuROB_Glzjl8gc94tLE_1-v49pw9VxevEQx2yauu41bdRuyZfIPoLglSel_PXk4ajoWHC0ZncIM1ozD2WG7u1B3ZuSXIcL-dbWFEezZOfoxMwoEu9Ah2oKRUmr8McjShcScvk9WOmzyVk9GSLo4PL_1WG85; sess-at-main="M7SQ3vTl2G+RfYXIThPupaPAyen1ubEWDsUYX/I6tkY="; sst-main=Sst1|PQHiDJjtqGEIfI8nMTbL_qGSCf7pPZ-eb3tAfMctCVKayozsqgLbqK6C_2EXpHZhVMYUT8jPu4ONqJMB9qVzGtoZvPAxkusKira37Sx9vIPhDXeoYoPFenDiCd39sqeTes6hqSVO9V5AlkzdiVsMFZl_7MOUHboMZ0zU9oVfLrOJFp2JGOJnVHBaaU4Q1BY9LD10ARppL6SwAsD1nyIPLxQdnJcC9GpjZJ7BuesybnxhgGZYxuzADEIRcSRydZU9F2S_uHIULiNZX7hIxVavyytu2N8wqxOZkRQqW9WFyvJE4Ko; session-id-time=2082787201l; i18n-prefs=USD; session-token="SxWLyxLIvGBoYs1PA1ntIYjeNuuNWkPiS5dhry9gnk3OmjPQ1SBETD8nnNa/+N0K0XiI7dtx30nq/BYHsbp702X5vnw1/a+Y0VLac+cHMpWmkoO6sXm21GK6UgyGYpOsHkEH8YSj/Z3Q3n8hDyP0b6GUv5A62NcgigGqpuC6jA1O3fGP6XqwEL4zvYR7a2nVDKEcgYby0OA8FA87q+8Ivg=="; csm-hit=tb:S1Z6YXEXAVS41WMC60TZ+s-S1Z6YXEXAVS41WMC60TZ|1606437753283&t:1606437753283&adb:adblk_yes' \
#   --compressed -s > AmazonPS5Console.htm`

# Amazon PS5 Console
# `curl 'https://www.amazon.com/PlayStation-5-Console/dp/B08FC5L3RG' \
#   -H 'authority: www.amazon.com' \
#   -H 'rtt: 50' \
#   -H 'downlink: 10' \
#   -H 'ect: 4g' \
#   -H 'sec-ch-ua: "Chromium";v="86", "Google Chrome";v="86"' \
#   -H 'sec-ch-ua-mobile: ?0' \
#   -H 'upgrade-insecure-requests: 1' \
#   -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36' \
#   -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
#   -H 'sec-fetch-site: none' \
#   -H 'sec-fetch-mode: navigate' \
#   -H 'sec-fetch-user: ?1' \
#   -H 'sec-fetch-dest: document' \
#   -H 'accept-language: en-US,en;q=0.9' \
#   --compressed -s > AmazonPS5Console.htm`
# perl ../../StockCheckerAMZ.pl AmazonPS5Console.htm

# Walmart PS5 COnsole
`curl 'https://www.walmart.com/ip/PlayStation-5-Console/363472942?irgwc=1&sourceid=imp_zpQQhcz06xyLT97wUx0Mo38eUkEwBVzN3We2Tg0&veh=aff&wmlspartner=imp_1943169&clickid=zpQQhcz06xyLT97wUx0Mo38eUkEwBVzN3We2Tg0&sharedid=&ad_id=565706&campaign_id=9383&fbclid=IwAR0Y3HL4Y60qq1gGQcMO4PC2xdExYCI7VbLDYqq730MiWhHasdFoEhqRLMI' \
  -H 'authority: www.walmart.com' \
  -H 'pragma: no-cache' \
  -H 'cache-control: no-cache' \
  -H 'sec-ch-ua: "Chromium";v="86", "\"Not\\A;Brand";v="99", "Google Chrome";v="86"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'sec-fetch-site: cross-site' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-user: ?1' \
  -H 'sec-fetch-dest: document' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cookie: __cfduid=de81241704c31075c02f3b42a61abe04b1605580077; vtc=deN7avZY7LWhMZomG3tEqg; TBV=7; _pxvid=81f4492f-287c-11eb-8a9e-0242ac120018; cart-item-count=0; TS013ed49a=01538efd7c75c07a35914172eb2632053bb230b72f190d43fa30958d59228e0353170405edc4aa737b3415407acc3e3ffa977223d8; _gcl_au=1.1.1226754809.1605580080; _fbp=fb.1.1605580081131.829637262; tb_sw_supported=true; TS011baee6=0130aff232526125d91efe39bcc7fdbffddebc03cb034aea5098ed12327b401ad5e540e47a676c4d5e373221db9388cb3961749860; TS01e3f36f=0130aff232526125d91efe39bcc7fdbffddebc03cb034aea5098ed12327b401ad5e540e47a676c4d5e373221db9388cb3961749860; TS018dc926=0130aff232526125d91efe39bcc7fdbffddebc03cb034aea5098ed12327b401ad5e540e47a676c4d5e373221db9388cb3961749860; next-day=1606510800|false|false|1606564800|1606438349; location-data=06035%3AGranby%3ACT%3A%3A1%3A1|1re%3B%3B9.85%2C28j%3B%3B10.44%2C1oe%3B%3B11.47%2C3xj%3B%3B15.39%2C1gj%3B%3B16.63%2C1nk%3B%3B17.44%2C23j%3B%3B18.57%2C42m%3B%3B18.76%2C1in%3B%3B19.28%2C28k%3B%3B20.26||7|1|1xje%3B16%3B3%3B13.67%2C1yis%3B16%3B4%3B14.58%2C1y4s%3B16%3B6%3B16.47%2C1y85%3B16%3B13%3B38.8; DL=06035%2C%2C%2Cip%2C06035%2C%2C; bstc=WGaDQD1xX7RJ4BkU-vJ0s0; mobileweb=0; xpa=; xpm=3%2B1606438349%2BdeN7avZY7LWhMZomG3tEqg~%2B0; TS01b0be75=01538efd7c9e5b67a1a6e1deda4a3c4bb30efaa0b5102d0a6848c96d56a63da8b50fa942490b4f5943605f9c278517be5ce45c3b60; ak_bmsc=4282F04E9B5F53505E357C01D982C71317C3FCE503320000CD4DC05F466B5164~pl0hTa8dd1UzzZ66yzuS5GAWx3eHTiEtwEYdpq0fjZg89q8vL5Am6lDVxY8mTFWGKuUwZEY1blhBvYFsMg+DEetisSs6aKLEwsqKivB7cDw5qH1cmZLRFqAb9X7ImLErrWzfKzpy6ucd8n6NSeu8VHfUk4bq/TtaclXa46CcqDkjhpu1k97XfYbGmL/mBB4hc8kYgXU5bTS4BzAZ26v984KO3IKML9i8llvRsALbLtPgw=; athrvi=RVI~h15aa282e; s_sess_2=prop32%3D; _uetsid=d433b180304a11eb9b047b0b16e60130; _uetvid=83267840287c11eb8da7139f4ca0848f; _fbc=fb.1.1606438351159.IwAR0Y3HL4Y60qq1gGQcMO4PC2xdExYCI7VbLDYqq730MiWhHasdFoEhqRLMI; viq=Walmart; _px3=bd4a75abdc2cfce051990432647303953fc5fb3bd7244c17357dfcaa4a11c931:WRcjy766avvtTZ6GcaPfBoSd6TFUyKzWMFSkzW2cd6s14uWZHBUdKJY7lgTxrB4xxQ1fEOuV5R/GTiULJI205g==:1000:uG7LMZyG9jemsp7E3IH+6RuQvtJZzGeoJZVqUpZ/j7UR5zG024TerwS8mvaSt0ls+xVbugf6JEbrQChtQMYELiyvdCB5CmHjIoQ95RUaDKIUKwNlB0Asi5er2zuBHuNS8l4Y7lSQkiywtmNW2NOYH/gc4cct346nF0W0fyP+iQc=; _pxde=d189158273a9ebd8db8846bc7d003543ffe546f6be0fcc06aab7fda333daf6b1:eyJ0aW1lc3RhbXAiOjE2MDY0Mzg0MTA3OTMsImZfa2IiOjAsImlwY19pZCI6W119; s_pers_2=om_mv3d%3Daff%3Aadid-%3Asourceid-imp_zpQQhcz06xyLT97wUx0Mo38eUkEwBVzN3We2Tg0%3Awmls-imp_1943169%3Acn-%7C1606701220911%3B%20%2Bom_mv7d%3Daff%3Aadid-%3Asourceid-imp_zpQQhcz06xyLT97wUx0Mo38eUkEwBVzN3We2Tg0%3Awmls-imp_1943169%3Acn-%7C1607046750372%3B%20%2Bom_mv14d%3Daff%3Aadid-%3Asourceid-imp_zpQQhcz06xyLT97wUx0Mo38eUkEwBVzN3We2Tg0%3Awmls-imp_1943169%3Acn-%7C1607651550372%3B%20%2Bom_mv30d%3Daff%3Aadid-%3Asourceid-imp_zpQQhcz06xyLT97wUx0Mo38eUkEwBVzN3We2Tg0%3Awmls-imp_1943169%3Acn-%7C1609033950373%3B%20useVTC%3DY%7C1669553550%3B%20om_mv7d%3Daff%3Aadid-%3Asourceid-imp_zpQQhcz06xyLT97wUx0Mo38eUkEwBVzN3We2Tg0%3Awmls-imp_1943169%3Acn-%7C1607046820912%3B%20om_mv14d%3Daff%3Aadid-%3Asourceid-imp_zpQQhcz06xyLT97wUx0Mo38eUkEwBVzN3We2Tg0%3Awmls-imp_1943169%3Acn-%7C1607651620913%3B%20om_mv30d%3Daff%3Aadid-%3Asourceid-imp_zpQQhcz06xyLT97wUx0Mo38eUkEwBVzN3We2Tg0%3Awmls-imp_1943169%3Acn-%7C1609034020914; akavpau_p8=1606439113~id=52e6c05378cdc1638f1910a648b87c52; bm_sv=819AE3FA7D985C0201CD9A93A99D647F~ryVRDZjO+CcJdmTveBX9+TrzAGt2g/NajxVxb0IfiIcGX2kQsBCnaSq2OglyG3QNC0xl7yBOliOBytP2RXxW3ZaAoePEnmaHsIOlLwfOuew1JFuGodFInZcBSlV8X8E2z5Ya/LCBqWnU4GmYh8i+GOci/ERazWWq4BflwRvSeVE=' \
  --compressed -s > WalmartConsole.htm`
perl ../../StockCheckerWM.pl WalmartConsole.htm

# Walmart PS4 Controller (Generally in stock; Tested for QA Purposes)
`curl 'https://www.walmart.com/ip/Sony-Playstation-4-DualShock-4-Controller-Glacier-White/363575213?wpa_bd=&wpa_pg_seller_id=F55CDC31AB754BB68FE0B39041159D63&wpa_ref_id=wpaqs:N9PxqHsfrEImDJUUcbRFSfaNYVVkvVqHXYwie5B5Tc0bDyp8_9GkiR2jbz1pm7MzgQSJ6odAn4kKNkJmVifRIOEiyVm8JSrrRfmjUkUqOwvTo6K7DkYjG5RmI_16n1aEitDTx4Hk3-mn9BV2fxygt32DZIs_DCBhOCAwVHRUl6_7oDWuKd5CvbAKYf-DH2khzvutgEcxFvKSYet36H1sSQ&wpa_tag=&wpa_aux_info=&wpa_pos=1&wpa_plmt=1145x1145_T-C-IG_TI_1-6_HL-INGRID-GRID-NY&wpa_aduid=ca63df8e-c858-4583-b62d-2ad980ffc782&wpa_pg=browse&wpa_pg_id=2636_1102672_1106097&wpa_st=PlayStation%2B4%2BPS4%2BAccessories&wpa_tax=2636_1102672_1106097&wpa_bucket=__bkt__' \
  -H 'authority: www.walmart.com' \
  -H 'sec-ch-ua: "Chromium";v="86", "\"Not\\A;Brand";v="99", "Google Chrome";v="86"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'service-worker-navigation-preload: true' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-user: ?1' \
  -H 'sec-fetch-dest: document' \
  -H 'referer: https://www.walmart.com/browse/video-games/playstation-4-accessories/2636_1102672_1106097' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cookie: __cfduid=de81241704c31075c02f3b42a61abe04b1605580077; vtc=deN7avZY7LWhMZomG3tEqg; TBV=7; _pxvid=81f4492f-287c-11eb-8a9e-0242ac120018; cart-item-count=0; _gcl_au=1.1.1226754809.1605580080; _fbp=fb.1.1605580081131.829637262; tb_sw_supported=true; TS011baee6=0130aff232526125d91efe39bcc7fdbffddebc03cb034aea5098ed12327b401ad5e540e47a676c4d5e373221db9388cb3961749860; TS01e3f36f=0130aff232526125d91efe39bcc7fdbffddebc03cb034aea5098ed12327b401ad5e540e47a676c4d5e373221db9388cb3961749860; TS018dc926=0130aff232526125d91efe39bcc7fdbffddebc03cb034aea5098ed12327b401ad5e540e47a676c4d5e373221db9388cb3961749860; next-day=1606510800|false|false|1606564800|1606438349; location-data=06035%3AGranby%3ACT%3A%3A1%3A1|1re%3B%3B9.85%2C28j%3B%3B10.44%2C1oe%3B%3B11.47%2C3xj%3B%3B15.39%2C1gj%3B%3B16.63%2C1nk%3B%3B17.44%2C23j%3B%3B18.57%2C42m%3B%3B18.76%2C1in%3B%3B19.28%2C28k%3B%3B20.26||7|1|1xje%3B16%3B3%3B13.67%2C1yis%3B16%3B4%3B14.58%2C1y4s%3B16%3B6%3B16.47%2C1y85%3B16%3B13%3B38.8; DL=06035%2C%2C%2Cip%2C06035%2C%2C; bstc=WGaDQD1xX7RJ4BkU-vJ0s0; mobileweb=0; xpa=; xpm=3%2B1606438349%2BdeN7avZY7LWhMZomG3tEqg~%2B0; ak_bmsc=4282F04E9B5F53505E357C01D982C71317C3FCE503320000CD4DC05F466B5164~pl0hTa8dd1UzzZ66yzuS5GAWx3eHTiEtwEYdpq0fjZg89q8vL5Am6lDVxY8mTFWGKuUwZEY1blhBvYFsMg+DEetisSs6aKLEwsqKivB7cDw5qH1cmZLRFqAb9X7ImLErrWzfKzpy6ucd8n6NSeu8VHfUk4bq/TtaclXa46CcqDkjhpu1k97XfYbGmL/mBB4hc8kYgXU5bTS4BzAZ26v984KO3IKML9i8llvRsALbLtPgw=; athrvi=RVI~h15aa282e; s_sess_2=prop32%3D; _fbc=fb.1.1606438351159.IwAR0Y3HL4Y60qq1gGQcMO4PC2xdExYCI7VbLDYqq730MiWhHasdFoEhqRLMI; viq=Walmart; s_pers_2=om_mv3d%3Daff%3Aadid-%3Asourceid-imp_zpQQhcz06xyLT97wUx0Mo38eUkEwBVzN3We2Tg0%3Awmls-imp_1943169%3Acn-%7C1606701320527%3B%20%2Bom_mv7d%3Daff%3Aadid-%3Asourceid-imp_zpQQhcz06xyLT97wUx0Mo38eUkEwBVzN3We2Tg0%3Awmls-imp_1943169%3Acn-%7C1607046750372%3B%20%2Bom_mv14d%3Daff%3Aadid-%3Asourceid-imp_zpQQhcz06xyLT97wUx0Mo38eUkEwBVzN3We2Tg0%3Awmls-imp_1943169%3Acn-%7C1607651550372%3B%20%2Bom_mv30d%3Daff%3Aadid-%3Asourceid-imp_zpQQhcz06xyLT97wUx0Mo38eUkEwBVzN3We2Tg0%3Awmls-imp_1943169%3Acn-%7C1609033950373%3B%20useVTC%3DY%7C1669553550%3B%20om_mv7d%3Daff%3Aadid-%3Asourceid-imp_zpQQhcz06xyLT97wUx0Mo38eUkEwBVzN3We2Tg0%3Awmls-imp_1943169%3Acn-%7C1607046920529%3B%20om_mv14d%3Daff%3Aadid-%3Asourceid-imp_zpQQhcz06xyLT97wUx0Mo38eUkEwBVzN3We2Tg0%3Awmls-imp_1943169%3Acn-%7C1607651720532%3B%20om_mv30d%3Daff%3Aadid-%3Asourceid-imp_zpQQhcz06xyLT97wUx0Mo38eUkEwBVzN3We2Tg0%3Awmls-imp_1943169%3Acn-%7C1609034120534; _pxff_rf=1; com.wm.reflector="reflectorid:imp_zpQQhcz06xyLT97wUx0Mo38eUkEwBVzN3We2Tg0@lastupd:1606438684096@firstcreate:1606438517510"; TS01b0be75=01538efd7cbb63eff17acbc45a9da268c168aa9583fcf1b1d2fec3ec8c0d405f493fb33c196e1fd34edaec2fd281136acec8641296; TS013ed49a=01538efd7cbb63eff17acbc45a9da268c168aa9583fcf1b1d2fec3ec8c0d405f493fb33c196e1fd34edaec2fd281136acec8641296; akavpau_p8=1606439285~id=d619bcc9fbe0cf4199129e026969c0ae; bm_sv=819AE3FA7D985C0201CD9A93A99D647F~ryVRDZjO+CcJdmTveBX9+TrzAGt2g/NajxVxb0IfiIcGX2kQsBCnaSq2OglyG3QNC0xl7yBOliOBytP2RXxW3ZaAoePEnmaHsIOlLwfOuezTkMfCDRC4uuyUvVvZTjcNiqfi12IOazI9YPawQvC92/6KxLbfurdEnVAvsMyTjwk=; _px3=669e6068d8db71af73907b3cf674ca918eedca57099aa5fc90d3681d078d2f35:0Tg//8OtRzjWGe9ZJSmpZFjy1gPEmx5PRZfBmxR02vVsyQ82OovhAqaBrwduZMJR59KAK9sxKdZUyWVb9LSfaA==:1000:uNDkYW5tVH+Z4KEalT5zfdpY7Fb2GOxPsloBwWsF6304jC+wWS4pF0Iia8GnsCCFT37sr5xBs2SYoLwhos5vJF9bbcdoOtbr+Kei8ua0z8vVg6B57wBrZMQC7oq0aLGf7AdQIRshOYKBqb8na90FEiAxzV/FmhzEBlh7oBYGlFo=; _pxde=cec277cb3721b48166e99f1640634a24eeacaf5bb5e3b15f484086521e77f610:eyJ0aW1lc3RhbXAiOjE2MDY0Mzg2ODcyMDAsImZfa2IiOjAsImlwY19pZCI6W119; _uetsid=d433b180304a11eb9b047b0b16e60130; _uetvid=83267840287c11eb8da7139f4ca0848f; cbp=363575213-1606438687639' \
  --compressed -s > WalmartController.htm`
  # perl ../../StockCheckerWM.pl WalmartController.htm

# Costco PS5 Bundle
  # `curl 'https://www.costco.com/sony-playstation-5-gaming-console-bundle.product.100691489.html' \
  # -H 'authority: www.costco.com' \
  # -H 'cache-control: max-age=0' \
  # -H 'sec-ch-ua: "Chromium";v="86", "\"Not\\A;Brand";v="99", "Google Chrome";v="86"' \
  # -H 'sec-ch-ua-mobile: ?0' \
  # -H 'upgrade-insecure-requests: 1' \
  # -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36' \
  # -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  # -H 'sec-fetch-site: same-origin' \
  # -H 'sec-fetch-mode: navigate' \
  # -H 'sec-fetch-user: ?1' \
  # -H 'sec-fetch-dest: document' \
  # -H 'referer: https://www.costco.com/Logoff?' \
  # -H 'accept-language: en-US,en;q=0.9' \
  # -H 'cookie: akaas_AS01=2147483647~rv=88~id=ed17146e223121c70e447a8e0e0e89f9; at_check=true; ajs_anonymous_id_2=%22aed06d3b-6d43-4522-bedb-075d19c3b8ae%22; AMCVS_97B21CFE5329614E0A490D45%40AdobeOrg=1; _cs_c=1; s_cc=true; WRUIDCD20200731=3053462687023513; BVImplnative_review_form=2070_2_0; WAREHOUSEDELIVERY_WHS=National%3D00847%2CRegional%3D729-bd; WC_SESSION_ESTABLISHED=true; WC_ACTIVEPOINTER=-1%2C10301; BVBRANDID=38d23ea8-cd21-4c5e-93b2-73279e5f0aeb; memberPrimaryPostal=06026; invCheckPostalCode=06026; invCheckStateCode=CT; checkoutMemberTier=Z00020; ajs_user_id_2=%22costco%40hullbreach.com%22; ajs_has_loggedin_2=true; capp_json=%7B%22coBrandedCreditMax%22%3Afalse%2C%22displayErrorForRenew%22%3Afalse%2C%22displayErrorForCancel%22%3Afalse%2C%22displayErrorForRenewGSHousehold%22%3Afalse%7D; costco_f_p_LOCATIONS=%7B%22contract%22%3A%7B%22id%22%3A%22%22%2C%22switch%22%3A%22false%22%7D%7D; JSESSIONID=0000JVNNAKtH1e2qz-uByMhjQgz:1efikl2f3; client-zip-short=02901; C_LOC=RI; AKA_A2=A; bm_sz=BCEF41DF47E3A5436A119C86DC10B49B~YAAQpZQZuIdT4nx1AQAAjI+PGwkdGSYGx0ErAcz6C6eZNJn7ue2vc2ocaKCLm1rN1is7/YvAdFSA0Reivd0yDHRifnRan6V9i05MdehBYYS8pcpKyYdSOfYpknQK3+ZlrqO2/n5c99sQE96ARc3yNmJF0ha4pw3O0zCot/vLQEmsHVhAMkwzVjygK/d+q2Dn; bm_mi=2F7BFCEA716CFEF08689D2E2453105F1~yVHxrRLEluTViPL58XYmcWBcLlPykhz+NOb/kqxFxyBOKXrTKPU2DuRtAyeUYgLDb0h0zfh4JrUstcyP71q9ugXlJMKzePcUVzgr+nwBMbnNN6LL/4Z5KlgbIVxI6KKFoZTeSu2qRJkE0JUHR3QRKA5cvd5Qh04Pm1HayeJ27YfzdQnammMtmMwWstO8o58cuwEcTT6E9ipKttN2AoPYLKMzaFG0SBLRktNtcBzX6HFtwOGR3HCc6Sg2MbEsZ5Oc+FlpZYACVUhrm3yH+PeQKkFViwS2d98X1t39tunvt9C1xI05DfT3KO/g/z5+YwaP; ak_bmsc=955DD860D51060CE841DCDFB93800C9DB81994A5284D00000185C55F9ADF7537~plc1RJ8O90iAWowg0wdAYmdPY+JvSKee7yTVc9psS28J0zo1Cyjiakr4ikX7pdKUPuFYMVuvHSmRIJlsJfz1sCoQl0Nz+o6yue1IisSoEr7abpOHLOUtvYjm8VsIrw57sLONnR/BEncgqM7VMsZUBD38aCOojG2eoWPYhv0MEJa1eC7vdhfSJUJtyfQ8fNI2nS121FweilLXtosN/AwBtnUM07RZ6lXGwS9DK+g+XbiUFaHUwvnXmGke4wCPef74ZK; AMCV_97B21CFE5329614E0A490D45%40AdobeOrg=-408604571%7CMCMID%7C85770303637700804392891703731790919235%7CMCAAMLH-1607384963%7C9%7CMCAAMB-1607384963%7CRKhpRz8krg2tLO6pguXWp5olkAcUniQYPHaMWWgdJ3xzPWQmdj0y%7CMCOPTOUT-1606787363s%7CNONE%7CMCAID%7CNONE%7CvVersion%7C4.6.0; sto__session=1606780163402; BVBRANDSID=12b3fb9b-2467-4694-883f-161944360901; bvUserToken=74a04393abdf51bae1f696dea5f3bd79646174653d323032302d31312d3330267573657269643d38663138323164392d663230312d346433652d383836382d64336637366339363433346526656d61696c616464726573733d636f7374636f4068756c6c6272656163682e636f6d264d656d6265724e756d6265723d313131383537323330383536; _abck=FFD63A8405E827F16437DF6EAD9FD7B0~0~YAAQpZQZuANU4nx1AQAACbSPGwQkTXLv9iijM39J70E8bkFdBJqY0rtdYk04pKQPt61Z5+7NQTwkZ+EgMCSeL6t9OV6R0tJaa6dujty7IaM6MCtvONyRLQaxpWrnlyIchwZoccRqjMahQs+XjuxhBVWHX4dNjEiNzKmdZ7I8kFlyKnZPI0HTaTQNuzdDA12i2uTDK4hfLKwBjTaVUqj/1/Zyi7+4AGkrRzO1mPtgeaAomlIXd/qUSMVjv735jisDGB80FrhDiVKyOy4sDtxM8xpFhi08ZszMdC6ym3+hIV+L8ElzRLAieLpHuT4z+QNlqgPJZbKjQi1NwI+gnZdR3/HTGlGR2w==~-1~-1~-1; _cs_cvars=%7B%221%22%3A%5B%22Page%20type%22%2C%22Product%22%5D%2C%223%22%3A%5B%22Items%20Count%20In%20Cart%22%2C%220%22%5D%7D; WC_PERSISTENT=MtLD52rUhHxTUXSdy7INj2yySL0%3D%0A%3B2020-11-30+15%3A51%3A12.831_1475075243944-127103_10301_-1002%2C-1%2CUSD%2CSfjiIAYSCUWyc046OjS5OScjL6aDRjJXUcQESj0WbDP1zucruDTAgGvwgWzDCrj2nPitULJ5TaBGQhXiads%2Bbw%3D%3D_10301; WC_AUTHENTICATION_-1002=-1002%2C5M9R2fZEDWOZ1d8MBwy40LOFIV0%3D; WC_GENERIC_ACTIVITYDATA=[16418820878%3Atrue%3Afalse%3A0%3AZhUoVxVvJ5IDYbOFrFWI%2BWGKgjc%3D][com.ibm.commerce.context.entitlement.EntitlementContext|4000000000000001002%253B60515%2660509%253B60519%253B60507%253B60529%253B60517%253B60539%253B60505%253B60527%253B60515%253B60537%253B60503%253B60525%253B100549%253B60513%253B60535%253B60501%253B60523%253B4000000000000001002%253B60511%253B60533%253B60521%253B100545%253B100547%26null%26-2000%26null%26null%26null][com.ibm.commerce.context.audit.AuditContext|1475075243944-127103][com.ibm.commerce.context.globalization.GlobalizationContext|-1%26USD%26-1%26USD][com.ibm.commerce.store.facade.server.context.StoreGeoCodeContext|null%26null%26null%26null%26null%26null][com.ibm.commerce.catalog.businesscontext.CatalogContext|10701%26null%26false%26false%26false][com.ibm.commerce.context.experiment.ExperimentContext|null][com.ibm.commerce.context.ExternalCartContext|null][CTXSETNAME|Store][com.ibm.commerce.context.base.BaseContext|10301%26-1002%26-1002%26-1][com.ibm.commerce.giftcenter.context.GiftCenterContext|null%26null%26null]; CriteoSessionUserId=c5b779de11e6445cbc78591e743b62ea; WC_USERACTIVITY_-1002=-1002%2C10301%2C0%2Cnull%2Cnull%2Cnull%2Cnull%2Cnull%2Cnull%2Cnull%2Cdyg1FMFm1I7I%2FY2xV62ZznnrYOFkfUZMz5AMJoyOnS5zmX4VavN2C67b398BP5huMW29cLMK1%2FhMyreremtVHF23yS%2BmCcVcCgUYl9WMjHm4aASmxg4%2BP98MmfOtd7w2jQnI%2F5YEcDi1%2Folzr9J2%2BLso2Wd27neAVvGqtwfTO1GziJ99CFGEy2APDtegaPAgBNrSXEfbUW6X8qj4u%2B5Nbg%3D%3D; bm_sv=13922860FA8B861D8E33A5194C6F5263~xETgFKz8e4R8uSgaIAAgldOobs0dFnI5bVvvbLAznXqKQvtOF1ZCTm0VLyrSSvF6/jpP7YF3szlF3m+tAKf6DDfBnKoB8P7UrXfDIkSXbhg0Il6tPgFDlx0B46D5snanFaC5fwlwld9ZGBtOScRx7UqnmvfZ8BAMqWS+q4YALEY=; _cs_id=748f340b-e292-aeab-a9e9-5d95e398c493.1606438972.9.1606780277.1606780163.1587047674.1640602972090.Lax.0; _cs_s=9.1; __CT_Data=gpv=23&ckp=tld&dm=costco.com&apv_59_www33=23&cpv_59_www33=23&rpv_59_www33=23; s_sq=cwcostcocomprod%3D%2526c.%2526a.%2526activitymap.%2526page%253Dhttps%25253A%25252F%25252Fwww.costco.com%25252Fsony-playstation-5-gaming-console-bundle.product.100691489.html%2526link%253D0%2526region%253DtheViews%2526.activitymap%2526.a%2526.c%2526pid%253Dhttps%25253A%25252F%25252Fwww.costco.com%25252Fsony-playstation-5-gaming-console-bundle.product.100691489.html%2526oid%253Djavascript%25253Avoid%2525280%252529%25253B%2526ot%253DA; sto__count=5; mbox=PC#d6bf7b789a824eb9b6fe7025a24547df.34_0#1669683772|session#a405e13ae4554e70950a26eab323125b#1606782139; RT="z=1&dm=www.costco.com&si=02307537-4b35-48d3-8d90-acf942ade98e&ss=ki57f7cy&sl=7&tt=ar2&bcn=%2F%2F17d09918.akstat.io%2F&ld=2hth&ul=2ipu"' \
  # --compressed -s > CostcoConsole.htm`

# Costco PS5 Console only
  `curl 'https://www.costco.com/sony-playstation-5-gaming-console-bundle.product.100691489.html' \
  -H 'authority: www.costco.com' \
  -H 'cache-control: max-age=0' \
  -H 'sec-ch-ua: "Chromium";v="86", "\"Not\\A;Brand";v="99", "Google Chrome";v="86"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-user: ?1' \
  -H 'sec-fetch-dest: document' \
  -H 'referer: https://www.costco.com/Logoff?' \
  -H 'accept-language: en-US,en;q=0.9' \
  --compressed -s > CostcoConsole.htm`
  perl ../../StockCheckerCostco.pl CostcoConsole.htm


# Target PS5 Console
  `curl 'https://www.target.com/p/playstation-5-console/-/A-81114595?clkid=0e691701Nd0fe11eaa36c42010a246e29&lnm=81938&afid=Future%20PLC.&ref=tgt_adv_xasd0002&fbclid=IwAR0nES6JjnXudFQIFBF_37KY8r9S3mAzIFIOCCu38hLeNC2lJvo__XykLcg' \
  -H 'authority: www.target.com' \
  -H 'pragma: no-cache' \
  -H 'cache-control: no-cache' \
  -H 'sec-ch-ua: "Chromium";v="86", "\"Not\\A;Brand";v="99", "Google Chrome";v="86"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-user: ?1' \
  -H 'sec-fetch-dest: document' \
  -H 'referer: https://www.target.com/' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cookie: TealeafAkaSid=HOEbdZEhzSxGGJSCe9nc5fCjaLD_ps5D; visitorId=0176073E0BF50201BB72B2A4215B74F1; sapphire=1; webuiVisitorStatus=new; GuestLocation=06026|41.940|-72.730|CT|US; UserLocation=06026|41.940|-72.730|CT|US; adaptiveSessionId=A6924781930; accessToken=eyJraWQiOiJlYXMyIiwiYWxnIjoiUlMyNTYifQ.eyJzdWIiOiIwMDE3NTI5OS1jOTljLTRjMGMtOThlMi0yNGM3MWMzMTIzOWIiLCJpc3MiOiJNSTYiLCJleHAiOjE2MDY1MjU2NzYsImlhdCI6MTYwNjQzOTI3NiwianRpIjoiVEdULjBjYmI2ZTM4MTlmNjQ1ZTc4ZjRmMTkyNzRiOGMwOGQ4LWwiLCJza3kiOiJlYXMyIiwic3V0IjoiRyIsImRpZCI6IjE1NjU2NDcyY2ZhNjM2NTBkOTBlM2I0ZDI1YmIzYzYyYTUxNjFlYzYwYTJmNjNhMWE0MTBhMTNkZTEyMTFjMTIiLCJzY28iOiJlY29tLm5vbmUsb3BlbmlkIiwiY2xpIjoiZWNvbS13ZWItMS4wLjAiLCJhc2wiOiJMIn0.rA4WPiIgd7KY6cHKrbtiX9-vumXpdK6gp7lvAI3vqZ48RYWxMVzCncTq5t-wPZeRHU9cw-o4kpiJViqjRSd52M_x_KWxD5f-IZVkBMDwiLw4rmmrY_h-BwJuWEpSqtAAHDlQkkOxtdIQSfD4BvihPIxUnWP0TsGiWpdoglCwhSkTm7-STiIX-wPQiJKJ1MJL79U1OUEFot1VcmwV80iyrvxdHVc8bOTVQvk9kiOyQgoH5Iqt2yRkjrdT0G63xFn8K6h95CYHdIzNY0v5ISTTMTOHBR4StH0H0eHFoToEBEgWKnuQBwQSEWQw8Rbezu2-GURFqnJADQt50rXcYMimAw; idToken=eyJhbGciOiJub25lIn0.eyJzdWIiOiIwMDE3NTI5OS1jOTljLTRjMGMtOThlMi0yNGM3MWMzMTIzOWIiLCJpc3MiOiJNSTYiLCJleHAiOjE2MDY1MjU2NzYsImlhdCI6MTYwNjQzOTI3NiwiYXNzIjoiTCIsInN1dCI6IkciLCJjbGkiOiJlY29tLXdlYi0xLjAuMCIsInBybyI6eyJmbiI6bnVsbCwiZW0iOm51bGwsInBoIjpmYWxzZSwibGVkIjpudWxsLCJsdHkiOmZhbHNlfX0.; refreshToken=CKzu4iLrG7GHt-x1kFYV-KRCIhGmDHzxs82ECckzqK2DS_fNnz5RG40MVWb-cA21JPUdnrVMeSuF-31GGtCbAA; guestType=G|1606439276000; fiatsCookie=DSI_2213|DSN_Windsor|DSZ_06095; crl8.fpcuid=d1b3b01f-5e82-4e27-a64a-38db6cc946d6; criteo={%22criteo%22:%22z70HG4sCM8rQ1WExQTfOkxLvYwycood0%22}; targetMobileCookie=guestLogonId:null~guestDisplayName:null~guestHasVerifiedPhone:false; tlThirdPartyIds=%7B%22pt%22%3A%22v2%3A5b24811765659b4f1eb1470db4985986336b33bde2bf36cd9e4dc3b5e78736a9%7C9623645493ab08e99ae5235bb34b6094fba80050f81811dc3b57329d7e0beac7%22%2C%22adHubTS%22%3A%22Thu%20Nov%2026%202020%2020%3A07%3A57%20GMT-0500%20(Eastern%20Standard%20Time)%22%7D; ci_ref=tgt_adv_xasd0002; ci_pixmgr=imprad; ci_afid=Future%2520PLC.; ci_clkid=0e691701Nd0fe11eaa36c42010a246e29; _uetsid=fc7d31a0304c11ebadc3990ab54a6942; _uetvid=fc7d5210304c11eb80c24b3f50ef7002; ffsession={%22sessionHash%22:%221769a1b258fd001606439276144%22%2C%22sessionHit%22:16%2C%22prevPageType%22:%22product%20details%22%2C%22prevPageName%22:%22video%20games:%20product%20detail%22%2C%22prevPageUrl%22:%22https://www.target.com/p/playstation-5-console/-/A-81114595?clkid=0e691701Nd0fe11eaa36c42010a246e29&lnm=81938&afid=Future+PLC.&ref=tgt_adv_xasd0002&fbclid=IwAR0nES6JjnXudFQIFBF_37KY8r9S3mAzIFIOCCu38hLeNC2lJvo__XykLcg%22}; _gcl_au=1.1.629429629.1606439278; kampyleUserSession=1606439278453; kampyleUserSessionsCount=9; kampyleSessionPageCounter=1; cd_user_id=176073e17e5406-017158b029e7f5-326f7907-1ea000-176073e17e6e34' \
  --compressed -s > TargetConsole.htm`
  perl ../../StockCheckerTarget.pl TargetConsole.htm


# Target PS5 Controller (Generally in stock, tested for QA purposes)
  # `curl 'https://www.target.com/p/dualsense-wireless-controller-for-playstation-5/-/A-81114477' \
  # -H 'authority: www.target.com' \
  # -H 'pragma: no-cache' \
  # -H 'cache-control: no-cache' \
  # -H 'sec-ch-ua: "Chromium";v="86", "\"Not\\A;Brand";v="99", "Google Chrome";v="86"' \
  # -H 'sec-ch-ua-mobile: ?0' \
  # -H 'upgrade-insecure-requests: 1' \
  # -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36' \
  # -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  # -H 'sec-fetch-site: same-origin' \
  # -H 'sec-fetch-mode: navigate' \
  # -H 'sec-fetch-user: ?1' \
  # -H 'sec-fetch-dest: document' \
  # -H 'referer: https://www.target.com/' \
  # -H 'accept-language: en-US,en;q=0.9' \
  # -H 'cookie: TealeafAkaSid=HOEbdZEhzSxGGJSCe9nc5fCjaLD_ps5D; visitorId=0176073E0BF50201BB72B2A4215B74F1; sapphire=1; GuestLocation=06026|41.940|-72.730|CT|US; UserLocation=06026|41.940|-72.730|CT|US; adaptiveSessionId=A6924781930; accessToken=eyJraWQiOiJlYXMyIiwiYWxnIjoiUlMyNTYifQ.eyJzdWIiOiIwMDE3NTI5OS1jOTljLTRjMGMtOThlMi0yNGM3MWMzMTIzOWIiLCJpc3MiOiJNSTYiLCJleHAiOjE2MDY1MjU2NzYsImlhdCI6MTYwNjQzOTI3NiwianRpIjoiVEdULjBjYmI2ZTM4MTlmNjQ1ZTc4ZjRmMTkyNzRiOGMwOGQ4LWwiLCJza3kiOiJlYXMyIiwic3V0IjoiRyIsImRpZCI6IjE1NjU2NDcyY2ZhNjM2NTBkOTBlM2I0ZDI1YmIzYzYyYTUxNjFlYzYwYTJmNjNhMWE0MTBhMTNkZTEyMTFjMTIiLCJzY28iOiJlY29tLm5vbmUsb3BlbmlkIiwiY2xpIjoiZWNvbS13ZWItMS4wLjAiLCJhc2wiOiJMIn0.rA4WPiIgd7KY6cHKrbtiX9-vumXpdK6gp7lvAI3vqZ48RYWxMVzCncTq5t-wPZeRHU9cw-o4kpiJViqjRSd52M_x_KWxD5f-IZVkBMDwiLw4rmmrY_h-BwJuWEpSqtAAHDlQkkOxtdIQSfD4BvihPIxUnWP0TsGiWpdoglCwhSkTm7-STiIX-wPQiJKJ1MJL79U1OUEFot1VcmwV80iyrvxdHVc8bOTVQvk9kiOyQgoH5Iqt2yRkjrdT0G63xFn8K6h95CYHdIzNY0v5ISTTMTOHBR4StH0H0eHFoToEBEgWKnuQBwQSEWQw8Rbezu2-GURFqnJADQt50rXcYMimAw; idToken=eyJhbGciOiJub25lIn0.eyJzdWIiOiIwMDE3NTI5OS1jOTljLTRjMGMtOThlMi0yNGM3MWMzMTIzOWIiLCJpc3MiOiJNSTYiLCJleHAiOjE2MDY1MjU2NzYsImlhdCI6MTYwNjQzOTI3NiwiYXNzIjoiTCIsInN1dCI6IkciLCJjbGkiOiJlY29tLXdlYi0xLjAuMCIsInBybyI6eyJmbiI6bnVsbCwiZW0iOm51bGwsInBoIjpmYWxzZSwibGVkIjpudWxsLCJsdHkiOmZhbHNlfX0.; refreshToken=CKzu4iLrG7GHt-x1kFYV-KRCIhGmDHzxs82ECckzqK2DS_fNnz5RG40MVWb-cA21JPUdnrVMeSuF-31GGtCbAA; guestType=G|1606439276000; fiatsCookie=DSI_2213|DSN_Windsor|DSZ_06095; crl8.fpcuid=d1b3b01f-5e82-4e27-a64a-38db6cc946d6; criteo={%22criteo%22:%22z70HG4sCM8rQ1WExQTfOkxLvYwycood0%22}; tlThirdPartyIds=%7B%22pt%22%3A%22v2%3A5b24811765659b4f1eb1470db4985986336b33bde2bf36cd9e4dc3b5e78736a9%7C9623645493ab08e99ae5235bb34b6094fba80050f81811dc3b57329d7e0beac7%22%2C%22adHubTS%22%3A%22Thu%20Nov%2026%202020%2020%3A07%3A57%20GMT-0500%20(Eastern%20Standard%20Time)%22%7D; ci_ref=tgt_adv_xasd0002; ci_pixmgr=imprad; ci_afid=Future%2520PLC.; ci_clkid=0e691701Nd0fe11eaa36c42010a246e29; _gcl_au=1.1.629429629.1606439278; kampyleUserSession=1606439278453; kampyleUserSessionsCount=9; cd_user_id=176073e17e5406-017158b029e7f5-326f7907-1ea000-176073e17e6e34; targetMobileCookie=guestLogonId:null~guestDisplayName:null~guestHasVerifiedPhone:false; kampyleUserPercentile=22.342588452713773; kampyleSessionPageCounter=3; ffsession={%22sessionHash%22:%221769a1b258fd001606439276144%22%2C%22sessionHit%22:38%2C%22prevPageType%22:%22product%20details%22%2C%22prevPageName%22:%22video%20games:%20product%20detail%22%2C%22prevPageUrl%22:%22https://www.target.com/p/dualsense-wireless-controller-for-playstation-5/-/A-81114477%22}; _uetsid=fc7d31a0304c11ebadc3990ab54a6942; _uetvid=fc7d5210304c11eb80c24b3f50ef7002' \
  # --compressed -s > TargetController.htm`
  # perl ../../StockCheckerTarget.pl TargetController.htm


# New Egg PS5
`curl 'https://www.newegg.com/p/N82E16868110292?fbclid=IwAR37y7wThyNyqFp0QhDXkvgHmjfH-tYtfWd4Y_83ZP3FQW03Kn9lslgPrrw' \
  -H 'authority: www.newegg.com' \
  -H 'pragma: no-cache' \
  -H 'cache-control: no-cache' \
  -H 'sec-ch-ua: "Chromium";v="86", "\"Not\\A;Brand";v="99", "Google Chrome";v="86"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'sec-fetch-site: cross-site' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-user: ?1' \
  -H 'sec-fetch-dest: document' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cookie: NSC_mc-xxx.ofxfhh.dpn-vsmibti=30dfa3db36688360e7af813b634a25242e9e2044c3ec94ca0a6f4cf48312c1769611d4eb; NVTC=248326808.0001.9nftoz1t6.1606439845.1606439845.1606439845.1; NV%5FW57=USA; NV%5FW62=en; NV%5FCONFIGURATION=#5%7B%22Sites%22%3A%7B%22USA%22%3A%7B%22Values%22%3A%7B%22w58%22%3A%22USD%22%2C%22w61%22%3A%221637975846717%22%7D%2C%22Exp%22%3A86400000000%7D%7D%7D; usprivacy=1---; mt.v=2.1803908781.1606439847093; utag_main=v_id:01760746c4bf00d3d11e6a5418d003079006d07100b7e$_sn:1$_se:1$_ss:1$_st:1606441647105$ses_id:1606439847105%3Bexp-session$_pn:1%3Bexp-session; _ga=GA1.2.460770038.1606439847; _gid=GA1.2.1183414640.1606439847; _gat=1; mt.sc=%7B%22i%22%3A1606439847176%2C%22d%22%3A%5B%5D%7D; mt.visits=%7B%22lastVisit%22%3A1606439847237%2C%22visits%22%3A%5B1%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%5D%7D; _uetsid=4ffe19f0304e11eba0666bf3389629d4; _uetvid=4ffe2d20304e11eb82f8bd489471febc; nostojs=autoload; _fbc=fb.1.1606439847475.IwAR37y7wThyNyqFp0QhDXkvgHmjfH-tYtfWd4Y_83ZP3FQW03Kn9lslgPrrw; _fbp=fb.1.1606439847477.1215830403; NV_NVTCTIMESTAMP=1606439848; mp_newegg_mixpanel=%7B%22distinct_id%22%3A%20%221760746c6869db-0d065a425d1b07-326f7907-1ea000-1760746c687db2%22%2C%22bc_persist_updated%22%3A%201606439847561%2C%22customer_country%22%3A%20%22US%22%7D; _gcl_au=1.1.957716517.1606439848; 2c.cId=5fc053a760b24b96b03f2e40; AMCVS_1E15776A524450BC0A490D44%40AdobeOrg=1; s_ecid=MCMID%7C81224534272389107283431213838872756732; AMCV_1E15776A524450BC0A490D44%40AdobeOrg=870038026%7CMCIDTS%7C18594%7CMCMID%7C81224534272389107283431213838872756732%7CMCAAMLH-1607044647%7C9%7CMCAAMB-1607044647%7CRKhpRz8krg2tLO6pguXWp5olkAcUniQYPHaMWWgdJ3xzPWQmdj0y%7CMCOPTOUT-1606447047s%7CNONE%7CMCAID%7CNONE%7CvVersion%7C5.0.0; s_cc=true; NID=9D341j5z4M72725z8O0a9f154575038bc6b5da686a1f8b7878f; xyz_cr_100393_et_137==&cr=100393&wegc=&et=137&ap=; s_sess=%20s_cpc%3D1%3B%20c_m%3Dundefinedl.facebook.comOther%2520Natural%2520Referrersundefined%3B%20s_evar36%3Dreferring%257Cl.facebook.com%3B%20s_eVar37%3Dreferring%257Cl.facebook.com%3B%20s_campaign%3Dreferring%257Cl.facebook.com%3B; s_pers=%20s_ev19%3D%255B%255B%2527referring%25257Cl.facebook.com%2527%252C%25271606439847812%2527%255D%255D%7C1764206247812%3B%20s_vs%3D1%7C1606441648425%3B%20gpv_pv%3Dproduct%2520details%7C1606441648429%3B%20s_nr%3D1606439848432-New%7C1637975848432%3B%20gpvch%3Dproduct%7C1606441648434%3B; mt.mbsh=%7B%22fs%22%3A1606439848569%2C%22sf%22%3A1%2C%22lf%22%3A1606439848569%7D; stc118799=tsa:0:20201127014729|env:1%7C20201228011729%7C20201127014729%7C1%7C1083027:20211127011729|uid:1606439849653.323561237.9429908.118799.2020689725.:20211127011729|srchist:1083027%3A1%3A20201228011729:20211127011729; OptanonConsent=isIABGlobal=false&datestamp=Thu+Nov+26+2020+20%3A17%3A39+GMT-0500+(Eastern+Standard+Time)&version=6.6.0&hosts=&consentId=6325a210-0430-446e-a517-8874ec580dda&interactionCount=1&landingPath=https%3A%2F%2Fwww.newegg.com%2Fp%2FN82E16868110292%3Ffbclid%3DIwAR37y7wThyNyqFp0QhDXkvgHmjfH-tYtfWd4Y_83ZP3FQW03Kn9lslgPrrw&groups=C0001%3A1%2CC0003%3A1%2CC0002%3A1%2CC0004%3A1' \
  --compressed -s > NewEggConsole.htm`
    perl ../../StockCheckerNewEgg.pl NewEggConsole.htm


# Gamestop Console Bundle
  #   `curl 'https://www.gamestop.com/video-games/playstation-5/consoles/products/playstation-5-black-friday-system-bundle/B225169L.html' \
  # -H 'authority: www.gamestop.com' \
  # -H 'pragma: no-cache' \
  # -H 'cache-control: no-cache' \
  # -H 'sec-ch-ua: "Chromium";v="86", "\"Not\\A;Brand";v="99", "Google Chrome";v="86"' \
  # -H 'sec-ch-ua-mobile: ?0' \
  # -H 'upgrade-insecure-requests: 1' \
  # -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36' \
  # -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  # -H 'sec-fetch-site: same-origin' \
  # -H 'sec-fetch-mode: navigate' \
  # -H 'sec-fetch-user: ?1' \
  # -H 'sec-fetch-dest: document' \
  # -H 'referer: https://www.gamestop.com/video-games/playstation-5/consoles' \
  # -H 'accept-language: en-US,en;q=0.9' \
  # -H $'cookie: akaas_ChatThrottling=2147483647~rv=5~id=c94bbb630456a455804b55a83840e93c~rn=; __cfduid=d123c4b4daa0b92f30ef8d7639b3b9cd41606453065; _caid=b180c712-cc86-46ef-80cb-3421a0b0cf7f; _gcl_au=1.1.2142395287.1606453066; RES_TRACKINGID=28844476756035460; ResonanceSegment=1; _mibhv=anon-1606453065853-1351726623_6874; _ga=GA1.2.1931870302.1606453066; _gid=GA1.2.388976341.1606453066; cquid=||; customergroups=Everyone; userInfo=S=N|R=N|C=0; __cq_dnt=0; dw_dnt=0; _fbp=fb.1.1606453066964.929074534; cqcid=bdOdbFCdaglnmRacka10AQY5rC; dwanonymous_420142ceefb9f0c103b3815e84e9fcef=bdOdbFCdaglnmRacka10AQY5rC; __cq_uuid=abhTD6V0sO8EkbxZm1Ytt1e2Su; sto__vuid=bc639773030f75e237b7f49a0e05159c; QuantumMetricUserID=dbb8ddf8ca3a8765f85c13c028a1c98a; _aeaid=7b6d3e61-1a79-4559-8441-bdd24f7df17a; aeatstartmessage=true; BVBRANDID=4029d5ad-26d5-4076-8045-1f3ef7445b22; BVImplsfcc=9014_3_0; salsify_session_id=1350c8e1-14be-4013-af4f-4a72d56755ef; __cq_seg=0~0.00\u00211~0.00\u00212~0.00\u00213~0.00\u00214~0.00\u00215~0.00\u00216~0.00\u00217~0.00\u00218~0.00\u00219~0.00; lastVisitedCgid=pc-mice; QSI_HistorySession=https%3A%2F%2Fwww.gamestop.com%2F~1606453069957%7Chttps%3A%2F%2Fwww.gamestop.com%2Fvideo-games%2Fplaystation-5~1606453165934%7Chttps%3A%2F%2Fwww.gamestop.com%2Fsearch%2F%3Fq%3Dstar%2Btrek%26lang%3Ddefault~1606453281805%7Chttps%3A%2F%2Fwww.gamestop.com%2Fvideo-games%2Fplaystation-5%2Fconsoles%2Fproducts%2Fplaystation-5-digital-edition%2F11108141.html%3Fcondition%3DNew~1606453593999%7Chttps%3A%2F%2Fwww.gamestop.com%2Fvideo-games%2Fpc%2Faccessories%2Fmice-and-mouse-pads%3Fprefn1%3DavailabilityFilter%26prefv1%3DshipsIn24Hours%26q%3D%2522bf2020all%2522~1606457328139; QuantumMetricSessionID=d47e8f706df4d9b6a39e883fdae44b84; bm_sz=FD3626AB6776CF2E428D566B6C7F172D~YAAQ9fzDF2uJVfd1AQAAUd2iCwn/Aep43q2m3YKLcUy5+2Sq5X9WAxErZXQMHmQ2xoarxEre3GBF3rgSLT3ay2ZZ2q4mZ8d/qtznbNiNfmPi7qkr+450oz0eB+G8ZHqpzxLY0Lb2yRatTwoT+svRCrRP4gJKtKEbnzErB+jU10LqHkzYjrW2BtpNZWU0cxbjyHc=; _cavisit=1760ba2e00b|; RES_SESSIONID=37899728529921560; BVBRANDSID=b357294b-bea0-47d5-b698-9f94d4bd9875; dwac_a78eb5a11975e4c9cbc84f55ad=ELZxK-qIkEimOIfAN8Oythdm4g6gn_qp6rg%3D|dw-only|||USD|false|US%2FCentral|true; sid=ELZxK-qIkEimOIfAN8Oythdm4g6gn_qp6rg; dwsid=ABgCKniw6_QlfxgBuSYyUgfIkQ8yp4EVaf-TQTn-ZhSkgBjHb-aA1Xz-ezU5yitEoALjac-7eb_pZAfCWAngbg==; ak_bmsc=F8BC56DA3E5716278348AB4980D5C3A717C3FCF5B44100005F71C15FEF067E2D~pl/Nc0VSwIg9+XNpGyb9Cd3YRs1rbhmwhC0EBv4BaZJBS9tCXfkMuqwucuZsD41VFo4Ua4qbwcMEAlNYE4fRQQfT9FQoQrXrKy8QHnAMom7vNSTHGs6WhqRpt4X+q3t6hTWIu3upRrHGnMoWw2ahJuyvCrkdlPwOxnm0zqMGYmSZKWVWEIg+RNsZTLy43rivnmaJndy5wbymJR5tg6sK3VvUNS26bCqx0hPD420HK4jUHlcKDHpCZlddxGkJRtvGBi; bm_mi=554BB99BF4EE243DE36333057547B1EA~7Jx5NrmYpitet/wtsldxnJxOyJu+eBJ1XbLpPbI1ctMloQAv1jhhtu5ziO4QiULL1d2m3K1I30xcjJYLZ1PTPh2vfnixNqy1JSEUSqeatXfe832Qefcqfj2BWlMRsjpRXmgvfgkMRTuSyewh+lryxafoIx5N+Mom9Gv4Y8Fn6kI8t2IDJG7quMNG9MNs/ioz/vafYwc/WeV4BZcUsQWc+T7UXxsp+eCcgFL8aKvkQGYfwv6tvx8/2pPHVcCYJxyDcotDcJPrvn6P0klIpF9qig==; _gat_UA-10897913-30=1; sto__session=1606512994162; RT="z=1&dm=gamestop.com&si=jew8gs6okbl&ss=ki0scv9l&sl=0&tt=0"; _uetsid=16da0c60306d11ebb517bd0d9cf4cc2a; _uetvid=16da27d0306d11eba1360755eefb537c; stc118903=env:1606512993%7C20201228213633%7C20201127220718%7C9%7C1084111:20211127213718|uid:1606453067165.965365809.3481216.118903.2012425698.:20211127213718|srchist:1084111%3A1606512993%3A20201228213633:20211127213718|tsa:1606512993074.546840645.6343789.9817865795032119.1:20201127220718; _abck=26EDD84BED3F6898B53D614E2EB65A66~-1~YAAQ9fzDFz+RVfd1AQAADZWjCwQ7CHHfG+26Ju1k9+1g1L+Kt2QCHZny/o3ZhLwScxmi9t3VFJGe3mx0vBkpVou6oSEH/Wt1UOvDYHI2uundddoaQ/v4z9Q9tbEamxiKfrYsBc81X1vvanqzdIGNJMx7FNBQf9bleGTDrnnZjTfEgQjRIMVikLgiNA+TPBwMl3C7vYySXAhHnLg5mXJfPQT5cMQPnRGLtE+aF0w748V25e2lyMkCJpkCwhtsyX8Pg0np08+2RGk1xd1KmwH42grCzJ6lBm15X2uLbP9ZPbgh5qrEGBuAJJqZsLeUE+fD1/NasoCvPHjO322ov2TG9ISJ2mvNmcTnRewR8qSP/L1WADJonA==~-1~-1~-1; bm_sv=F3419C246695698BCD222E207C8123CA~wCVThhGdc8mWNHjCtic8Lp12drPHFsEnl1nW8brfBG0U4Tqsb5NFEX69RiMQLXPKjIvX0hetouXiQBxIksvSOl+Z9aUPALZ7zyFYpDV/zTh3V2V5oOWIxDST9y0UnlnQjnlVwONSEtAkQkXQqbZiT4ouqCLm2Vf+Ss+XVod8z4k=; __cq_bc=%7B%22bcpk-gamestop-us%22%3A%5B%7B%22id%22%3A%22B225169L%22%7D%2C%7B%22id%22%3A%2211108140%22%7D%2C%7B%22id%22%3A%2211108141%22%7D%2C%7B%22id%22%3A%2211050616%22%7D%2C%7B%22id%22%3A%2211047090%22%7D%2C%7B%22id%22%3A%2211049353%22%7D%5D%7D; sto__count=7; QSI_S_SI_3wI8Q9U6pfO1aAZ=r:25:19' \
  # --compressed -s > GamestopConsole.htm`

  # perl ../../StockCheckerGamestop.pl GamestopConsole.htm

# Gamestop Console Only
  `curl 'https://www.gamestop.com/video-games/playstation-5/consoles/products/playstation-5/11108140.html?condition=New' \
  -H 'authority: www.gamestop.com' \
  -H 'pragma: no-cache' \
  -H 'cache-control: no-cache' \
  -H 'sec-ch-ua: "Chromium";v="86", "\"Not\\A;Brand";v="99", "Google Chrome";v="86"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-user: ?1' \
  -H 'sec-fetch-dest: document' \
  -H 'referer: https://www.gamestop.com/video-games/playstation-5/consoles' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H $'cookie: akaas_ChatThrottling=2147483647~rv=5~id=c94bbb630456a455804b55a83840e93c~rn=; __cfduid=d123c4b4daa0b92f30ef8d7639b3b9cd41606453065; _caid=b180c712-cc86-46ef-80cb-3421a0b0cf7f; _gcl_au=1.1.2142395287.1606453066; RES_TRACKINGID=28844476756035460; ResonanceSegment=1; _mibhv=anon-1606453065853-1351726623_6874; _ga=GA1.2.1931870302.1606453066; _gid=GA1.2.388976341.1606453066; cquid=||; customergroups=Everyone; userInfo=S=N|R=N|C=0; __cq_dnt=0; dw_dnt=0; _fbp=fb.1.1606453066964.929074534; cqcid=bdOdbFCdaglnmRacka10AQY5rC; dwanonymous_420142ceefb9f0c103b3815e84e9fcef=bdOdbFCdaglnmRacka10AQY5rC; __cq_uuid=abhTD6V0sO8EkbxZm1Ytt1e2Su; sto__vuid=bc639773030f75e237b7f49a0e05159c; QuantumMetricUserID=dbb8ddf8ca3a8765f85c13c028a1c98a; _aeaid=7b6d3e61-1a79-4559-8441-bdd24f7df17a; aeatstartmessage=true; BVBRANDID=4029d5ad-26d5-4076-8045-1f3ef7445b22; BVImplsfcc=9014_3_0; salsify_session_id=1350c8e1-14be-4013-af4f-4a72d56755ef; __cq_seg=0~0.00\u00211~0.00\u00212~0.00\u00213~0.00\u00214~0.00\u00215~0.00\u00216~0.00\u00217~0.00\u00218~0.00\u00219~0.00; lastVisitedCgid=pc-mice; QuantumMetricSessionID=d47e8f706df4d9b6a39e883fdae44b84; bm_sz=FD3626AB6776CF2E428D566B6C7F172D~YAAQ9fzDF2uJVfd1AQAAUd2iCwn/Aep43q2m3YKLcUy5+2Sq5X9WAxErZXQMHmQ2xoarxEre3GBF3rgSLT3ay2ZZ2q4mZ8d/qtznbNiNfmPi7qkr+450oz0eB+G8ZHqpzxLY0Lb2yRatTwoT+svRCrRP4gJKtKEbnzErB+jU10LqHkzYjrW2BtpNZWU0cxbjyHc=; _cavisit=1760ba2e00b|; RES_SESSIONID=37899728529921560; BVBRANDSID=b357294b-bea0-47d5-b698-9f94d4bd9875; dwac_a78eb5a11975e4c9cbc84f55ad=ELZxK-qIkEimOIfAN8Oythdm4g6gn_qp6rg%3D|dw-only|||USD|false|US%2FCentral|true; sid=ELZxK-qIkEimOIfAN8Oythdm4g6gn_qp6rg; dwsid=ABgCKniw6_QlfxgBuSYyUgfIkQ8yp4EVaf-TQTn-ZhSkgBjHb-aA1Xz-ezU5yitEoALjac-7eb_pZAfCWAngbg==; ak_bmsc=F8BC56DA3E5716278348AB4980D5C3A717C3FCF5B44100005F71C15FEF067E2D~pl/Nc0VSwIg9+XNpGyb9Cd3YRs1rbhmwhC0EBv4BaZJBS9tCXfkMuqwucuZsD41VFo4Ua4qbwcMEAlNYE4fRQQfT9FQoQrXrKy8QHnAMom7vNSTHGs6WhqRpt4X+q3t6hTWIu3upRrHGnMoWw2ahJuyvCrkdlPwOxnm0zqMGYmSZKWVWEIg+RNsZTLy43rivnmaJndy5wbymJR5tg6sK3VvUNS26bCqx0hPD420HK4jUHlcKDHpCZlddxGkJRtvGBi; bm_mi=554BB99BF4EE243DE36333057547B1EA~7Jx5NrmYpitet/wtsldxnJxOyJu+eBJ1XbLpPbI1ctMloQAv1jhhtu5ziO4QiULL1d2m3K1I30xcjJYLZ1PTPh2vfnixNqy1JSEUSqeatXfe832Qefcqfj2BWlMRsjpRXmgvfgkMRTuSyewh+lryxafoIx5N+Mom9Gv4Y8Fn6kI8t2IDJG7quMNG9MNs/ioz/vafYwc/WeV4BZcUsQWc+T7UXxsp+eCcgFL8aKvkQGYfwv6tvx8/2pPHVcCYJxyDcotDcJPrvn6P0klIpF9qig==; sto__session=1606512994162; QSI_HistorySession=https%3A%2F%2Fwww.gamestop.com%2F~1606453069957%7Chttps%3A%2F%2Fwww.gamestop.com%2Fvideo-games%2Fplaystation-5~1606453165934%7Chttps%3A%2F%2Fwww.gamestop.com%2Fsearch%2F%3Fq%3Dstar%2Btrek%26lang%3Ddefault~1606453281805%7Chttps%3A%2F%2Fwww.gamestop.com%2Fvideo-games%2Fplaystation-5%2Fconsoles%2Fproducts%2Fplaystation-5-digital-edition%2F11108141.html%3Fcondition%3DNew~1606453593999%7Chttps%3A%2F%2Fwww.gamestop.com%2Fvideo-games%2Fpc%2Faccessories%2Fmice-and-mouse-pads%3Fprefn1%3DavailabilityFilter%26prefv1%3DshipsIn24Hours%26q%3D%2522bf2020all%2522~1606457328139%7Chttps%3A%2F%2Fwww.gamestop.com%2Fvideo-games%2Fplaystation-5%2Fconsoles%2Fproducts%2Fplaystation-5-black-friday-system-bundle%2FB225169L.html~1606513296046; _gat_UA-10897913-30=1; RT="z=1&dm=gamestop.com&si=hj6ksea39d&ss=ki0scv9l&sl=0&tt=0"; _uetsid=16da0c60306d11ebb517bd0d9cf4cc2a; _uetvid=16da27d0306d11eba1360755eefb537c; stc118903=env:1606512993%7C20201228213633%7C20201127221322%7C16%7C1084111:20211127214322|uid:1606453067165.965365809.3481216.118903.2012425698.:20211127214322|srchist:1084111%3A1606512993%3A20201228213633:20211127214322|tsa:1606512993074.546840645.6343789.9817865795032119.1:20201127221322; __cq_bc=%7B%22bcpk-gamestop-us%22%3A%5B%7B%22id%22%3A%2211108140%22%7D%2C%7B%22id%22%3A%22B225169L%22%7D%2C%7B%22id%22%3A%2211108141%22%7D%2C%7B%22id%22%3A%2211050616%22%7D%2C%7B%22id%22%3A%2211047090%22%7D%2C%7B%22id%22%3A%2211049353%22%7D%5D%7D; _abck=26EDD84BED3F6898B53D614E2EB65A66~-1~YAAQt/zDF+vaG/d1AQAAICSpCwSbJ6oEFltVE0ukcTQQz4Vloz399g7J/55T/kltdDSaMSqyN/Hn1BbzXY9UXAa2K8EFUXoZtDmH08jUnmP3qUx6wKWVrbI+l6IJW95ztdslzqz89IWXVtxzrE/3MakpMlqSnxEPC5w0kn8O9Z42VM+VBnCFN+tIauXUhYem6B8mD4O9wt1kwPd740cV4NuhvyEyCtIfQBgE6B7S6ftic2ODuECm/wDvDndM+RyRl8MtfNzlM18bhS4EEe9GEUO3qGpEu0tviXUpc8rfMVyqerZw+OYTg6TVZzlLZ80SnXERNkvys0FEqj/C6kxz34NW3qiZs1zhHgfXhBP1bz+g8b+p/g==~-1~-1~-1; sto__count=14; QSI_S_SI_3wI8Q9U6pfO1aAZ=r:25:22; bm_sv=F3419C246695698BCD222E207C8123CA~wCVThhGdc8mWNHjCtic8Lp12drPHFsEnl1nW8brfBG0U4Tqsb5NFEX69RiMQLXPKjIvX0hetouXiQBxIksvSOl+Z9aUPALZ7zyFYpDV/zTjJPVRyNhHbxXi7FNxnW3BTFuNvv8hRtjWi9Yv+SOA8c9AOi3qS7SO9R1fM29b6vaA=' \
  --compressed -s > GamestopConsoleAlone.htm`

 perl ../../StockCheckerGamestop.pl GamestopConsoleAlone.htm

# Move back to execution folder to allow easier re-run
cd ..
cd ..

# echo "Download Complete"

# open ./mp3s
