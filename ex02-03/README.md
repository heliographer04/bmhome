문제: 브라우저에서 `file://`로 HTML을 열면 모듈(`import`) 요청이 `file:` 스킴에서 오기 때문에 CORS 정책에 의해 차단됩니다.

해결 방법: 로컬에서 간단한 HTTP 서버로 파일을 서빙하세요. 이 레포에 `serve.ps1` 스크립트를 추가했습니다.

사용법 (PowerShell):

```pwsh
cd "c:\Users\USer\OneDrive - 배문고등학교\문서\GitHub\bmhome\ex02-03"
# 기본 포트 5500 사용
.\
serve.ps1
# 브라우저에서 열기: http://localhost:5500/main.html
```

대안:
- VS Code의 Live Server 확장 사용: `main.html`을 연 뒤 우측 하단의 "Go Live" 클릭 또는 우클릭 > "Open with Live Server".
- Python이 설치되어 있지 않으면 설치하거나, 다음 명령으로 Node 기반 http-server 사용 가능: `npx http-server -p 5500`.

검증 방법:
1. 서버 실행 후 브라우저에서 `http://localhost:5500/main.html` 접속
2. 개발자 도구 네트워크/콘솔에서 더 이상 `CORS` 또는 `file://` 관련 404/Blocked 메시지가 없는지 확인

문의: 원하시면 제가 이 리포지토리에 간단한 `package.json`과 `npm` 기반 `serve` 스크립트도 추가해 드리겠습니다.