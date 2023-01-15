.class final Lcom/google/android/gcm/server/Result$Builder;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gcm/server/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private canonicalRegistrationId:Ljava/lang/String;

.field private errorCode:Ljava/lang/String;

.field private messageId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gcm/server/Result$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gcm/server/Result$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gcm/server/Result$Builder;->canonicalRegistrationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gcm/server/Result$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gcm/server/Result$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gcm/server/Result$Builder;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gcm/server/Result$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gcm/server/Result$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gcm/server/Result$Builder;->errorCode:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/gcm/server/Result;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/gcm/server/Result;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gcm/server/Result;-><init>(Lcom/google/android/gcm/server/Result$Builder;Lcom/google/android/gcm/server/Result$1;)V

    return-object v0
.end method

.method public canonicalRegistrationId(Ljava/lang/String;)Lcom/google/android/gcm/server/Result$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/gcm/server/Result$Builder;->canonicalRegistrationId:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public errorCode(Ljava/lang/String;)Lcom/google/android/gcm/server/Result$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/gcm/server/Result$Builder;->errorCode:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public messageId(Ljava/lang/String;)Lcom/google/android/gcm/server/Result$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/gcm/server/Result$Builder;->messageId:Ljava/lang/String;

    .line 66
    return-object p0
.end method
