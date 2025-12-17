import "virtel/ui" for UI
import "virtel" for Center, VirtelApp, Log

class LauncherApp is VirtelApp {
    static start() {
        UI.createWindow("Launcher", 1000, 1000)
        UI.drawText("""Hello world from Wren!
It is Virtel, bro!
Universal Apps Box.
Now you can add this:
Center.startApp("vladceresna.virtel.tools.calculator")
        """, "000000", 16, 10, 50)
        Log.info("Window shown.")
    }
}
