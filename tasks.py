from invoke import task 

@task()
def clean(ctx):
	"""
	Delete 'build' folder.
	"""
	print("Cleaning!")
	ctx.run("rm -Rf build")

@task(
	help = {
		'cclean': "Call Clean task (Delete 'build' folder) before build again."
	}
)
def build(ctx, cclean=False):
	"""
	Build Fortran95 code.
	"""
	if cclean:
		clean(ctx)

	print("Building!")
	commands = [
		'mkdir build',
		'cd build',
		'f95 -c ../src/vector_math.f95 ../src/hello.f95',
		'f95 hello.o vector_math.o -o hello',
	]
	ctx.run(' && '.join(commands))


@task(
	help = {
		'cclean': "Call Clean task (Delete 'build' folder) before build again."
	}
)
def build_fc(ctx, cclean=False):
	"""
	Build C code that calls a Fortran95 module.
	"""
	if cclean:
		clean(ctx)

	print("Building!")
	commands = [
		'mkdir build',
		'cd build',
		'gcc -c ../src/callfortran.c',
		'f95 callfortran.o ../src/modulefort.f95',
	]
	ctx.run(' && '.join(commands))