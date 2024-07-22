Import('env')

env.GTCreateFeature(
    'wpds++',
    CPPPATH = ['.'],
    LIBS = ['wpds++'],
    LIBPATH = ['.'],
    )

env.GTLibForSharedLib('wpds++',
                source = ['dictionary.cpp',
                          'common.cpp',
                          'keys.cpp',
                          'key_source.cpp'],
                CPPDEFINES = {'WITNESS_TRACE' : '1',
                              'GRAMMATECH' : '1',
                              '_CRT_SECURE_NO_WARNINGS' : '1'
                              },
                depends = ['wpds++']
                )



