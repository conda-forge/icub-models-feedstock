#include <cstdlib>
#include <filesystem>
#include <iostream>

#include <iCubModels/iCubModels.h>

int main()
{
    std::cerr << "iCubModels are installed in: " << iCubModels::getModelsPath() << std::endl;
    std::filesystem::path models_path = iCubModels::getModelsPath();
  
    if (std::filesystem::exists(models_path)) {
        return EXIT_SUCCESS;
    } else {
        return EXIT_FAILURE;
    }
}
