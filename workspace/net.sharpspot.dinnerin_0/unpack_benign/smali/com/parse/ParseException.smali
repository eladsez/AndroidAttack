.class public Lcom/parse/ParseException;
.super Ljava/lang/Exception;
.source "ParseException.java"


# static fields
.field public static final ACCOUNT_ALREADY_LINKED:I = 0xd0

.field public static final CACHE_MISS:I = 0x78

.field public static final COMMAND_UNAVAILABLE:I = 0x6c

.field public static final CONNECTION_FAILED:I = 0x64

.field public static final DUPLICATE_VALUE:I = 0x89

.field public static final EMAIL_MISSING:I = 0xcc

.field public static final EMAIL_NOT_FOUND:I = 0xcd

.field public static final EMAIL_TAKEN:I = 0xcb

.field public static final EXCEEDED_QUOTA:I = 0x8c

.field public static final FILE_DELETE_ERROR:I = 0x99

.field public static final INCORRECT_TYPE:I = 0x6f

.field public static final INTERNAL_SERVER_ERROR:I = 0x1

.field public static final INVALID_ACL:I = 0x7b

.field public static final INVALID_CHANNEL_NAME:I = 0x70

.field public static final INVALID_CLASS_NAME:I = 0x67

.field public static final INVALID_EMAIL_ADDRESS:I = 0x7d

.field public static final INVALID_FILE_NAME:I = 0x7a

.field public static final INVALID_JSON:I = 0x6b

.field public static final INVALID_KEY_NAME:I = 0x69

.field public static final INVALID_LINKED_SESSION:I = 0xfb

.field public static final INVALID_NESTED_KEY:I = 0x79

.field public static final INVALID_POINTER:I = 0x6a

.field public static final INVALID_QUERY:I = 0x66

.field public static final INVALID_ROLE_NAME:I = 0x8b

.field public static final LINKED_ID_MISSING:I = 0xfa

.field public static final MISSING_OBJECT_ID:I = 0x68

.field public static final MUST_CREATE_USER_THROUGH_SIGNUP:I = 0xcf

.field public static final NOT_INITIALIZED:I = 0x6d

.field public static final OBJECT_NOT_FOUND:I = 0x65

.field public static final OBJECT_TOO_LARGE:I = 0x74

.field public static final OPERATION_FORBIDDEN:I = 0x77

.field public static final OTHER_CAUSE:I = -0x1

.field public static final PASSWORD_MISSING:I = 0xc9

.field public static final PUSH_MISCONFIGURED:I = 0x73

.field public static final SCRIPT_ERROR:I = 0x8d

.field public static final SESSION_MISSING:I = 0xce

.field public static final TIMEOUT:I = 0x7c

.field public static final UNSUPPORTED_SERVICE:I = 0xfc

.field public static final USERNAME_MISSING:I = 0xc8

.field public static final USERNAME_TAKEN:I = 0xca

.field public static final VALIDATION_ERROR:I = 0x8e

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "theCode"    # I
    .param p2, "theMessage"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 234
    iput p1, p0, Lcom/parse/ParseException;->code:I

    .line 235
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/ParseException;->code:I

    .line 248
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 257
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 258
    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/ParseException;->code:I

    .line 259
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/parse/ParseException;->code:I

    return v0
.end method
