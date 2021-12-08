const fetch = require('node-fetch');

fetch("https://www.bestbuy.com/site/microsoft-controller-for-xbox-series-x-xbox-series-s-and-xbox-one-latest-model-carbon-black/6430655.p?skuId=6430655", {
  "headers": {
    "accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
    "accept-language": "en-US,en;q=0.9",
    "cache-control": "no-cache",
    "pragma": "no-cache",
    "sec-ch-ua": "\"Chromium\";v=\"86\", \"\\\"Not\\\\A;Brand\";v=\"99\", \"Google Chrome\";v=\"86\"",
    "sec-ch-ua-mobile": "?0",
    "sec-fetch-dest": "document",
    "sec-fetch-mode": "navigate",
    "sec-fetch-site": "same-origin",
    "sec-fetch-user": "?1",
    "upgrade-insecure-requests": "1",
    "cookie": "tfs_upg=true; tfs_upg=true; UID=9776ccd2-80ae-4904-be60-4a94c04be105; oid=1723412917; optimizelyEndUserId=oeu1590947307610r0.9216782938138322; vt=f1458c3f-a366-11ea-8e9b-12819f37f54d; s_ecid=MCMID%7C80901005036657981333414591764691259649; _cs_c=1; ui=1590947385788; G_ENABLED_IDPS=google; pt=41462534; DYN_USER_CONFIRM=a73f276c7dac31933b77c64a9041fe1b; DYN_USER_ID=ATG13432619882; ut=753850f4-eb67-11e2-a88a-00505692405b; CTT=dd804c23db9b8f5b53036206ce8bd3a6; partner=P10T12R109%26BODY%262020-10-14+15%3A07%3A40.326; pst2=484|N; locStoreId=484; campaign_date=1602706069638; campaign=P10T12R109,BODY; aamoptsegs=aam%3D9369139; aam_uuid=87480637531110284392756628720280647715; 52245=; _gcl_au=1.1.544250689.1602706072; _cs_ex=1602104015; _abck=A46848818D2F93CC83021C531022316D~0~YAAQPw3orBFZaa11AQAAc4AZuASYjofVfTH7bazfSnv4WS+kRYLn4OvPt5B+7w9i43NmCryaSquNTczpGmPl1oI7vr13eH+1Kht6xEJHSuHRjwRDRMpQ1uvBRU7u6TlgnGOSLx20cVs0yczO1XsSedwFyJMH7dLh9iReA4IqL7wV4MoUu5qACEUFbJ8KyhcVQo04P4hrUqPLZ05hygOoX4OW4ROTDnikSo2ne5V1ohCfaa33wW/Mszpxsu863GIl2NNoxDgGjv+eanOSmiQZ9Pbkfhbd9r9xdTPXPJKCioOnr5FKxv+YKdHgdzwtDB459LpmgmDa6Rs=~-1~-1~-1; locDestZip=06095; at=eyJhY2Nlc3NUb2tlbiI6IllXTXRkMnBvekNRNUVldWppdzU5M05OYjd6aGdTTUo4Z3NoRTI1aktvVWJ0LWtaZTNVNXBBQUFBQUFBQUFBQSIsInRpbWVUb0xpdmUiOjE4MDAsImlzc3VlZFRpbWVzdGFtcCI6MTYwNTExMTQ4MDAxMywiYXNzZXJ0aW9uIjoidTp3RlN3LW9JZmY1by1TOWhvUGpqeUVIZVk2YmUxVGlwZTJzeGdXdXFsZ2NrIiwicHJpbmNpcGFsIjoidTp3RlN3LW9JZmY1by1TOWhvUGpqeUVIZVk2YmUxVGlwZTJzeGdXdXFsZ2NrIiwicHJpbmNpcGFsSWRlbnRpZmllciI6Ijc1Mzg1MGY0LWViNjctMTFlMi1hODhhLTAwNTA1NjkyNDA1YiIsImNvbnN1bWFibGUiOmZhbHNlLCJ2ZXJzaW9uIjoiMS4wIn0.oejNQeGeUaaPF23EOkDsaG1Uhn-Gm3n_lvlkphix9IQ9PSrCsLkw1K4s_PKlAtQ6-lKoZtYAAFUq4XFkWAf5Ow; SID=cc36598d-ee04-41a4-95a2-1b9735ce30ba; physical_dma=521; customerZipCode=02901|N; bm_sz=E7F3548445B8B925A107B284C6A5637E~YAAQxPzDF3tyIgR2AQAAvTHpBgkxG6eeZme9dRBuzGVNwPXysjplayUKZ5SwNdew2+Cz7u+LXJ76GqBxRNbW2OC+zg4QGdD5Y3T5JoKfbv2/BvZCudVB+Z1VYI8FI4xoS8T7vYVFKkuPWeruB1pY/Tq0HZdGASIU/eHkVdXXVh/ddrvRR2wDpfYYsUWrgXMX; bby_rdp=l; rxVisitor=1606433715599QPAB3LD1MGTDMIL96ABO620JG4VNTOAC; COM_TEST_FIX=2020-11-26T23:35:16.116Z; basketTimestamp=1606402288309; tfs_upg=true; dtCookie=v_4_srv_2_sn_ITF74V43SAHON31GEUMNQATOA256FKUV_app-3A1b02c17e3de73d2a_1_ol_0_perc_100000_mul_1; AMCVS_F6301253512D2BDB0A490D45%40AdobeOrg=1; AMCV_F6301253512D2BDB0A490D45%40AdobeOrg=1585540135%7CMCMID%7C80901005036657981333414591764691259649%7CMCAAMLH-1607038524%7C9%7CMCAAMB-1607038524%7CRKhpRz8krg2tLO6pguXWp5olkAcUniQYPHaMWWgdJ3xzPWQmdj0y%7CMCOPTOUT-1606440924s%7CNONE%7CMCAID%7CNONE%7CMCCIDH%7C-1435408033%7CvVersion%7C4.4.0; _cs_mk=0.5846612419725017_1606433724607; s_cc=true; lastSearchTerm=ps5%20console; listFacets=undefined; CTE22=T; CRTOABE=1; s_sq=%5B%5BB%5D%5D; bby_cbc_lb=p-browse-e; ltc=10150; bby_prc_lb=p-prc-e; dtSa=-; sc-location-v2=%7B%22meta%22%3A%7B%22CreatedAt%22%3A%222020-05-31T17%3A48%3A33.382Z%22%2C%22ModifiedAt%22%3A%222020-11-27T00%3A15%3A38.662Z%22%2C%22ExpiresAt%22%3A%222021-11-27T00%3A15%3A38.662Z%22%7D%2C%22value%22%3A%22%7B%5C%22physical%5C%22%3A%7B%5C%22zipCode%5C%22%3A%5C%2206095%5C%22%2C%5C%22source%5C%22%3A%5C%22C%5C%22%2C%5C%22captureTime%5C%22%3A%5C%222020-11-27T00%3A15%3A38.035Z%5C%22%7D%2C%5C%22store%5C%22%3A%7B%5C%22zipCode%5C%22%3A%5C%2206042%5C%22%2C%5C%22storeId%5C%22%3A%5C%22484%5C%22%2C%5C%22storeHydratedCaptureTime%5C%22%3A%5C%222020-11-27T00%3A15%3A38.661Z%5C%22%2C%5C%22userToken%5C%22%3A%5C%22753850f4-eb67-11e2-a88a-00505692405b%5C%22%7D%2C%5C%22destination%5C%22%3A%7B%5C%22zipCode%5C%22%3A%5C%2206095%5C%22%7D%7D%22%7D; dtPC=2$236135844_698h-vGFCGPWGUMPWWHLDCAUJCBPSMGHUFTGKN-0e14; rxvt=1606437939547|1606433715601; c2=Video%20Games%3A%20Xbox%20Series%20X%7CS%3A%20Xbox%20Series%20X%7CS%20Controllers%3A%20pdp; dtLatC=2"
  },
  "referrer": "https://www.bestbuy.com/site/sony-playstation-5-console/6426149.p?skuId=6426149",
  "referrerPolicy": "strict-origin-when-cross-origin",
  "body": null,
  "method": "GET",
  "mode": "cors"
}).then(res => res.text())
.then(body => console.log(body));

// fetch('https://github.com/')
//     .then(res => res.text())
//     .then(body => console.log(body));