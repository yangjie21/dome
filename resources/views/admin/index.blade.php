<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Larvuent</title>
</head>
<body>
    <div id="app"></div>
       
    <script src="{{ asset('js/admin/manifest.js') }}"></script>
    <script src="{{ asset('js/admin/vendor.js') }}"></script>
    <script src="{{ asset('js/admin/app.js') }}"></script>
</body>
</html>