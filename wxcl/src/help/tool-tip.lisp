
(defun enable-tool-tip(flag) ;((obj app)) ELJApp_EnableTooltips
  (ELJApp_EnableTooltips (if flag 1 0)))

(defun set-tool-tip-delay(delay); ((obj app)) ELJApp_SetTooltipDelay
  (ELJApp_SetTooltipDelay delay))
