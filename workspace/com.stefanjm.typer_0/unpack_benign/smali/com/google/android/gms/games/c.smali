.class public final Lcom/google/android/gms/games/c;
.super Lcom/google/android/gms/common/api/d;


# direct methods
.method public static b(I)Lcom/google/android/gms/common/api/Status;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-static {p0}, Lcom/google/android/gms/games/c;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    packed-switch p0, :pswitch_data_8

    packed-switch p0, :pswitch_data_9

    packed-switch p0, :pswitch_data_a

    packed-switch p0, :pswitch_data_b

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Lcom/google/android/gms/common/api/d;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    const-string p0, "VIDEO_CAPTURE_OVERLAY_VISIBLE"

    return-object p0

    :sswitch_1
    const-string p0, "VIDEO_MISSING_OVERLAY_PERMISSION"

    return-object p0

    :sswitch_2
    const-string p0, "RESOLVE_STALE_OR_NO_DATA"

    return-object p0

    :pswitch_0
    const-string p0, "CLIENT_HIDDEN"

    return-object p0

    :pswitch_1
    const-string p0, "CLIENT_EMPTY"

    return-object p0

    :pswitch_2
    const-string p0, "CLIENT_LOADING"

    return-object p0

    :pswitch_3
    const-string p0, "CAPTURE_ALREADY_PAUSED"

    return-object p0

    :pswitch_4
    const-string p0, "VIDEO_CAPTURE_VIDEO_PERMISSION_REQUIRED"

    return-object p0

    :pswitch_5
    const-string p0, "VIDEO_RELEASE_TIMEOUT"

    return-object p0

    :pswitch_6
    const-string p0, "VIDEO_SCREEN_OFF"

    return-object p0

    :pswitch_7
    const-string p0, "VIDEO_NO_CAMERA"

    return-object p0

    :pswitch_8
    const-string p0, "VIDEO_NO_MIC"

    return-object p0

    :pswitch_9
    const-string p0, "VIDEO_OUT_OF_DISK_SPACE"

    return-object p0

    :pswitch_a
    const-string p0, "VIDEO_ALREADY_CAPTURING"

    return-object p0

    :pswitch_b
    const-string p0, "VIDEO_UNEXPECTED_CAPTURE_ERROR"

    return-object p0

    :pswitch_c
    const-string p0, "VIDEO_STORAGE_ERROR"

    return-object p0

    :pswitch_d
    const-string p0, "VIDEO_PERMISSION_ERROR"

    return-object p0

    :pswitch_e
    const-string p0, "VIDEO_UNSUPPORTED"

    return-object p0

    :pswitch_f
    const-string p0, "VIDEO_NOT_ACTIVE"

    return-object p0

    :pswitch_10
    const-string p0, "QUEST_NOT_STARTED"

    return-object p0

    :pswitch_11
    const-string p0, "QUEST_NO_LONGER_AVAILABLE"

    return-object p0

    :pswitch_12
    const-string p0, "MILESTONE_CLAIM_FAILED"

    return-object p0

    :pswitch_13
    const-string p0, "MILESTONE_CLAIMED_PREVIOUSLY"

    return-object p0

    :pswitch_14
    const-string p0, "OPERATION_IN_FLIGHT"

    return-object p0

    :pswitch_15
    const-string p0, "REAL_TIME_SERVICE_NOT_CONNECTED"

    return-object p0

    :pswitch_16
    const-string p0, "REAL_TIME_INACTIVE_ROOM"

    return-object p0

    :pswitch_17
    const-string p0, "REAL_TIME_ROOM_NOT_JOINED"

    return-object p0

    :pswitch_18
    const-string p0, "PARTICIPANT_NOT_CONNECTED"

    return-object p0

    :pswitch_19
    const-string p0, "INVALID_REAL_TIME_ROOM_ID"

    return-object p0

    :pswitch_1a
    const-string p0, "REAL_TIME_MESSAGE_SEND_FAILED"

    return-object p0

    :pswitch_1b
    const-string p0, "REAL_TIME_CONNECTION_FAILED"

    return-object p0

    :pswitch_1c
    const-string p0, "MATCH_ERROR_LOCALLY_MODIFIED"

    return-object p0

    :pswitch_1d
    const-string p0, "MATCH_NOT_FOUND"

    return-object p0

    :pswitch_1e
    const-string p0, "MATCH_ERROR_ALREADY_REMATCHED"

    return-object p0

    :pswitch_1f
    const-string p0, "MATCH_ERROR_INVALID_MATCH_RESULTS"

    return-object p0

    :pswitch_20
    const-string p0, "MATCH_ERROR_OUT_OF_DATE_VERSION"

    return-object p0

    :pswitch_21
    const-string p0, "MATCH_ERROR_INVALID_MATCH_STATE"

    return-object p0

    :pswitch_22
    const-string p0, "MATCH_ERROR_INACTIVE_MATCH"

    return-object p0

    :pswitch_23
    const-string p0, "MATCH_ERROR_INVALID_PARTICIPANT_STATE"

    return-object p0

    :pswitch_24
    const-string p0, "MULTIPLAYER_ERROR_INVALID_OPERATION"

    return-object p0

    :pswitch_25
    const-string p0, "MULTIPLAYER_DISABLED"

    return-object p0

    :pswitch_26
    const-string p0, "MULTIPLAYER_ERROR_INVALID_MULTIPLAYER_TYPE"

    return-object p0

    :pswitch_27
    const-string p0, "MULTIPLAYER_ERROR_NOT_TRUSTED_TESTER"

    return-object p0

    :pswitch_28
    const-string p0, "MULTIPLAYER_ERROR_CREATION_NOT_ALLOWED"

    return-object p0

    :pswitch_29
    const-string p0, "SNAPSHOT_CONFLICT_MISSING"

    return-object p0

    :pswitch_2a
    const-string p0, "SNAPSHOT_FOLDER_UNAVAILABLE"

    return-object p0

    :pswitch_2b
    const-string p0, "SNAPSHOT_CONFLICT"

    return-object p0

    :pswitch_2c
    const-string p0, "SNAPSHOT_COMMIT_FAILED"

    return-object p0

    :pswitch_2d
    const-string p0, "SNAPSHOT_CONTENTS_UNAVAILABLE"

    return-object p0

    :pswitch_2e
    const-string p0, "SNAPSHOT_CREATION_FAILED"

    return-object p0

    :pswitch_2f
    const-string p0, "SNAPSHOT_NOT_FOUND"

    return-object p0

    :pswitch_30
    const-string p0, "ACHIEVEMENT_UNLOCKED"

    return-object p0

    :pswitch_31
    const-string p0, "ACHIEVEMENT_NOT_INCREMENTAL"

    return-object p0

    :pswitch_32
    const-string p0, "ACHIEVEMENT_UNKNOWN"

    return-object p0

    :pswitch_33
    const-string p0, "ACHIEVEMENT_UNLOCK_FAILURE"

    return-object p0

    :pswitch_34
    const-string p0, "REQUEST_TOO_MANY_RECIPIENTS"

    return-object p0

    :pswitch_35
    const-string p0, "REQUEST_UPDATE_TOTAL_FAILURE"

    return-object p0

    :pswitch_36
    const-string p0, "REQUEST_UPDATE_PARTIAL_SUCCESS"

    return-object p0

    :pswitch_37
    const-string p0, "PLAYER_LEVEL_UP"

    return-object p0

    :pswitch_38
    const-string p0, "PLAYER_OOB_REQUIRED"

    return-object p0

    :pswitch_39
    const-string p0, "AUTH_ERROR_ACCOUNT_NOT_USABLE"

    return-object p0

    :pswitch_3a
    const-string p0, "AUTH_ERROR_API_ACCESS_DENIED"

    return-object p0

    :pswitch_3b
    const-string p0, "AUTH_ERROR_UNREGISTERED_CLIENT_ID"

    return-object p0

    :pswitch_3c
    const-string p0, "AUTH_ERROR_USER_RECOVERABLE"

    return-object p0

    :pswitch_3d
    const-string p0, "AUTH_ERROR_HARD"

    return-object p0

    :pswitch_3e
    const-string p0, "GAME_NOT_FOUND"

    return-object p0

    :pswitch_3f
    const-string p0, "APP_MISCONFIGURED"

    return-object p0

    :pswitch_40
    const-string p0, "LICENSE_CHECK_FAILED"

    return-object p0

    :pswitch_41
    const-string p0, "NETWORK_ERROR_OPERATION_FAILED"

    return-object p0

    :pswitch_42
    const-string p0, "NETWORK_ERROR_OPERATION_DEFERRED"

    return-object p0

    :pswitch_43
    const-string p0, "NETWORK_ERROR_NO_DATA"

    return-object p0

    :pswitch_44
    const-string p0, "NETWORK_ERROR_STALE_DATA"

    return-object p0

    :pswitch_45
    const-string p0, "CLIENT_RECONNECT_REQUIRED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x6786
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67a2
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x67ac
        :pswitch_38
        :pswitch_37
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x67b6
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x67c0
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x67ca
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x67d4
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x67de
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x67e8
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x67f2
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x67fc
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x684c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x6798 -> :sswitch_2
        0x681a -> :sswitch_1
        0x681c -> :sswitch_0
    .end sparse-switch
.end method
