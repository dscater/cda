<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>Catalogo_{{ $catalogo->id }}</title>
    <style type="text/css">
        * {
            font-family: sans-serif;
        }

        @page {
            margin-top: 1.5cm;
            margin-bottom: 0.3cm;
            margin-left: 0.3cm;
            margin-right: 0.3cm;
        }

        .img_catalogo {
            max-height: 100%;
            width: 100%;
            height: auto;
        }
    </style>
</head>

<body>
    @foreach ($productos as $item)
        {{-- <img class="img_catalogo" src="{{ $item->imagen_b64 }}" alt=""> --}}
        <img class="img_catalogo" src="{{ public_path('imgs/productos/' . $item->imagen) }}" alt="">
    @endforeach
</body>

</html>
