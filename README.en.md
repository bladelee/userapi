SimpleCos

SimpleCos is a simple software application tolls on consumption customer minutes . Currently have the ability to manage multiple terminals through freeswitch xml_curl and mod_nibble_curl module for remote Tarificacion .
Features

    Rails 3.2.8
    Thin (recommended)

Administration Features

    Gestion multiple terminals freeswitch With Charge distributed
    Management accounts and consumer customers .
    Scheme for customers.
    simple CDR

Features Customers

    Request a refill , consumption
    CDR daily, weekly and monthly .
    Last 10 calls. ( not yet implemented)

recommendations

    You must Ensure That the " accept- blind- reg " is September parameter to " false" in sofia.conf.xml , web Otherwise your application will not get called .

demons

    start scripts / CDR delayed_jobs
    rake log daemon : monitor : start to monitor customer accounts

Freeswitch

    Modules : mod_nibblebill_curl , mod_xml_curl , mod_xml_cdr , mod_limit
    Audios : { i18 } / overthelimit.wav , { i18n } / no_more_funds.wav

configuration

    Enable mod_xml_curl module , configured to point to : app / dialplan.xml , app / directory.xml , app / configuration.xml
    compile and activate mod_nibblebill_curl module , configure : url_lookup = > app / bill / $ { nibble_account } , url_save = > app / bill / $ { nibble_account }