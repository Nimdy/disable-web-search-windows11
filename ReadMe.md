# The "Why Does Windows Hate Me?" Web Search Disabler

## AKA: "No, Windows, I Don't Want to Bing That!"

Are you tired of Windows 11 trying to be your overly helpful, slightly dim-witted assistant? Does your blood pressure spike every time you try to find a file and Windows decides you *really* meant to search the vast expanses of the internet instead? Well, fear not, fellow Windows sufferer! This script is here to save your sanity (and possibly your keyboard from being hurled across the room).

## What This Magic Script Does

This little CMD script tells Windows to kindly shut up about web results when you're just trying to find that one document you swear you saved somewhere on your PC.

### Features

- Stops Windows from being a know-it-all
- Prevents Bing from infiltrating your local searches
- Reduces the urge to switch to Linux by at least 17%

### How to Use This Sanity Saver

1. Download `DisableWebSearch.cmd`
2. Right-click and "Run as administrator" (because of course you need admin rights to make Windows behave)
3. Follow the prompts and resist the urge to yell "FINALLY!" when it's done

### What's Actually Happening

1. The script checks if it has admin powers (like a superhero, but for your PC)
2. It adds a registry key that essentially tells Windows, "No means no" when it comes to web searches
3. It asks if you want to restart, because Windows loves making you restart for every little thing

### Important Stuff (The "Cover Your Butt" Section)

- This script pokes the Windows Registry. If that scares you, well... it probably should.
- Create a system restore point. You know, just in case this script and Windows decide to have a fight.
- Run as admin, or watch as Windows laughs at your puny user-level attempts to control it.

### How to Undo This If You Miss Bing (Said No One Ever)

1. Open Registry Editor (at your own risk, captain!)
2. Navigate to `HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer`
3. Delete `DisableSearchBoxSuggestions`
4. Restart and enjoy your reunion with web results. We won't judge (much).

## Compatibility

Works on Windows 11. Might work on Windows 10, but let's be honest, if you're still on 10, you've probably already found a way to deal with this annoyance.

## Disclaimer

If this script somehow summons a demon or makes Clippy return, you're on your own. Use at your own risk, and remember: with great power comes great responsibility (and occasional frustration with Microsoft).

## Contributing

Found a way to make this even more effective at taming Windows? Share your secrets! Pull requests welcome, especially if they involve more snark.

## License

This is under the "I Just Want My Computer To Work" License, 2024 edition.
