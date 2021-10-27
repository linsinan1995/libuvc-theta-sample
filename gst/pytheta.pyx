cdef extern from "launcher.h":
    int launch_internal(const char *pipe_proc, const char *appsrc_alias, const char *serial_number);

def launch(pipeline: bytes, app: bytes, serial_number: bytes) -> None:
    launch_internal(pipeline, app, serial_number)
