---
name: auto-login
description: Automatically log in to web pages using predefined credentials matched by URL
license: MIT
---

## What I do

Matches the current page URL against a credentials file and performs login using the corresponding username and password.

Credentials are defined in `credentials.yml` located alongside this skill.

### credentials.yml structure

```yaml
credentials:
  - name: <identifier>       # Referenced by sites
    username: <login user>
    password: <login password>

sites:
  - name: <display name>
    url: <URL pattern to match>
    credentials: [<credential name>, ...]  # Available credentials for this site
    note: <optional login instructions>
```

- Match the current page URL against `sites[].url`
- Use the first credential listed in `sites[].credentials` unless otherwise specified
- Follow `note` if present (e.g. tab selection)

## When to use me

Use when a login screen is displayed and the current URL matches an entry in the credentials file.

## Important Instructions

**Before proceeding with form input, always ensure the correct page is selected:**
1. Use `chrome-list_pages` to verify available pages
2. Use `chrome-select_page` with the appropriate page ID to ensure the correct page is active
3. Only after confirming the correct page is selected, proceed with form input operations

**Login procedure:**
1. Match the current page URL against `url` patterns in `credentials.yml`
2. If a match is found, use the corresponding `username` and `password` to log in
3. If the page has multiple login tabs (e.g. "Individual Account" / "Shop Account"), follow the `note` field if present
