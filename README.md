# BOINC

This is a public docker image suitable for running BOINC in the cloud.

BOINC is a platform for high-throughput computing on a large scale (thousands or millions of computers). It can be used for volunteer computing (using consumer devices) or grid computing (using organizational resources). It supports virtualized, parallel, and GPU-based applications.

Flood will be donating its spare CPU capacity from its own distributed load generation network of grids to help advance research in medicine, clean energy, and materials science. We will be contributing to the following projects:

- https://boinc.bakerlab.org/rosetta/
- https://www.worldcommunitygrid.org/

To run this yourself:

    docker run -it --name boinc \
      -e PROJECT_URL=boinc.bakerlab.org/rosetta \
      -e ACCOUNT_KEY=<YOUR_KEY> \
      floodio/boinc
