var isteamnetworking_8h =
[
    [ "P2PSessionState_t", "struct_p2_p_session_state__t.html", "struct_p2_p_session_state__t" ],
    [ "ISteamNetworking", "class_i_steam_networking.html", "class_i_steam_networking" ],
    [ "P2PSessionRequest_t", "struct_p2_p_session_request__t.html", "struct_p2_p_session_request__t" ],
    [ "P2PSessionConnectFail_t", "struct_p2_p_session_connect_fail__t.html", "struct_p2_p_session_connect_fail__t" ],
    [ "SocketStatusCallback_t", "struct_socket_status_callback__t.html", "struct_socket_status_callback__t" ],
    [ "STEAMNETWORKING_INTERFACE_VERSION", "isteamnetworking_8h.html#a73e82e76e6a0b4210a4ed080a315da35", null ],
    [ "SNetListenSocket_t", "isteamnetworking_8h.html#ae329e21836ae3092125df3645e53bd11", null ],
    [ "SNetSocket_t", "isteamnetworking_8h.html#ac1e9296c05168d72f4de0e20f51a7332", null ],
    [ "EP2PSend", "isteamnetworking_8h.html#a3232a1064c6db6006379b67b5676daec", [
      [ "k_EP2PSendUnreliable", "isteamnetworking_8h.html#a3232a1064c6db6006379b67b5676daeca955cb2084f62ca0c184139f95031fd80", null ],
      [ "k_EP2PSendUnreliableNoDelay", "isteamnetworking_8h.html#a3232a1064c6db6006379b67b5676daeca068e68fb4daaadee4d0859f6ec5a1be9", null ],
      [ "k_EP2PSendReliable", "isteamnetworking_8h.html#a3232a1064c6db6006379b67b5676daeca695821c3e9a559b491547fb33d7e9ab5", null ],
      [ "k_EP2PSendReliableWithBuffering", "isteamnetworking_8h.html#a3232a1064c6db6006379b67b5676daeca920093fcec097c239c20f6c78f1f2693", null ]
    ] ],
    [ "EP2PSessionError", "isteamnetworking_8h.html#a291625247a6ee358047384e2328d7200", [
      [ "k_EP2PSessionErrorNone", "isteamnetworking_8h.html#a291625247a6ee358047384e2328d7200a3dbd4d6eb7e66ef6d09275858db502f7", null ],
      [ "k_EP2PSessionErrorNotRunningApp", "isteamnetworking_8h.html#a291625247a6ee358047384e2328d7200a5cfcb6ebb9b9723e6726d7fcd3aac1b5", null ],
      [ "k_EP2PSessionErrorNoRightsToApp", "isteamnetworking_8h.html#a291625247a6ee358047384e2328d7200a38509ab9e9060ba77eddad62e234af27", null ],
      [ "k_EP2PSessionErrorDestinationNotLoggedIn", "isteamnetworking_8h.html#a291625247a6ee358047384e2328d7200a1f6ad7f3c37205ce69e4aa5ceca8d99c", null ],
      [ "k_EP2PSessionErrorTimeout", "isteamnetworking_8h.html#a291625247a6ee358047384e2328d7200aa6185f743752e58891fcfacf9dcb6790", null ],
      [ "k_EP2PSessionErrorMax", "isteamnetworking_8h.html#a291625247a6ee358047384e2328d7200a8b569dddff087b86c264ccde1d0e43d0", null ]
    ] ],
    [ "ESNetSocketConnectionType", "isteamnetworking_8h.html#ac199b2cd2e31c6fa3e320b82c3e37013", [
      [ "k_ESNetSocketConnectionTypeNotConnected", "isteamnetworking_8h.html#ac199b2cd2e31c6fa3e320b82c3e37013ae20019bb9ee79a42ad63f95abf1832a6", null ],
      [ "k_ESNetSocketConnectionTypeUDP", "isteamnetworking_8h.html#ac199b2cd2e31c6fa3e320b82c3e37013a2e01d05c0f30b3c2701dec9d09ad4cfe", null ],
      [ "k_ESNetSocketConnectionTypeUDPRelay", "isteamnetworking_8h.html#ac199b2cd2e31c6fa3e320b82c3e37013a5dde5239ee71e79755979a8b547c46ca", null ]
    ] ],
    [ "ESNetSocketState", "isteamnetworking_8h.html#ad13fcc9dc18721c5c440752731e64b9d", [
      [ "k_ESNetSocketStateInvalid", "isteamnetworking_8h.html#ad13fcc9dc18721c5c440752731e64b9da4600ef9809a353cf006dcbc82040264f", null ],
      [ "k_ESNetSocketStateConnected", "isteamnetworking_8h.html#ad13fcc9dc18721c5c440752731e64b9da197a955c5b0669059ef2db15db4f0808", null ],
      [ "k_ESNetSocketStateInitiated", "isteamnetworking_8h.html#ad13fcc9dc18721c5c440752731e64b9da3cad222cebc71857fb75d47cf9b294dd", null ],
      [ "k_ESNetSocketStateLocalCandidatesFound", "isteamnetworking_8h.html#ad13fcc9dc18721c5c440752731e64b9da76fcd6ea351d87a2960d6b2b1fdaf53b", null ],
      [ "k_ESNetSocketStateReceivedRemoteCandidates", "isteamnetworking_8h.html#ad13fcc9dc18721c5c440752731e64b9da73f83be9d8d043e5f280f0fe5d934bc2", null ],
      [ "k_ESNetSocketStateChallengeHandshake", "isteamnetworking_8h.html#ad13fcc9dc18721c5c440752731e64b9da95510ccf030401797f5f5c895228fe7e", null ],
      [ "k_ESNetSocketStateDisconnecting", "isteamnetworking_8h.html#ad13fcc9dc18721c5c440752731e64b9dac491b77f32141d0a76a2a30f5f9a9ddb", null ],
      [ "k_ESNetSocketStateLocalDisconnect", "isteamnetworking_8h.html#ad13fcc9dc18721c5c440752731e64b9dac20441822088b6e380a127e140d80c04", null ],
      [ "k_ESNetSocketStateTimeoutDuringConnect", "isteamnetworking_8h.html#ad13fcc9dc18721c5c440752731e64b9dab34d18da4e2ecdea4f6c90eb2557ad8a", null ],
      [ "k_ESNetSocketStateRemoteEndDisconnected", "isteamnetworking_8h.html#ad13fcc9dc18721c5c440752731e64b9daab5c0990055f4f748c5e0d858e4ec336", null ],
      [ "k_ESNetSocketStateConnectionBroken", "isteamnetworking_8h.html#ad13fcc9dc18721c5c440752731e64b9daf406847b0e0899d84fe2a9563d07c00c", null ]
    ] ]
];