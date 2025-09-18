# ERPNext China Chart of Accounts

This app provides the Chinese Accounting Standards for Business Enterprises and Chinese Small Business Accounting Standards charts of accounts for ERPNext.

## Installation

1.  Go to your bench directory:
    ```bash
    cd ~/frappe-bench
    ```

2.  Get the app (replace the URL with your actual repository URL if you host it on Git):
    ```bash
    bench get-app ./path/to/erpnext_china_coa
    ```

3.  Install the app on your site:
    ```bash
    bench --site [your-site-name] install-app erpnext_china_coa
    ```

4.  Restart bench:
    ```bash
    bench restart
    ```

## Usage

When creating a new company in ERPNext, you will be able to select one of the Chinese charts of accounts during setup.

## License

MIT
