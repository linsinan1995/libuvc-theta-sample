#include <iostream>

#include "INIReader.h"
extern "C"
{
#include "theta_launch.h"
}

int
main(int argc, char **argv)
{
    INIReader reader("config.ini");
    if (reader.ParseError() != 0) {
        std::cout << "Can't load 'config.ini'\n";
        return 1;
    }

    std::string pipeline = reader.Get("streaming", "pipeline", "");
    std::string alias = reader.Get("streaming", "alias", "ap");

    std::cout << "PIPELINE= " << pipeline << std::endl;
    int ret = launch(argc, argv, strdup(pipeline.c_str()), strdup(alias.c_str()));
    std::cout << "RET=" << ret << std::endl;
}

