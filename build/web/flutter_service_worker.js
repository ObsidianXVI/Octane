'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "c4cb76154eeb88f76fc676303fae92bb",
"index.html": "0fb4f2887d00fe75cfa553b11176167d",
"/": "0fb4f2887d00fe75cfa553b11176167d",
"main.dart.js": "33b1955f2fa586b0e9cdcd540156661a",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "bfe5344fee7874458b7dec6e91b04bdd",
"assets/AssetManifest.json": "96326f785d58afe6da712dff42a4ac7d",
"assets/NOTICES": "b69b9b54d53e38cf5f095519bdd54f7e",
"assets/FontManifest.json": "80128cddd745f72e77341393dfaa676a",
"assets/shaders/ink_sparkle.frag": "00bed695b6b6f68c462770ab1022af9c",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/assets/fonts/fraunces/standard/Fraunces_144pt-LightItalic.ttf": "99392d707f25af5f7c3ae1d0bf97da7c",
"assets/assets/fonts/fraunces/standard/Fraunces_144pt-Black.ttf": "c4374e16b1fb2bb5c2d6620f0a576170",
"assets/assets/fonts/fraunces/standard/Fraunces_144pt-Thin.ttf": "291c0b6d1b57f3aff28dfcffb5a1b125",
"assets/assets/fonts/fraunces/standard/Fraunces_144pt-BlackItalic.ttf": "725dd2bb4f04ac4be2e6e29163a47de5",
"assets/assets/fonts/fraunces/standard/Fraunces_144pt-Regular.ttf": "fdce361bc596b52151629a930f0861ed",
"assets/assets/fonts/fraunces/standard/Fraunces_144pt-Bold.ttf": "da5becfdcfd78fb4a5fd7fe47538969f",
"assets/assets/fonts/fraunces/standard/Fraunces_144pt-SemiBoldItalic.ttf": "fe286e6db8ef2a679d0ec49476c8249c",
"assets/assets/fonts/fraunces/standard/Fraunces_144pt-ThinItalic.ttf": "6af3e98de1fca9eeccf556263229d9ea",
"assets/assets/fonts/fraunces/standard/Fraunces_144pt-BoldItalic.ttf": "a1ab2ce6fa1598e3e28ed855ec8ba651",
"assets/assets/fonts/fraunces/standard/Fraunces_144pt-Light.ttf": "e96e0b08c1f76e69dd4941347006aa72",
"assets/assets/fonts/fraunces/standard/Fraunces_144pt-SemiBold.ttf": "cffed12940dbc2d04ee82d4f210bacc2",
"assets/assets/fonts/fraunces/soft/Fraunces_144pt_Soft-ThinItalic.ttf": "2352ab869836587bba359b81c3edf0c4",
"assets/assets/fonts/fraunces/soft/Fraunces_144pt_Soft-BoldItalic.ttf": "e00438957d8eec4ade7f28f4ec3ab004",
"assets/assets/fonts/fraunces/soft/Fraunces_144pt_Soft-SemiBoldItalic.ttf": "4495382dabe9cb3e1bcba989d269a585",
"assets/assets/fonts/fraunces/soft/Fraunces_144pt_Soft-Black.ttf": "295f234f1d9d1df89acddf734b691de3",
"assets/assets/fonts/fraunces/soft/Fraunces_144pt_Soft-LightItalic.ttf": "73653d73a05ef59676827e767aae36a7",
"assets/assets/fonts/fraunces/soft/Fraunces_144pt_Soft-Thin.ttf": "f79c0f10f62788ffb15a31d9a8af1af9",
"assets/assets/fonts/fraunces/soft/Fraunces_144pt_Soft-Light.ttf": "7d82d8e8cfd88a9a2798f19eff603149",
"assets/assets/fonts/fraunces/soft/Fraunces_144pt_Soft-Bold.ttf": "e0787cb7990454f7b4a769de71a56131",
"assets/assets/fonts/fraunces/soft/Fraunces_144pt_Soft-Regular.ttf": "d9d5ba805387994a3b2e66463afe1911",
"assets/assets/fonts/fraunces/soft/Fraunces_144pt_Soft-SemiBold.ttf": "eaa766faae5f81feb6f4ca448ccceaf0",
"assets/assets/fonts/fraunces/soft/Fraunces_144pt_Soft-BlackItalic.ttf": "56fcdd68f887371cb8014352c7bd5065",
"assets/assets/fonts/dm_serif_display/DMSerifDisplay-Italic.ttf": "b0215938b63f1ef3b341a8de3b1d21ac",
"assets/assets/fonts/dm_serif_display/DMSerifDisplay-Regular.ttf": "328327eccb5dffedb610476e935f6b62",
"assets/assets/fonts/cairo/Cairo-ExtraBold.ttf": "10a2f318930a65a928e4897d9dc80d53",
"assets/assets/fonts/cairo/Cairo-ExtraLight.ttf": "e9cba4ac8651474e85fcc981478ce2a5",
"assets/assets/fonts/cairo/Cairo-SemiBold.ttf": "53416aa4177fc53c537d1a0f982ecc7b",
"assets/assets/fonts/cairo/Cairo-Medium.ttf": "4592243cbbb2e907ed45f50ab8dc04f9",
"assets/assets/fonts/cairo/Cairo-Regular.ttf": "d6142d155c71b0239454b2853e51087e",
"assets/assets/fonts/cairo/Cairo-Light.ttf": "9f1dc66982f43b98e762f18e6ab49131",
"assets/assets/fonts/cairo/Cairo-Black.ttf": "17ea632bf25a6a9675e8ce64f9b9a6dc",
"assets/assets/fonts/cairo/Cairo-Bold.ttf": "d0b639baadf7f16585cabae3fd27b59f",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62"
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
