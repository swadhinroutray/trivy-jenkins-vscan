#!/bin/bash

echo "Docker Build Complete, starting Trivy Scan"

trivy image trivy-scan:1
