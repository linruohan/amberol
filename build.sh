#/usr/bin/env bash
if uname -s | grep MSYS; then
    # window
    glib_schemas_dir="/c/ProgramData/glib-2.0/schemas/"
    glib_schemas_dir="../target/share/glib-2.0/schemas/"
else
    # linux
    glib_schemas_dir="$HOME/.local/share/glib-2.0/schemas"
fi
glib_schemas_dir="/c/ProgramData/glib-2.0/schemas/"
mkdir -p "${glib_schemas_dir}"
cp data/io.bassi.Amberol.gschema.xml "${glib_schemas_dir}"
glib-compile-schemas "${glib_schemas_dir}"
echo "glib-compile-schemas ${glib_schemas_dir} successfully!"
