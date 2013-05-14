module.exports = function(grunt) {
    grunt.initConfig({
        coffee: {
            app: {
                expand: true,
                cwd: 'src/coffee',
                src: ['**/*.coffee'],
                dest: 'src/js/',
                ext: '.js'
            },
            test: {
                expand: true,
                cwd: 'test/coffee',
                src: ['**/*.coffee'],
                dest: 'test/js/',
                ext: '.test.js'
            }
        },
        requirejs: {
            compile: {
                options: {
                    baseUrl: 'src/js',
                    name: 'main',
                    excludeShallow: ['jquery'],
                    paths: {
                        'jquery':'../lib/jquery'
                    },
                    out: 'build/chili.js'
                }
            }
        },
        watch: {
            coffeeSrc: {
                files: ['src/coffee/**/*.coffee'],
                tasks: ['default']
            },
            coffeeTest: {
                files: ['test/coffee/**/*.coffee'],
                tasks: ['test']
            }
        },
        clean: {
            srcJs: ['src/js'],
            testJs: ['test/js'],
            build: ['build'],
            tmpFiles: ['**/*~']
        }
    });

    grunt.loadNpmTasks('grunt-contrib-coffee');
    grunt.loadNpmTasks('grunt-contrib-requirejs');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-clean');

    grunt.registerTask('default', ['coffee', 'requirejs']);
    grunt.registerTask('test', ['coffee:test']);
};
