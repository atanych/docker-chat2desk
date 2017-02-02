<?php

return [
    'logPath'               => '/var/log/gateway', # path to logs
    'emailSubject'          => 'GATEWAY', # email error title
    # email errors receivers
    'mailerListeners'       => [
        'atanych@gmail.com',
        'frolshubunov@gmail.com',
        'avenger.den1986@gmail.com'
    ],
    'selfUrl'               => 'https://gateway.sms-vote.ru', # base url to project
    'apiToken'              => '_ffeb5130bfb543e328a26ed3cd073', # security token, used for authentication between gateway and web/api
    'helpdesk_receiver_url' => 'https://chat2desk.com/receiver/', # helpdesk web hook to receive messages (from clients)
    'helpdesk_status_mesage_url' => 'https://chat2desk.com/receiver/status/', # helpdesk web hook to receive status messages (from clients)
    'external_hook' => 'https://api.chat2desk.com/v1/messages/hook_gateway', # api web hook to translate operators messages to other services
    'widget_hook' => 'https://api.chat2desk.com/widget/hook', # widget web hook to translate operators messages to widget
    'vk_checker_id' => 10011,
    'ws_strategy_devices' => [111111111, 333333333] # add devices ids, which we will use through web sockets
];
