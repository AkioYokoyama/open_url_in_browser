# Open Url In Browser
Open the site from the terminal with the registered name

## SetUp
Copy and rename `urls.yml.template` to `urls.yml`.
```bash
cp urls.yml.template urls.yml
```

Add `urls.yml` to `keyword: url`.
```yml
github: "https://github.com"
twitter: "https://twitter.com/home"
```

## Usage
Enter the following in the CUI.
```
ruby open_browser.rb <keyword>

ex)
ruby open_browser.rb github
```
