<script setup>
import Portal from "@/Layouts/Portal.vue";
import { usePage, router } from "@inertiajs/vue3";
import {
    computed,
    onBeforeUnmount,
    onMounted,
    onUnmounted,
    ref,
    watch,
} from "vue";
defineOptions({ layout: Portal });
const propsPage = usePage().props;
const url_assets = ref(propsPage.url_assets);

const props = defineProps({
    catalogo: Object,
    productos: Object,
    page: {
        type: Number,
        default: 1,
    },
});

const oProducto = ref({});
const currentPage = computed(() => Number(props.productos.current_page));
const lastPage = computed(() => props.productos.last_page);
watch(
    () => props.productos,
    (newValue) => {
        if (newValue.data.length > 0) {
            oProducto.value = newValue.data[0];
        }
    },
);

const siguiente = () => {
    if (props.productos.current_page < props.productos.last_page) {
        cambiarPagina(props.productos.current_page + 1);
    }
};

const anterior = () => {
    if (props.productos.current_page > 1) {
        cambiarPagina(props.productos.current_page - 1);
    }
};

const inicio = () => cambiarPagina(1);
const final = () => cambiarPagina(props.productos.last_page);

const cambiarPagina = (pagina) => {
    router.get(
        route("portal.productos", props.catalogo.id),
        {
            page: pagina,
        },
        {
            preserveState: true,
            replace: true,
        },
    );
};

// DRAG SWIPE
const totalPages = 5;
const startX = ref(0);
const diffX = ref(0);
const isDragging = ref(false);

// Inicia el rastreo
const handleStart = (e) => {
    isDragging.value = true;
    // Soporte para Touch y Mouse
    startX.value = e.touches ? e.touches[0].clientX : e.clientX;
    diffX.value = 0;

    // IMPORTANTE: Escuchar en window para no perder el evento al soltar
    window.addEventListener("mousemove", handleMove);
    window.addEventListener("mouseup", handleEnd);
    window.addEventListener("touchmove", handleMove, { passive: false });
    window.addEventListener("touchend", handleEnd);
};

const handleMove = (e) => {
    if (!isDragging.value) return;

    // Prevenir scroll vertical accidental en móviles mientras arrastras
    if (e.type === "touchmove") e.preventDefault();

    const currentX = e.touches ? e.touches[0].clientX : e.clientX;
    diffX.value = currentX - startX.value;
};
// Determina si se cambia de página al soltar
const handleEnd = () => {
    if (!isDragging.value) return;

    const threshold = 20; // Sensibilidad

    if (diffX.value > threshold) {
        anterior();
    } else if (diffX.value < -threshold) {
        siguiente();
    }

    // Limpieza
    isDragging.value = false;
    diffX.value = 0;

    // Remover los listeners globales
    window.removeEventListener("mousemove", handleMove);
    window.removeEventListener("mouseup", handleEnd);
    window.removeEventListener("touchmove", handleMove);
    window.removeEventListener("touchend", handleEnd);
};

onMounted(() => {
    oProducto.value = props.productos.data[0];
});

onBeforeUnmount(() => {});

onUnmounted(() => handleEnd());
</script>
<template>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="mx-auto col-md-9 text-center">
                    Página {{ currentPage }} de {{ lastPage }}
                </div>
                <div class="menu_inicio">
                    <div
                        class="contenedor_producto"
                        @mousedown="handleStart"
                        @touchstart="handleStart"
                    >
                        <div class="pagina_inicio" v-if="currentPage > 1">
                            <el-tooltip
                                class="box-item"
                                effect="dark"
                                content="Inicio"
                                placement="left-start"
                                ><i
                                    class="fa fa-angle-double-left"
                                    @click="inicio"
                                ></i
                            ></el-tooltip>
                        </div>
                        <div class="pagina_anterior" v-if="currentPage > 1">
                            <el-tooltip
                                class="box-item"
                                effect="dark"
                                content="Anterior"
                                placement="left-start"
                            >
                                <i
                                    class="fa fa-angle-left"
                                    @click="anterior"
                                ></i>
                            </el-tooltip>
                        </div>
                        <div
                            class="pagina_siguiente"
                            v-if="currentPage < lastPage"
                        >
                            <el-tooltip
                                class="box-item"
                                effect="dark"
                                content="Siguiente"
                                placement="right-start"
                            >
                                <i
                                    class="fa fa-angle-right"
                                    @click="siguiente"
                                ></i
                            ></el-tooltip>
                        </div>
                        <div
                            class="pagina_ultimo"
                            v-if="currentPage < lastPage"
                        >
                            <el-tooltip
                                class="box-item"
                                effect="dark"
                                content="Final"
                                placement="right-start"
                            >
                                <i
                                    class="fa fa-angle-double-right"
                                    @click="final"
                                ></i>
                            </el-tooltip>
                        </div>
                        <div
                            class="producto"
                            :style="{
                                backgroundImage: `url(${oProducto.url_imagen})`,
                                backgroundSize: 'contain',
                                backgroundRepeat: 'no-repeat',
                                backgroundPosition: 'center',
                            }"
                        ></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<style scoped>
.menu_inicio {
    padding: 5px;
}

.menu_inicio .pagina_inicio i {
    left: 0px;
}
.menu_inicio .pagina_ultimo i {
    top: 20px;
    right: 0;
}

.menu_inicio .pagina_anterior i {
    top: 49%;
    left: 0;
}
.menu_inicio .pagina_siguiente i {
    top: 49%;
    right: 0;
}
</style>
