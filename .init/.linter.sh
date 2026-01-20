#!/bin/bash
cd /home/kavia/workspace/code-generation/weighted-wheel-picker-201651-201660/react_frontend
npx eslint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

