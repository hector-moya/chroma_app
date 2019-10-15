self.addEventListener('install', function (event) {
    // Perform install steps
    var CACHE_NAME = 'my-site-cache-v1';
    var urlsToCache = [
        '/',
        'assets/css/app.css',
        'assets/js/script.js',
        'assets/js/app.js'
    ];

    self.addEventListener('install', function (event) {
        // Perform install steps
        event.waitUntil(
            caches.open(CACHE_NAME)
                .then(function (cache) {
                    console.log('Opened cache');
                    return cache.addAll(urlsToCache);
                })
        );
    });
});