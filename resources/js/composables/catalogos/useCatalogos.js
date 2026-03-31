import { onMounted, ref } from "vue";

const oCatalogo = ref({
    id: 0,
    nombre: "",
    imagen: "",
    _method: "POST",
});

export const useCatalogos = () => {
    const setCatalogo = (item = null) => {
        if (item) {
            oCatalogo.value.id = item.id;
            oCatalogo.value.nombre = item.nombre;
            oCatalogo.value._method = "PUT";
            return oCatalogo;
        }
        return false;
    };

    const limpiarCatalogo = () => {
        oCatalogo.value.id = 0;
        oCatalogo.value.nombre = "";
        oCatalogo.value.imagen = "";
        oCatalogo.value._method = "POST";
    };

    onMounted(() => {});

    return {
        oCatalogo,
        setCatalogo,
        limpiarCatalogo,
    };
};
