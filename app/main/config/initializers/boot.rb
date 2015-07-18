# Place any code you want to run when the component is included on the client
# or server.

# To include code only on the client use:
# if RUBY_PLATFORM == 'opal'
#
# To include code only on the server, use:
# unless RUBY_PLATFORM == 'opal'
# ^^ this will not send compile in code in the conditional to the client.
# ^^ this include code required in the conditional.
$mapnames = { 'Urchin Underpass' => 'eefffc33ee1956b7b70e250d5835aa67be9152d42bc76aa8874987ebdfc19944',
           'Port Mackerel' => 'b8067d2839476ec39072e371b4c59fa85454cdb618515af080ca6080772f3264',
           'Saltspray Rig' => '50c01bca5b3117f4f7893df86d2e2d95435dbb1aae1da6831b8e74838859bc7d',
           'Blackbelly Skatepark' => '9a1736540c3fde7e409cb9c7e333441157d88dfe8ce92bc6aafcb9f79c56cb3d',
           'Walleye Warehouse' => 'd7bf0ca4466e980f994ef7b32faeb71d80611a28c5b9feef84a00e3c4c9d7bc1',
           'Arowana Mall' => '8c69b7c9a81369b5cfd22adbf41c13a8df01969ff3d0e531a8bcb042156bc549',
           'Kelp Dome' => 'c52a7ab7202a576ee18d94be687d97190e90fdcc25fc4b1591c1a8e0c1c299a5',
           'Bluefin Depot' => '1ac0981d03c18576d9517f40461b66a472168a8f14f6a8714142af9805df7b8c',
           'Moray Towers' => '6a6c3a958712adedcceb34f719e220ab0d840d8753e5f51b089d363bd1763c91'
          }

$mapnames_current = []
MapTasks.getmaps
