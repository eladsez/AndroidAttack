.class public final Lcom/google/android/gcm/server/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ERROR_DEVICE_QUOTA_EXCEEDED:Ljava/lang/String; = "DeviceQuotaExceeded"

.field public static final ERROR_INTERNAL_SERVER_ERROR:Ljava/lang/String; = "InternalServerError"

.field public static final ERROR_INVALID_REGISTRATION:Ljava/lang/String; = "InvalidRegistration"

.field public static final ERROR_INVALID_TTL:Ljava/lang/String; = "InvalidTtl"

.field public static final ERROR_MESSAGE_TOO_BIG:Ljava/lang/String; = "MessageTooBig"

.field public static final ERROR_MISMATCH_SENDER_ID:Ljava/lang/String; = "MismatchSenderId"

.field public static final ERROR_MISSING_COLLAPSE_KEY:Ljava/lang/String; = "MissingCollapseKey"

.field public static final ERROR_MISSING_REGISTRATION:Ljava/lang/String; = "MissingRegistration"

.field public static final ERROR_NOT_REGISTERED:Ljava/lang/String; = "NotRegistered"

.field public static final ERROR_QUOTA_EXCEEDED:Ljava/lang/String; = "QuotaExceeded"

.field public static final ERROR_UNAVAILABLE:Ljava/lang/String; = "Unavailable"

.field public static final GCM_SEND_ENDPOINT:Ljava/lang/String; = "https://android.googleapis.com/gcm/send"

.field public static final JSON_CANONICAL_IDS:Ljava/lang/String; = "canonical_ids"

.field public static final JSON_ERROR:Ljava/lang/String; = "error"

.field public static final JSON_FAILURE:Ljava/lang/String; = "failure"

.field public static final JSON_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field public static final JSON_MULTICAST_ID:Ljava/lang/String; = "multicast_id"

.field public static final JSON_PAYLOAD:Ljava/lang/String; = "data"

.field public static final JSON_REGISTRATION_IDS:Ljava/lang/String; = "registration_ids"

.field public static final JSON_RESULTS:Ljava/lang/String; = "results"

.field public static final JSON_SUCCESS:Ljava/lang/String; = "success"

.field public static final PARAM_COLLAPSE_KEY:Ljava/lang/String; = "collapse_key"

.field public static final PARAM_DELAY_WHILE_IDLE:Ljava/lang/String; = "delay_while_idle"

.field public static final PARAM_PAYLOAD_PREFIX:Ljava/lang/String; = "data."

.field public static final PARAM_REGISTRATION_ID:Ljava/lang/String; = "registration_id"

.field public static final PARAM_TIME_TO_LIVE:Ljava/lang/String; = "time_to_live"

.field public static final TOKEN_CANONICAL_REG_ID:Ljava/lang/String; = "registration_id"

.field public static final TOKEN_ERROR:Ljava/lang/String; = "Error"

.field public static final TOKEN_MESSAGE_ID:Ljava/lang/String; = "id"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
