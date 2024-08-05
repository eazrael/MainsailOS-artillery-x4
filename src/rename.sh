#!/bin/bash

source config
NOW=$(date +"%Y%m%d%H%M%S")
IMAGE="${DIST_NAME}-${DIST_VERSION}-${BASE_DISTRO}-${JSON_SUPPORTED_SBC}-${NOW}"

mv workspace/*.img "$IMAGE.img"
xz -9evv -T 0 "${IMAGE}.img"
sha256sum "${IMAGE}.img.xz" > "${IMAGE}.img.xz.sha256"
