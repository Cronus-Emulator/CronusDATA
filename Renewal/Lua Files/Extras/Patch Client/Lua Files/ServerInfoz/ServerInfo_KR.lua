g_strPatchAllow = "patch_allow.txt"
g_strPatch = "patch2.txt"
g_strNoticeWeb = "http://www.ragnarok.co.kr/gamenotice"
g_strNoticePatch = "Ragnarok.html"
g_strNoticeClose = "ServerCheck.html"
g_strPatchInf = "patch.inf"
g_strPatchData = "data.grf"
g_strExcute = "Ragexe.exe"
g_strExcuteArg = "1rag1"
g_strExcute2Arg = "2rag2"
g_strWeb = "webpatch.ragnarok.co.kr"
g_strWebDir = "/patch"
g_strFtp = "ragnarok1-gravity.ktics.co.kr"
g_strFtpDir = "/Patch"
g_ftpPort = 21
g_webLoginPage = "http://ro.game.gravity.co.kr"
g_regPath = "RagPath"
InitServerInfo = function()
   if g_nServerType == SERVER_TYPE.PRIMARY then
      g_strPatch = "patch8.txt"
      g_strNoticeClose = "ServerCheck.html"
   else
      if g_nServerType == SERVER_TYPE.SAKRAY then
         g_strPatch = "patch3.txt"
         g_strNoticePatch = "Sakray.html"
         g_strNoticeClose = "ServerClose.html"
         g_strPatchInf = "spatch.inf"
         g_strPatchData = "sdata.grf"
         g_strExcute = "sakexe.exe"
         g_strExcuteArg = "1rag1 1sak1"
         g_strWebDir = "/sakpatch2"
         g_strFtpDir = "/SakPatch"
      else
         if g_nServerType == SERVER_TYPE.RENEWAL_SAKRAY then
            g_strPatchAllow = "patch_allow_RE.txt"
            g_strPatch = "patchRE3.txt"
            g_strNoticePatch = "Sakray.html"
            g_strNoticeClose = "ServerClose.html"
            g_strPatchInf = "patchRE.inf"
            g_strPatchData = "rdata.grf"
            g_strExcute = "ragexeRE.exe"
            g_regPath = "SakrayPath"
         else
            if g_nServerType == SERVER_TYPE.INDOOR then
               g_strPatch = "patch_i.txt"
               g_strNoticePatch = "notice_Test.html"
               g_strPatchInf = "in_dr.inf"
               g_strExcute = "Indoor.exe"
               g_strWeb = "192.168.20.170"
               g_strFtp = "192.168.20.170"
               g_ftpPort = 2000
               g_strNoticeWeb = string.format("http://%s/%s", g_strWeb, g_strWebDir)
            else
               if g_nServerType == SERVER_TYPE.QM_PRIMARY then
                  g_strPatch = "patch_QM.txt"
                  g_strWeb = "192.168.20.170"
                  g_strWebDir = "/QMPatch"
                  g_strFtp = "192.168.20.170"
                  g_strFtpDir = "/QMPatch"
                  g_ftpPort = 2000
               else
                  if g_nServerType == SERVER_TYPE.GUILD then
                     g_strPatch = "patch2.txt"
                     g_strPatchInf = "gpatch.inf"
                     g_strPatchData = "gdata.grf"
                     g_strExcute = "gldexe.exe"
                     g_strExcuteArg = "1gld1"
                     g_strWebDir = "/gpatch"
                     g_strFtp = "ragnarok.nefficient.co.kr"
                     g_strFtpDir = "/pub/ragnarok/gpatch"
                  end
               end
            end
         end
      end
   end
end

InitServerInfo()

