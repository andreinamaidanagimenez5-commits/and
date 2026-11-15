# Andreína Maidana — Portfolio profesional

Sitio estático adaptable a móviles y disponible en español, inglés y portugués.

## Incluye
- Presentación profesional, servicios, perfil y áreas de colaboración.
- Selector de idioma con preferencia guardada en el navegador.
- Control lateral arrastrable para desplazamiento vertical.
- Botón independiente para ir al inicio y otro para ir al final de la página.
- Formulario conectado a Supabase Edge Function.

## Publicación en Netlify
- Repositorio: `andreinamaidanagimenez5-commits/and`
- Directorio de publicación: raíz del repositorio (`.`).
- Comando de build: vacío; no requiere compilación.
- `netlify.toml` define el directorio de publicación.

## Backend
El formulario envía las consultas a la Edge Function `contact` del proyecto Supabase `andreina-portfolio` (Sudamérica). La función guarda los datos en `public.contact_inquiries` con una clave secreta del lado del servidor. Ninguna clave secreta está incluida en el frontend ni en este repositorio.

La tabla tiene RLS habilitado y no permite lectura pública. Las consultas se revisan desde Supabase con una cuenta autorizada.

## Verificación
La función `contact` está desplegada en Supabase. Para confirmar el flujo completo en producción, enviar una consulta de prueba desde la URL pública de Netlify y verificar su registro en Supabase.
