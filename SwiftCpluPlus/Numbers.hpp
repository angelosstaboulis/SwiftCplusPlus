//
//  Numbers.hpp
//  SwiftCpluPlus
//
//  Created by Angelos Staboulis on 14/10/23.
//
#ifdef __cplusplus
extern "C" {
#endif
class Numbers{
public:
    int addNumbers(int a,int b);
    const char* getString();
    int* getArrayOfInt();
    char** getArrayOfStrings();
};

#ifdef __cplusplus
}
#endif
