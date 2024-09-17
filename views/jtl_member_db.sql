CREATE ALGORITHM = UNDEFINED DEFINER = `root` @`%` SQL SECURITY DEFINER VIEW `jtl_member_db` AS
select
  `u`.`ID` AS `id`,
  `u`.`user_login` AS `user_login`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'nickname'
  ) AS `nickname`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'first_name'
  ) AS `first_name`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'last_name'
  ) AS `last_name`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'billing_first_name'
  ) AS `billing_first_name`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'billing_last_name'
  ) AS `billing_last_name`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'billing_email'
  ) AS `billing_email`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'billing_address_1'
  ) AS `billing_address_1`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'billing_address_2'
  ) AS `billing_address_2`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'billing_city'
  ) AS `billing_city`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'billing_postcode'
  ) AS `billing_postcode`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'billing_country'
  ) AS `billing_country`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-emergency-contact-name'
  ) AS `admin-emergency-contact-name`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-emergency-contact-phone'
  ) AS `admin-emergency-contact-phone`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-first-timer-question'
  ) AS `admin-first-timer-question`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-covid-agreement'
  ) AS `admin-covid-agreement`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-no-insurance-disclaimer'
  ) AS `admin-no-insurance-disclaimer`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-insurance-status'
  ) AS `admin-insurance-status`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-participation-statement-one'
  ) AS `admin-participation-statement-one`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-participation-statement-two'
  ) AS `admin-participation-statement-two`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-covid-cautious'
  ) AS `admin-covid-cautious`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-diet-allergies-health-extra-info'
  ) AS `admin-diet-allergies-health-extra-info`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-dietary-requirements'
  ) AS `admin-dietary-requirements`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'skills-horizontal'
  ) AS `skills-horizontal`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'skills-leading-srt'
  ) AS `skills-leading-srt`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'skills-srt'
  ) AS `skills-srt`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'skills-leading-horizontal'
  ) AS `skills-leading-horizontal`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'caving-horizontal-happy-to-second-or-lead'
  ) AS `caving-horizontal-happy-to-second-or-lead`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'gear-bringing-evening-or-day-trip'
  ) AS `gear-bringing-evening-or-day-trip`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'transport-need-lift'
  ) AS `transport-need-lift`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'transport-will-you-give-lift'
  ) AS `transport-will-you-give-lift`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'transport-depature-time'
  ) AS `transport-depature-time`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'transport-leaving-location'
  ) AS `transport-leaving-location`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-phone-number'
  ) AS `admin-phone-number`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'gear-rope-length'
  ) AS `gear-rope-length`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'gear-walking-equipment-weekend'
  ) AS `gear-walking-equipment-weekend`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = '_order_count'
  ) AS `_order_count`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = '_last_order'
  ) AS `_last_order`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'paying_customer'
  ) AS `paying_customer`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'last_update'
  ) AS `last_update`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'wc_last_active'
  ) AS `wc_last_active`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'billing_phone'
  ) AS `billing_phone`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-will-you-not-flake-please'
  ) AS `admin-will-you-not-flake-please`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'shipping_address_1'
  ) AS `shipping_address_1`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'shipping_address_2'
  ) AS `shipping_address_2`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'shipping_city'
  ) AS `shipping_city`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'shipping_postcode'
  ) AS `shipping_postcode`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'shipping_country'
  ) AS `shipping_country`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'caving-srt-or-horizontal-preference'
  ) AS `caving-srt-or-horizontal-preference`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-club-constitution-acceptance'
  ) AS `admin-club-constitution-acceptance`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'bca_member'
  ) AS `_legacy_info_bca_member`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'bca_club'
  ) AS `_legacy_info_bca_club`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-personal-year-of-birth'
  ) AS `admin-personal-year-of-birth`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-personal-pronouns'
  ) AS `admin-personal-pronouns`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-car-registration'
  ) AS `admin-car-registration`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-health-shoulder'
  ) AS `admin-health-shoulder`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-health-asthma'
  ) AS `admin-health-asthma`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-health-missing-dose'
  ) AS `admin-health-missing-dose`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-other-club-name'
  ) AS `admin-other-club-name`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin-bca-number'
  ) AS `admin-bca-number`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'misc-any-other-requests'
  ) AS `misc-any-other-requests`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'cc_member'
  ) AS `cc_member`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'skills-leading-coaching'
  ) AS `skills-leading-coaching`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'membership_managed'
  ) AS `membership_managed`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'membership_renewal_date'
  ) AS `membership_renewal_date`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'caving-srt-happy-to-second-or-lead'
  ) AS `caving-srt-happy-to-second-or-lead`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin_agm_voting_code_2024'
  ) AS `admin_agm_voting_code_2024`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'admin_agm_voting_code_2023'
  ) AS `admin_agm_voting_code_2023`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'membership_joining_date'
  ) AS `membership_joining_date`,
  (
    select
      `jtl_usermeta`.`meta_value`
    from
      `jtl_usermeta`
    where
      `jtl_usermeta`.`user_id` = `u`.`ID`
      and `jtl_usermeta`.`meta_key` = 'membership_cancellation_date'
  ) AS `membership_cancellation_date`,
  (
    select
      `jtl_wc_customer_lookup`.`customer_id`
    from
      `jtl_wc_customer_lookup`
    where
      `jtl_wc_customer_lookup`.`user_id` = `u`.`ID`
  ) AS `customer_id`,
  (
    select
      `jtl_users`.`user_email`
    from
      `jtl_users`
    where
      `jtl_users`.`ID` = `u`.`ID`
  ) AS `user_email`
from
  `jtl_users` `u`