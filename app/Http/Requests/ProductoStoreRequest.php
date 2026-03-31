<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductoStoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            "catalogo_id" => "required",
            "nombre" => "required",
            "imagen" => "required|image|mimes:webp,jpeg,png,jpg,gif,svg|max:8048",
            "estado" => "required"
        ];
    }

    public function messages(): array
    {
        return [
            "catalogo_id.required" => "Debes seleccionar el menú",
            "estado.required" => "Debes seleccionar un estado",
            "nombre.required" => "El nombre es obligatorio",
            "nombre.unique" => "El nombre ya existe",
            "imagen.required" => "La imagen es obligatoria",
            "imagen.image" => "El archivo debe ser una imagen",
            "imagen.mimes" => "La imagen debe ser un archivo de tipo: webp,jpeg, png, jpg, gif, svg",
            "imagen.max" => "La imagen no debe ser mayor a 8MB",
        ];
    }
}
