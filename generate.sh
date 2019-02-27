#!/bin/bash
docker run -v ${PWD}:/resume there4/markdown-resume md2resume html -t /resume/levi resume.md .
docker run -v ${PWD}:/resume there4/markdown-resume md2resume pdf -t /resume/levi resume.md .
