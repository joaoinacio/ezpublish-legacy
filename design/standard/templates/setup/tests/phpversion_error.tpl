{let required_version=$test_result[2].needed_version
     current_version=$test_result[2].current_version}

{section show=$warning_version}
  <h3>{$result_number}. {"Unstable PHP version"|i18n("design/standard/setup/tests")}</h3>
  <p>
    {"Your PHP version, which is "|i18n("design/standard/setup/tests")}{$current_version}{", is known to be unstable"|i18n("design/standard/setup/tests")}.
  </p>
  <p>
    {"Another version of PHP can be download at"|i18n("design/standard/setup/tests")} <a target="_other" href="http://www.php.net">php.net</a>.
  </p>
{section-else}
  <h3>{$result_number}. {"Insufficient PHP version"|i18n("design/standard/setup/tests")}</h3>
  <p>
  {"Your PHP version, which is "|i18n("design/standard/setup/tests")}{$current_version}{", does not meet the minimum requirements of"|i18n("design/standard/setup/tests")} {$required_version}.
  <p>
   {"A newer version of PHP can be download at"|i18n("design/standard/setup/tests")} <a target="_other" href="http://www.php.net">php.net</a>.
   {"You must upgrade to at least version "|i18n("design/standard/setup/tests")}{$required_version}{", but an even newer version, such as 4.2.3, is highly recommended."|i18n("design/standard/setup/tests")}
  </p>
{/section}

{/let}
