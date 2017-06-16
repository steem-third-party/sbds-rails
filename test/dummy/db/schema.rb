# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sbds_core_blocks", primary_key: "block_num", force: :cascade do |t|
    t.text "raw"
    t.string "previous", limit: 50
    t.datetime "timestamp"
    t.string "witness", limit: 50
    t.string "witness_signature", limit: 150
    t.string "transaction_merkle_root", limit: 50
    t.index ["timestamp"], name: "ix_sbds_core_blocks_timestamp"
  end

  create_table "sbds_tx_account_create_with_delegations", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.decimal "fee", null: false
    t.decimal "delegation", null: false
    t.string "creator", limit: 50, null: false
    t.string "new_account_name", limit: 50
    t.string "owner_key", limit: 80, null: false
    t.string "active_key", limit: 80, null: false
    t.string "posting_key", limit: 80, null: false
    t.string "memo_key", limit: 250, null: false
    t.text "json_metadata"
    t.string "operation_type", limit: 30, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_account_create_with_delegations_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_account_create_with_delegations_block_num"
    t.index ["creator"], name: "ix_sbds_tx_account_create_with_delegations_creator"
    t.index ["new_account_name"], name: "ix_sbds_tx_account_create_with_delegations_new_account_name"
    t.index ["operation_type"], name: "ix_sbds_tx_account_create_with_delegations_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_account_create_with_delegations_timestamp"
  end

  create_table "sbds_tx_account_creates", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.decimal "fee", null: false
    t.string "creator", limit: 50, null: false
    t.string "new_account_name", limit: 50
    t.string "owner_key", limit: 80, null: false
    t.string "active_key", limit: 80, null: false
    t.string "posting_key", limit: 80, null: false
    t.string "memo_key", limit: 250, null: false
    t.text "json_metadata"
    t.string "operation_type", limit: 14, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_account_creates_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_account_creates_block_num"
    t.index ["creator"], name: "ix_sbds_tx_account_creates_creator"
    t.index ["operation_type"], name: "ix_sbds_tx_account_creates_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_account_creates_timestamp"
  end

  create_table "sbds_tx_account_updates", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "account", limit: 50
    t.string "key_auth1", limit: 80
    t.string "key_auth2", limit: 80
    t.string "memo_key", limit: 250
    t.text "json_metadata"
    t.string "operation_type", limit: 14, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_account_updates_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_account_updates_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_account_updates_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_account_updates_timestamp"
  end

  create_table "sbds_tx_account_witness_proxies", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "account", limit: 50, null: false
    t.string "Proxy", limit: 50, null: false
    t.string "operation_type", limit: 21, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_account_witness_proxies_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_account_witness_proxies_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_account_witness_proxies_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_account_witness_proxies_timestamp"
  end

  create_table "sbds_tx_account_witness_votes", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "account", limit: 50, null: false
    t.string "witness", limit: 50, null: false
    t.boolean "approve"
    t.string "operation_type", limit: 20, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_account_witness_votes_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_account_witness_votes_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_account_witness_votes_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_account_witness_votes_timestamp"
  end

  create_table "sbds_tx_cancel_transfer_from_savings", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "from", limit: 50
    t.integer "request_id"
    t.string "operation_type", limit: 28, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_cancel_transfer_from_savings_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_cancel_transfer_from_savings_block_num"
    t.index ["from"], name: "ix_sbds_tx_cancel_transfer_from_savings_from"
    t.index ["operation_type"], name: "ix_sbds_tx_cancel_transfer_from_savings_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_cancel_transfer_from_savings_timestamp"
  end

  create_table "sbds_tx_change_recovery_accounts", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "account_to_recover", limit: 50
    t.string "new_recovery_account", limit: 50
    t.string "operation_type", limit: 23, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_change_recovery_accounts_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_change_recovery_accounts_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_change_recovery_accounts_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_change_recovery_accounts_timestamp"
  end

  create_table "sbds_tx_claim_reward_balances", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "account", limit: 50, null: false
    t.decimal "reward_steem"
    t.decimal "reward_sbd"
    t.decimal "reward_vests"
    t.string "operation_type", limit: 20, null: false
    t.index ["account"], name: "ix_sbds_tx_claim_reward_balances_account"
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_claim_reward_balances_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_claim_reward_balances_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_claim_reward_balances_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_claim_reward_balances_timestamp"
  end

  create_table "sbds_tx_comments", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "author", limit: 50, null: false
    t.string "permlink", limit: 512, null: false
    t.string "parent_author", limit: 50
    t.string "parent_permlink", limit: 512
    t.string "title", limit: 512
    t.text "body"
    t.text "json_metadata"
    t.string "operation_type", limit: 7, null: false
    t.index ["author"], name: "ix_sbds_tx_comments_author"
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_comments_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_comments_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_comments_operation_type"
    t.index ["parent_author"], name: "ix_sbds_tx_comments_parent_author"
    t.index ["permlink"], name: "ix_sbds_tx_comments_permlink"
    t.index ["timestamp"], name: "ix_sbds_tx_comments_timestamp"
  end

  create_table "sbds_tx_comments_options", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "author", limit: 50, null: false
    t.string "permlink", limit: 512, null: false
    t.decimal "max_accepted_payout", null: false
    t.integer "percent_steem_dollars"
    t.boolean "allow_votes", null: false
    t.boolean "allow_curation_rewards", null: false
    t.string "operation_type", limit: 15, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_comments_options_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_comments_options_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_comments_options_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_comments_options_timestamp"
  end

  create_table "sbds_tx_converts", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "owner", limit: 50, null: false
    t.bigint "requestid", null: false
    t.decimal "amount", null: false
    t.string "operation_type", limit: 7, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_converts_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_converts_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_converts_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_converts_timestamp"
  end

  create_table "sbds_tx_custom_jsons", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "tid", limit: 50, null: false
    t.string "required_auths", limit: 250
    t.string "required_posting_auths", limit: 250
    t.text "json"
    t.string "operation_type", limit: 11, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_custom_jsons_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_custom_jsons_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_custom_jsons_operation_type"
    t.index ["tid"], name: "ix_sbds_tx_custom_jsons_tid"
    t.index ["timestamp"], name: "ix_sbds_tx_custom_jsons_timestamp"
  end

  create_table "sbds_tx_customs", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "tid", limit: 50, null: false
    t.string "required_auths", limit: 250
    t.text "data"
    t.string "operation_type", limit: 6, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_customs_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_customs_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_customs_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_customs_timestamp"
  end

  create_table "sbds_tx_decline_voting_rights", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "account", limit: 50, null: false
    t.boolean "decline"
    t.string "operation_type", limit: 21, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_decline_voting_rights_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_decline_voting_rights_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_decline_voting_rights_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_decline_voting_rights_timestamp"
  end

  create_table "sbds_tx_delegate_vesting_shares", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "delegator", limit: 50
    t.string "delegatee", limit: 50
    t.decimal "vesting_shares"
    t.string "operation_type", limit: 23, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_delegate_vesting_shares_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_delegate_vesting_shares_block_num"
    t.index ["delegatee"], name: "ix_sbds_tx_delegate_vesting_shares_delegatee"
    t.index ["delegator"], name: "ix_sbds_tx_delegate_vesting_shares_delegator"
    t.index ["operation_type"], name: "ix_sbds_tx_delegate_vesting_shares_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_delegate_vesting_shares_timestamp"
  end

  create_table "sbds_tx_delete_comments", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "author", limit: 50, null: false
    t.string "permlink", limit: 250, null: false
    t.string "operation_type", limit: 14, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_delete_comments_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_delete_comments_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_delete_comments_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_delete_comments_timestamp"
  end

  create_table "sbds_tx_escrow_approves", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "from", limit: 50
    t.string "agent", limit: 50
    t.string "to", limit: 50
    t.string "who", limit: 50
    t.integer "escrow_id"
    t.boolean "approve"
    t.string "operation_type", limit: 14, null: false
    t.index ["agent"], name: "ix_sbds_tx_escrow_approves_agent"
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_escrow_approves_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_escrow_approves_block_num"
    t.index ["from"], name: "ix_sbds_tx_escrow_approves_from"
    t.index ["operation_type"], name: "ix_sbds_tx_escrow_approves_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_escrow_approves_timestamp"
    t.index ["to"], name: "ix_sbds_tx_escrow_approves_to"
    t.index ["who"], name: "ix_sbds_tx_escrow_approves_who"
  end

  create_table "sbds_tx_escrow_disputes", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "from", limit: 50
    t.string "agent", limit: 50
    t.string "to", limit: 50
    t.string "who", limit: 50
    t.integer "escrow_id"
    t.boolean "approve"
    t.string "operation_type", limit: 14, null: false
    t.index ["agent"], name: "ix_sbds_tx_escrow_disputes_agent"
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_escrow_disputes_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_escrow_disputes_block_num"
    t.index ["from"], name: "ix_sbds_tx_escrow_disputes_from"
    t.index ["operation_type"], name: "ix_sbds_tx_escrow_disputes_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_escrow_disputes_timestamp"
    t.index ["to"], name: "ix_sbds_tx_escrow_disputes_to"
    t.index ["who"], name: "ix_sbds_tx_escrow_disputes_who"
  end

  create_table "sbds_tx_escrow_releases", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "from", limit: 50
    t.string "agent", limit: 50
    t.string "to", limit: 50
    t.integer "escrow_id"
    t.decimal "steem_amount"
    t.decimal "sbd_amount"
    t.string "who", limit: 50
    t.string "receiver", limit: 50
    t.string "operation_type", limit: 14, null: false
    t.index ["agent"], name: "ix_sbds_tx_escrow_releases_agent"
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_escrow_releases_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_escrow_releases_block_num"
    t.index ["from"], name: "ix_sbds_tx_escrow_releases_from"
    t.index ["operation_type"], name: "ix_sbds_tx_escrow_releases_operation_type"
    t.index ["receiver"], name: "ix_sbds_tx_escrow_releases_receiver"
    t.index ["timestamp"], name: "ix_sbds_tx_escrow_releases_timestamp"
    t.index ["to"], name: "ix_sbds_tx_escrow_releases_to"
    t.index ["who"], name: "ix_sbds_tx_escrow_releases_who"
  end

  create_table "sbds_tx_escrow_transfers", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "from", limit: 50
    t.string "agent", limit: 50
    t.string "to", limit: 50
    t.integer "escrow_id"
    t.decimal "steem_amount"
    t.decimal "sbd_amount"
    t.text "json_metadata"
    t.decimal "fee_amount"
    t.string "fee_amount_symbol", limit: 5
    t.datetime "escrow_expiration"
    t.datetime "ratification_deadline"
    t.string "operation_type", limit: 15, null: false
    t.index ["agent"], name: "ix_sbds_tx_escrow_transfers_agent"
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_escrow_transfers_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_escrow_transfers_block_num"
    t.index ["escrow_expiration"], name: "ix_sbds_tx_escrow_transfers_escrow_expiration"
    t.index ["from"], name: "ix_sbds_tx_escrow_transfers_from"
    t.index ["operation_type"], name: "ix_sbds_tx_escrow_transfers_operation_type"
    t.index ["ratification_deadline"], name: "ix_sbds_tx_escrow_transfers_ratification_deadline"
    t.index ["timestamp"], name: "ix_sbds_tx_escrow_transfers_timestamp"
    t.index ["to"], name: "ix_sbds_tx_escrow_transfers_to"
  end

  create_table "sbds_tx_feed_publishes", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "publisher", limit: 50, null: false
    t.decimal "exchange_rate_base", null: false
    t.decimal "exchange_rate_quote", null: false
    t.string "operation_type", limit: 12, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_feed_publishes_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_feed_publishes_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_feed_publishes_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_feed_publishes_timestamp"
  end

  create_table "sbds_tx_limit_order_cancels", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "owner", limit: 50, null: false
    t.bigint "orderid", null: false
    t.string "operation_type", limit: 18, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_limit_order_cancels_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_limit_order_cancels_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_limit_order_cancels_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_limit_order_cancels_timestamp"
  end

  create_table "sbds_tx_limit_order_creates", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "owner", limit: 50, null: false
    t.bigint "orderid", null: false
    t.boolean "cancel"
    t.decimal "amount_to_sell"
    t.decimal "min_to_receive"
    t.boolean "fill_or_kill"
    t.datetime "expiration"
    t.string "operation_type", limit: 18, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_limit_order_creates_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_limit_order_creates_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_limit_order_creates_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_limit_order_creates_timestamp"
  end

  create_table "sbds_tx_pow2s", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "worker_account", limit: 50, null: false
    t.string "block_id", limit: 40, null: false
    t.string "operation_type", limit: 4, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_pow2s_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_pow2s_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_pow2s_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_pow2s_timestamp"
    t.index ["worker_account"], name: "ix_sbds_tx_pow2s_worker_account"
  end

  create_table "sbds_tx_pows", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "worker_account", limit: 50, null: false
    t.string "block_id", limit: 40, null: false
    t.string "operation_type", limit: 3, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_pows_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_pows_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_pows_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_pows_timestamp"
    t.index ["worker_account"], name: "ix_sbds_tx_pows_worker_account"
  end

  create_table "sbds_tx_recover_accounts", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "recovery_account", limit: 50
    t.string "account_to_recover", limit: 50, null: false
    t.boolean "recovered"
    t.string "operation_type", limit: 15, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_recover_accounts_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_recover_accounts_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_recover_accounts_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_recover_accounts_timestamp"
  end

  create_table "sbds_tx_request_account_recoveries", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "recovery_account", limit: 50
    t.string "account_to_recover", limit: 50, null: false
    t.boolean "recovered"
    t.string "operation_type", limit: 24, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_request_account_recoveries_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_request_account_recoveries_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_request_account_recoveries_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_request_account_recoveries_timestamp"
  end

  create_table "sbds_tx_transfer_from_savings", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "from", limit: 50
    t.string "to", limit: 50
    t.decimal "amount"
    t.string "amount_symbol", limit: 5
    t.string "memo", limit: 2048
    t.integer "request_id"
    t.string "operation_type", limit: 21, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_transfer_from_savings_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_transfer_from_savings_block_num"
    t.index ["from"], name: "ix_sbds_tx_transfer_from_savings_from"
    t.index ["operation_type"], name: "ix_sbds_tx_transfer_from_savings_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_transfer_from_savings_timestamp"
    t.index ["to"], name: "ix_sbds_tx_transfer_from_savings_to"
  end

  create_table "sbds_tx_transfer_to_savings", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "from", limit: 50
    t.string "to", limit: 50
    t.decimal "amount"
    t.string "amount_symbol", limit: 5
    t.string "memo", limit: 2048
    t.string "operation_type", limit: 19, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_transfer_to_savings_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_transfer_to_savings_block_num"
    t.index ["from"], name: "ix_sbds_tx_transfer_to_savings_from"
    t.index ["operation_type"], name: "ix_sbds_tx_transfer_to_savings_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_transfer_to_savings_timestamp"
    t.index ["to"], name: "ix_sbds_tx_transfer_to_savings_to"
  end

  create_table "sbds_tx_transfer_to_vestings", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "from", limit: 50
    t.string "to", limit: 50
    t.decimal "amount"
    t.string "amount_symbol", limit: 5
    t.string "operation_type", limit: 19, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_transfer_to_vestings_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_transfer_to_vestings_block_num"
    t.index ["from"], name: "ix_sbds_tx_transfer_to_vestings_from"
    t.index ["operation_type"], name: "ix_sbds_tx_transfer_to_vestings_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_transfer_to_vestings_timestamp"
    t.index ["to"], name: "ix_sbds_tx_transfer_to_vestings_to"
  end

  create_table "sbds_tx_transfers", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "from", limit: 50
    t.string "to", limit: 50
    t.decimal "amount"
    t.string "amount_symbol", limit: 5
    t.string "memo", limit: 2048
    t.string "operation_type", limit: 8, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_transfers_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_transfers_block_num"
    t.index ["from"], name: "ix_sbds_tx_transfers_from"
    t.index ["operation_type"], name: "ix_sbds_tx_transfers_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_transfers_timestamp"
    t.index ["to"], name: "ix_sbds_tx_transfers_to"
  end

  create_table "sbds_tx_votes", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "voter", limit: 50, null: false
    t.string "author", limit: 50, null: false
    t.string "permlink", limit: 512, null: false
    t.integer "weight"
    t.string "operation_type", limit: 4, null: false
    t.index ["author"], name: "ix_sbds_tx_votes_author"
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_votes_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_votes_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_votes_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_votes_timestamp"
    t.index ["voter"], name: "ix_sbds_tx_votes_voter"
  end

  create_table "sbds_tx_withdraw_vesting_routes", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "from_account", limit: 50, null: false
    t.string "to_account", limit: 50, null: false
    t.integer "percent", null: false
    t.boolean "auto_vest"
    t.string "operation_type", limit: 26, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_withdraw_vesting_routes_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_withdraw_vesting_routes_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_withdraw_vesting_routes_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_withdraw_vesting_routes_timestamp"
  end

  create_table "sbds_tx_withdraw_vestings", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "account", limit: 50, null: false
    t.decimal "vesting_shares", null: false
    t.string "operation_type", limit: 16, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_withdraw_vestings_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_withdraw_vestings_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_withdraw_vestings_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_withdraw_vestings_timestamp"
  end

  create_table "sbds_tx_witness_updates", primary_key: ["block_num", "transaction_num", "operation_num"], force: :cascade do |t|
    t.integer "block_num", null: false
    t.integer "transaction_num", null: false
    t.integer "operation_num", null: false
    t.datetime "timestamp"
    t.string "owner", limit: 50, null: false
    t.string "url", limit: 250, null: false
    t.string "block_signing_key", limit: 64, null: false
    t.decimal "props_account_creation_fee", null: false
    t.integer "props_maximum_block_size", null: false
    t.integer "props_sbd_interest_rate", null: false
    t.decimal "fee", null: false
    t.string "operation_type", limit: 14, null: false
    t.index ["block_num", "transaction_num", "operation_num"], name: "sqlite_autoindex_sbds_tx_witness_updates_1", unique: true
    t.index ["block_num"], name: "ix_sbds_tx_witness_updates_block_num"
    t.index ["operation_type"], name: "ix_sbds_tx_witness_updates_operation_type"
    t.index ["timestamp"], name: "ix_sbds_tx_witness_updates_timestamp"
  end

end
