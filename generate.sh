#!/bin/bash
docker run -v ${PWD}:/resume there4/markdown-resume:2.3.1 md2resume html -t /resume/themes/red-and-white -o index src/resume.md docs/
docker run -v ${PWD}:/resume there4/markdown-resume:2.3.1 md2resume pdf  -t /resume/themes/red-and-white -o levi-starrett-resume src/resume.md docs/
