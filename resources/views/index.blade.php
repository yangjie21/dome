<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Larvuent</title>
    <script src="{{ asset('js/jquery-1.12.3.min.js') }}"></script>
</head>
<body>
    <div id="app"></div>
  	
    <script src="{{ asset('js/manifest.js') }}"></script>
    <script src="{{ asset('js/vendor.js') }}"></script>
    <script src="{{ asset('js/app.js') }}"></script>

</body>
</html>