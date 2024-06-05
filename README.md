# SE4HPC DevOps Project: Steps 2 and 3

## Objective
This project aims to perform a parallel matrix multiplication using MPI using the two matrices contained in the files `matrixA.txt` and `matrixB.txt`.

In the step 2, the focus is on implementing a CI/CD pipeline for a parallel matrix multiplication application using MPI. The process involves automating the build, test, and release processes, containerizing the application with Singularity, and executing the containerized application on a SLURM cluster. The goal is to ensure seamless deployment from code push to manual execution on the cluster.

Building upon the CI/CD pipeline created in Step 2, the step 3 aims to fully automate the process from code push to the execution of the containerized software on SLURM. It involves transferring the container from the runner to the cluster and handling secrets securely. The objective is to streamline the deployment process and ensure efficient execution of the containerized application on the cluster.

## Directory Details

- `.github/workflows/`: Contains configuration files for GitHub Actions workflows, automating CI/CD processes.
- `googletest @ 305e5a2/`: Submodule for the Google Test framework, providing unit testing capabilities.
- `include/`: Contains header files for the project, including function declarations and definitions.
- `lib/`: Holds project libraries necessary for implementing matrix multiplication.
- `output-G100/`: Contains `Job.sh` file and G100 server output, including scripts and results obtained from execution on the server.
- `src/`: Contains source files for the project, implementing the main logic for matrix multiplication.
- `test/`: Contains test files for the project, verifying the correctness of the matrix multiplication implementation.
- `.gitignore`: Specifies files and directories to ignore in version control, avoiding inclusion of temporary or irrelevant files in the Git repository.
- `.gitmodules`: Manages project dependencies via submodules.
- `CMakeLists.txt`: CMake build configuration file defining how the project should be built.
- `README.md`: Provides an overview of the project, including instructions on setup and execution.
- `Singularity.def`: Specifies how to build the Singularity image for the project.
- `build.sh`: Automates the project compilation process.
- `job.sh`: Defines commands to execute project-specific work.
- `matrixA.txt`: Provides data for matrix A for multiplication.
- `matrixB.txt`: Provides data for matrix B for multiplication.
- `slurm-job.sh`: Defines commands to execute the work via the Slurm job manager.

This repository structure organizes various aspects of the project, including configuration files, source files, test files, and automation scripts needed for development, testing, and execution of matrix multiplication.

