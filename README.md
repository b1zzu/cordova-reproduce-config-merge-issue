## Working APP

```
./create.sh working
```

once the script finish the content of the `AndroidManifest.xml` will be printed
and it will contain the `com.adobe.phonegap.push.FCMService`.

## Broken APP

```
./create.sh broken
```

once the script finish the content of the `AndroidManifest.xml` will be printed
and it will **not** contain the `com.adobe.phonegap.push.FCMService`.
