# owntone

## Troubles

- Proxmox VE 上の LXC コンテナ内に、ネストして Docker コンテナとして owntone/owntone を起動した場合、ローカル　ネットワーク内の端末は owntone の探索に失敗します (mDNS が有効に働きません)
- 初期状態ではデータベース ファイルの作成が不明瞭な理由によって失敗するため、以下のようにして権限を緩めます。
    - コンテナの実行ユーザが root であったとしても && Docker がシステムランドで動作していたとしても権限エラーが発生します。
        ```shell
        $ chmod -R 2777 /path/to/cache
        ```
