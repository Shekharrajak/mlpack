set(RUBY_WRAPPER_SRC
    mlpack.c
    )

include_directories(BEFORE ${RUBY_INCLUDE_DIRS})

add_library(mlpack_ruby SHARED ${RUBY_WRAPPER_SRC})
target_link_libraries(mlpack_ruby ${MLPACK_LIBRARIES} ${RUBY_LIBRARY})
set_target_properties(mlpack_ruby PROPERTIES
                        PREFIX ""
                        SUFFIX ".so"
                        OUTPUT_NAME "mlpack"
                        LIBRARY_OUTPUT_DIRECTORY "${ruby_wrapper_BINARY_DIR}/lib/mlpack"
                     )

# Ruby gems require a install target.
install(TARGETS mlpack_ruby
            RUNTIME DESTINATION lib/mlpack
            ARCHIVE DESTINATION lib/mlpack
            LIBRARY DESTINATION lib/mlpack
        )
