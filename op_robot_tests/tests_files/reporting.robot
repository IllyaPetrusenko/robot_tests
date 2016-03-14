*** Settings ***
Resource           limited_keywords.robot
Suite Setup        Test Suite Setup
Suite Teardown     Close all browsers


*** Variables ***
${mode}         reporting
${role}         viewer
${broker}       Quinta


*** Test Cases ***
##############################################################################################
#             CANCELLATIONS
##############################################################################################
Можливість створити звіт про укладений договір для тестування скасування
  [Tags]  ${USERS.users['${tender_owner}'].broker}: Можливість створити звіт про укладений договір для тестування скасування
  ...  tender_owner
  ...  ${USERS.users['${tender_owner}'].broker}
  ...  minimal
  [Teardown]  Оновити LAST_MODIFICATION_DATE
  Можливість створити закупівлю для тестування скасування


Можливість скасувати звіт про укладений договір
  [Tags]  ${USERS.users['${tender_owner}'].broker}: Можливість скасувати звіт про укладений договір
  ...  tender_owner
  ...  ${USERS.users['${tender_owner}'].broker}
  ...  level2
  [Teardown]  Оновити LAST_MODIFICATION_DATE
  Можливість скасувати закупівлю


Відображення активного статусу скасування звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення активного статусу скасування звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}
  Відображення активного статусу скасування закупівлі


Відображення причини скасування звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення причини скасування звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення причини скасування закупівлі


Відображення опису документа скасування звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення опису документа скасування звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення опису документа скасування закупівлі


Відображення заголовку документа скасування звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення заголовку документа скасування звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення заголовку документа скасування закупівлі

##############################################################################################
#             MAIN
##############################################################################################

Можливість створити звіт про укладений договір
  [Tags]  ${USERS.users['${tender_owner}'].broker}: Можливість створити звіт про укладений договір
  ...  tender_owner
  ...  ${USERS.users['${tender_owner}'].broker}
  ...  minimal
  [Teardown]  Оновити LAST_MODIFICATION_DATE
  Можливість створити закупівлю


Можливість знайти звіт про укладений договір по ідентифікатору
  [Tags]  ${USERS.users['${viewer}'].broker}: Можливість знайти звіт про укладений договір по ідентифікатору
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  ...  minimal
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}
  Можливість знайти закупівлю по ідентифікатору


Можливість модифікації звіту про укладений договір
  [Tags]  ${USERS.users['${tender_owner}'].broker}: Можливість модифікації звіту про укладений договір
  ...  tender_owner
  ...  ${USERS.users['${tender_owner}'].broker}
  ...  level2
  [Teardown]  Оновити LAST_MODIFICATION_DATE
  Можливість модифікації закупівлі


Можливість додати документацію до звіту про укладений договір
  [Tags]  ${USERS.users['${tender_owner}'].broker}: Можливість додати тендерну документацію до звіту про укладений договір
  ...  tender_owner
  ...  ${USERS.users['${tender_owner}'].broker}
  ...  level2
  [Teardown]  Оновити LAST_MODIFICATION_DATE
  Можливість додати документацію до закупівлі


Можливість зареєструвати і підтвердити постачальника до звіту про укладений договір
  [Tags]  ${USERS.users['${tender_owner}'].broker}: Можливість зареєструвати і підтвердити постачальника до звіту про укладений договір
  ...  tender_owner
  ...  ${USERS.users['${tender_owner}'].broker}
  ...  minimal
  [Teardown]  Оновити LAST_MODIFICATION_DATE
  Можливість зареєструвати і підтвердити постачальника до закупівлі

##############################################################################################
#             MAIN DATA
##############################################################################################

Відображення заголовку звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення заголовку звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}
  Відображення заголовку закупівлі


Відображення ідентифікатора звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення ідентифікатора звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення ідентифікатора закупівлі

##############################################################################################
#             MAIN DATA.VALUE
##############################################################################################

Відображення бюджету звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення бюджету звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення бюджету закупівлі


Відображення валюти звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення валюти звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення валюти закупівлі


Відображення врахованого податку в бюджет звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення врахування податку в бюджет звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення врахованого податку в бюджет закупівлі

##############################################################################################
#             MAIN DATA.PROCURING ENTITY
##############################################################################################

Відображення країни замовника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення країни замовника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення країни замовника закупівлі


Відображення населеного пункту замовника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення населеного пункту замовника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення населеного пункту замовника закупівлі


Відображення поштового коду замовника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення поштового коду замовника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення поштового коду замовника закупівлі


Відображення області замовника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення області замовника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення області замовника закупівлі


Відображення вулиці замовника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення вулиці замовника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення вулиці замовника закупівлі


Відображення контактного імені замовника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення контактного імені замовника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення контактного імені замовника закупівлі


Відображення контактного телефону замовника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення контактного телефону замовника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення контактного телефону замовника закупівлі


Відображення сайту замовника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення сайту замовника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення сайту замовника закупівлі


Відображення офіційного імені замовника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення офіційного імені замовника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення офіційного імені замовника закупівлі


Відображення схеми ідентифікації замовника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення схеми ідентифікації замовника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення схеми ідентифікації замовника закупівлі


Відображення ідентифікатора замовника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення ідентифікатора замовника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення ідентифікатора замовника закупівлі


Відображення імені замовника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення імені замовника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення імені замовника закупівлі

##############################################################################################
#             MAIN DATA.ITEMS
##############################################################################################

Відображення опису додаткової класифікації номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення опису додаткової класифікації номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення опису додаткової класифікації номенклатури закупівлі


Відображення ідентифікатора додаткової класифікації номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення ідентифікатора додаткової класифікацій номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення ідентифікатора додаткової класифікації номенклатури закупівлі


Відображення схеми додаткової класифікації номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення схеми додаткової класифікації номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення схеми додаткової класифікації номенклатури закупівлі


Відображення схеми класифікації номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення схеми класифікації номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення схеми класифікації номенклатури закупівлі


Відображення ідентифікатора класифікації номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення ідентифікатора класифікації номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення ідентифікатора класифікації номенклатури закупівлі


Відображення опису класифікації номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення опису класифікації номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення опису класифікації номенклатури закупівлі


Відображення опису номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення опису номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення опису номенклатури закупівлі


Відображення ідентифікатора номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення ідентифікатора номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення ідентифікатора номенклатури закупівлі


Відображення кількості номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення кількості номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення кількості номенклатури закупівлі


Відображення назви одиниці номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення назви одиниці номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення назви одиниці номенклатури закупівлі


Відображення коду одиниці номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення коду одиниці номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення коду одиниці номенклатури закупівлі


Відображення дати доставки номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення дати доставки номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення дати доставки номенклатури закупівлі


Відображення координат широти доставки номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення координат широти доставки номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення координат широти доставки номенклатури закупівлі


Відображення координат довготи доставки номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення координат довготи доставки номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення координат довготи доставки номенклатури закупівлі


Відображення назви нас. пункту доставки номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення назви нас. пункту доставки номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення назви нас. пункту доставки номенклатури закупівлі


Відображення назви нас. пункту російською мовою доставки номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення назви нас. пункту російською мовою доставки номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення назви нас. пункту російською мовою доставки номенклатури закупівлі


Відображення назви нас. пункту англійською мовою доставки номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення назви нас. пункту англійською мовою доставки номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення назви нас. пункту англійською мовою доставки номенклатури закупівлі


Відображення пошт. коду доставки номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення пошт. коду доставки номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення пошт. коду доставки номенклатури закупівлі


Відображення регіону доставки номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення регіону доставки номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення регіону доставки номенклатури закупівлі


Відображення населеного пункту адреси доставки номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення населеного пункту адреси доставки номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення населеного пункту адреси доставки номенклатури закупівлі


Відображення вулиці доставки номенклатури звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення вулиці доставки номенклатури звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення вулиці доставки номенклатури закупівлі

##############################################################################################
#             DOCUMENTS
##############################################################################################

Відображення заголовку документа звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення заголовку документа звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення заголовку документа закупівлі

##############################################################################################
#             AWARDS
##############################################################################################

Відображення підтвердженого постачальника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення підтвердженого постачальника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення підтвердженого постачальника закупівлі


Відображення країни постачальника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення країни постачальника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення країни постачальника закупівлі


Відображення міста постачальника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення міста постачальника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення міста постачальника закупівлі


Відображення поштового коду постачальника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення поштового коду постачальника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення поштового коду постачальника закупівлі


Відображення області постачальника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення області постачальника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення області постачальника закупівлі


Відображення вулиці постачальника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення вулиці постачальника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення вулиці постачальника закупівлі


Відображення контактного телефону постачальника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення контактного телефону постачальника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення контактного телефону постачальника закупівлі


Відображення контактного імені постачальника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення контактного імені постачальника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення контактного імені постачальника закупівлі


Відображення контактного імейлу постачальника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення контактного імейлу постачальника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення контактного імейлу постачальника закупівлі


Відображення схеми ідентифікації постачальника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення схеми ідентифікації постачальника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення схеми ідентифікації постачальника закупівлі


Відображення офіційного імені постачальника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення офіційного імені постачальника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення офіційного імені постачальника закупівлі


Відображення ідентифікатора постачальника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення ідентифікатора постачальника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення ідентифікатора постачальника закупівлі


Відображення імені постачальника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення імені постачальника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення імені постачальника закупівлі


Відображення врахованого податку до ціни номенклатури постачальника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення врахованого податку до ціни номенклатури постачальника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення врахованого податку до ціни номенклатури постачальника закупівлі


Відображення валюти ціни номенклатури постачальника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення валюти ціни номенклатури постачальника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення валюти ціни номенклатури постачальника закупівлі


Відображення вартості номенклатури постачальника звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення валюти ціни номенклатури постачальника звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення вартості номенклатури постачальника закупівлі

##############################################################################################
#             CONTRACTS
##############################################################################################


Можливість укласти угоду для звіту про укладений договір
  [Tags]  ${USERS.users['${tender_owner}'].broker}: Можливість укласти угоду для звіту про укладений договір
  ...  ${tender_owner}
  ...  ${USERS.users['${tender_owner}'].broker}
  [Setup]  Дочекатись синхронізації з майданчиком  ${tender_owner}
  [Teardown]  Оновити LAST_MODIFICATION_DATE
  Можливість укласти угоду для закупівлі


Відображення статусу підписаної угоди з постачальником звіту про укладений договір
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення статусу підписаної угоди з постачальником звіту про укладений договір
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}
  Відображення статусу підписаної угоди з постачальником закупівлі