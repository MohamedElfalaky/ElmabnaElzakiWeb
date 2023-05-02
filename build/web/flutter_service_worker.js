'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "6bb052febf7af90ce5e324e6d83eb0c2",
"index.html": "06b3c325ccbbca16c4742e0454009ac2",
"/": "06b3c325ccbbca16c4742e0454009ac2",
"main.dart.js": "560f674df9224b1c61c6f883cd812b4b",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"favicon.png": "90a5fffb848e42ac7cf765b3ff2b0cff",
"main-icon.png": "c370845c5ec846895a0656f4555c14a3",
"manifest.json": "7e1deba346e4b78b2b6b9744bdfb1a3b",
"assets/AssetManifest.json": "c8aadd0088ab8b2eb7c0e770f817168b",
"assets/NOTICES": "312776cdbabb38322841fb38a0524642",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/copyright.svg": "dcacc7f8db9e7d68b277d97394d43252",
"assets/assets/aboutUs/about2.svg": "ba9ad45d791b05e1e91011f2ebcf404a",
"assets/assets/aboutUs/about3.svg": "51267a4c7fde1fc0bcb0270b74ba7634",
"assets/assets/aboutUs/about1.svg": "aec0cc1efec03c522dd7c1a3aeebc835",
"assets/assets/why/why4.png": "cfd44359c38f80536885db260468e089",
"assets/assets/why/why5.png": "71b92f4c229abeefdac800a4ab47b546",
"assets/assets/why/why7.png": "fd2387d42dce7445632d4d6d3b8e9e4b",
"assets/assets/why/why6.png": "cb65ba829cb16e309f67f4e8601171f0",
"assets/assets/why/why2.png": "7f0d914f179e5389d74b9fdcb96f9bb5",
"assets/assets/why/why3.png": "5dcc8861ef4ed1b92d1d8aac33abfec8",
"assets/assets/why/why1.png": "d3779755ba6ffe71be84bb18a4b965cd",
"assets/assets/qrCode.png": "e5416c453a39e13a6c564e95e6c61a62",
"assets/assets/8.png": "771a6359a196501a6225eab8294c8b85",
"assets/assets/eree.json": "cc96a35a40baf28bdd7428d443461ddb",
"assets/assets/9.png": "1285a52c3aec4be51791d82e49f2048c",
"assets/assets/helloSah.png": "5237145a7ba683f8b6b1208fc4dd8fe1",
"assets/assets/zahlogo.jpeg": "527f939242546a26807c3918322e2b04",
"assets/assets/web2.json": "c2a515fda835c740cfde7c82b13bd50b",
"assets/assets/12.png": "e99d8d81022fad0d452b105ce11c86c3",
"assets/assets/mobileapp.json": "ada5cbbe628a7911c85048a2c162dd01",
"assets/assets/11.png": "40dd5a0cb7912c82c9d16ff4837fc3e6",
"assets/assets/email.svg": "a0e5aea8ce2aaa4a3a6bcec56032cf71",
"assets/assets/10.png": "ac40b378ccd265ca907fa4801aba00f5",
"assets/assets/web.json": "06f693ad197c74c5dcfa9fbda92a9d9c",
"assets/assets/social/copyright.svg": "dcacc7f8db9e7d68b277d97394d43252",
"assets/assets/social/email.svg": "a0e5aea8ce2aaa4a3a6bcec56032cf71",
"assets/assets/social/phone-call.svg": "60acd252a8f56e884d45a522bd0f7147",
"assets/assets/social/whatsapp.svg": "f53ce46b576e4e5c37b62c42f9a49b2e",
"assets/assets/social/location.svg": "4d854a3d0aace666b3a0430a7029b636",
"assets/assets/social/calendar.svg": "8bb513804f80c577e18bbbff808a5fae",
"assets/assets/phone-call.svg": "60acd252a8f56e884d45a522bd0f7147",
"assets/assets/whatsapp.svg": "f53ce46b576e4e5c37b62c42f9a49b2e",
"assets/assets/contactUs.png": "d926f3e39b3caae82a0785c99f34ab04",
"assets/assets/4.png": "4f9d557e1f59147f83c34fdaa26ba78c",
"assets/assets/location.svg": "4d854a3d0aace666b3a0430a7029b636",
"assets/assets/5.png": "c5b8ea3a879d590dd3b384f06805dd1f",
"assets/assets/7.png": "23858e933bd8fcff93dd25192d081108",
"assets/assets/Calendar.svg": "8bb513804f80c577e18bbbff808a5fae",
"assets/assets/6.png": "fb05cc8293bb0905b828aa99c3fefd81",
"assets/assets/2.png": "537bcbb5ea5772b4ab8449f2705a7c1d",
"assets/assets/3.png": "d63bb94ed3941482ee11e0a36f2d180e",
"assets/assets/1.png": "132cba0d09b50bdd52e7d286c673b004",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
