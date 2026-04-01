<?php

namespace App\Http\Controllers;

use App\Models\Catalogo;
use App\Models\Producto;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class PortalController extends Controller
{
    public function index()
    {
        $catalogos = Catalogo::all();
        return inertia("Portal/Inicio", compact("catalogos"));
    }

    public function productos(Catalogo $catalogo, Request $request)
    {
        $page = $request->page ?? 1;
        $page = is_string($page) ? (int)$page : $page;
        $productos = Producto::where("catalogo_id", $catalogo->id)
            ->where("estado", "PÚBLICO")->paginate(1);
        return inertia("Portal/Productos", compact("catalogo", "productos", "page"));
    }

    public function verProducto(Producto $producto)
    {
        $catalogo = $producto->catalogo;
        return inertia("Portal/VerProducto", compact("producto", "catalogo"));
    }
}
