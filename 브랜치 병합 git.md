# 브랜치 병합 git

i9i91@DESKTOP-B5GL7LM MINGW64 /c/heejung/opalproject (master)
$ git remote -v
origin  https://github.com/heejung-choi/opalproject.git (fetch)
origin  https://github.com/heejung-choi/opalproject.git (push)

i9i91@DESKTOP-B5GL7LM MINGW64 /c/heejung/opalproject (master)
$ git remote add dk https://github.com/dongkyu92/opalproject.git

i9i91@DESKTOP-B5GL7LM MINGW64 /c/heejung/opalproject (master)
$ git remote -v
dk      https://github.com/dongkyu92/opalproject.git (fetch)
dk      https://github.com/dongkyu92/opalproject.git (push)
origin  https://github.com/heejung-choi/opalproject.git (fetch)
origin  https://github.com/heejung-choi/opalproject.git (push)

i9i91@DESKTOP-B5GL7LM MINGW64 /c/heejung/opalproject (master)
$ git pull dk developer2
remote: Enumerating objects: 61, done.
remote: Counting objects: 100% (58/58), done.
remote: Compressing objects: 100% (19/19), done.
remote: Total 33 (delta 9), reused 32 (delta 9), pack-reused 0
Unpacking objects: 100% (33/33), done.
From https://github.com/dongkyu92/opalproject
 * branch            developer2 -> FETCH_HEAD
 * [new branch]      developer2 -> dk/developer2
Merge made by the 'recursive' strategy.
 .gitignore                                         |  1 +
 pom.xml                                            |  1 +
 .../zerock/security/CustomLoginSuccessHandler.java | 43 ++++++++++++++++++++++
 .../WEB-INF/spring/appServlet/servlet-context.xml  | 30 +--------------
 .../webapp/WEB-INF/spring/security-context.xml     | 24 ++++++++----
 src/main/webapp/WEB-INF/views/customLogin.jsp      |  2 +-
 6 files changed, 65 insertions(+), 36 deletions(-)
 create mode 100644 src/main/java/org/zerock/security/CustomLoginSuccessHandler.java

i9i91@DESKTOP-B5GL7LM MINGW64 /c/heejung/opalproject (master)
$ git remote -v
dk      https://github.com/dongkyu92/opalproject.git (fetch)
dk      https://github.com/dongkyu92/opalproject.git (push)
origin  https://github.com/heejung-choi/opalproject.git (fetch)
origin  https://github.com/heejung-choi/opalproject.git (push)

i9i91@DESKTOP-B5GL7LM MINGW64 /c/heejung/opalproject (master)
$ git push origin master
Enumerating objects: 37, done.
Counting objects: 100% (35/35), done.
Delta compression using up to 4 threads
Compressing objects: 100% (19/19), done.
Writing objects: 100% (19/19), 1.88 KiB | 175.00 KiB/s, done.
Total 19 (delta 8), reused 0 (delta 0)
remote: Resolving deltas: 100% (8/8), completed with 6 local objects.
To https://github.com/heejung-choi/opalproject.git
   7a9ceae..ee995a3  master -> master