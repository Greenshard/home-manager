{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    enableUpdateCheck = false;
    enableExtensionUpdateCheck = false;
    extensions = with pkgs.vscode-extensions; [
      usernamehw.errorlens
      bradlc.vscode-tailwindcss
      dbaeumer.vscode-eslint
      eamodio.gitlens
      enkia.tokyo-night
      esbenp.prettier-vscode
      #evgeniypeshkov.syntax-highlighter
      #rvest.vs-code-prettier-eslint
      sdras.night-owl
      yoavbls.pretty-ts-errors
    ];
    userSettings = {
      "workbench.colorTheme" = "Tokyo Night Storm";
      "window.zoomLevel" = 2;
      "security.workspace.trust.untrustedFiles" = "open";
      "files.maxMemoryForLargeFilesMB" = 8096;
      "workbench.sideBar.location" = "right";
      "javascript.updateImportsOnFileMove.enabled" = "always";
      "editor.inlineSuggest.enabled" = true;
      "terminal.integrated.scrollback" = 10000;
      "terminal.integrated.persistentSessionScrollback" = 10000;
      "telemetry.telemetryLevel" = "off";
      "update.showReleaseNotes" = false;
      "files.trimTrailingWhitespace" = true;
      "files.trimFinalNewlines" = true;
      "files.insertFinalNewline" = true;
      "workbench.startupEditor" = "none";
    };
    # Keybindings
    keybindings = [
      {
        key = "ctrl+y";
        command = "editor.action.commentLine";
        when = "editorTextFocus && !editorReadonly";
      }
      {
          key = "ctrl+d";
          command = "workbench.action.toggleSidebarVisibility";
      }
    ];
  };
}
