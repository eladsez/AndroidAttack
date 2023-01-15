.class public final Lcom/google/android/gcm/server/Result;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gcm/server/Result$1;,
        Lcom/google/android/gcm/server/Result$Builder;
    }
.end annotation


# instance fields
.field private final canonicalRegistrationId:Ljava/lang/String;

.field private final errorCode:Ljava/lang/String;

.field private final messageId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gcm/server/Result$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/android/gcm/server/Result$Builder;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Lcom/google/android/gcm/server/Result$Builder;->access$100(Lcom/google/android/gcm/server/Result$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gcm/server/Result;->canonicalRegistrationId:Ljava/lang/String;

    .line 81
    invoke-static {p1}, Lcom/google/android/gcm/server/Result$Builder;->access$200(Lcom/google/android/gcm/server/Result$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gcm/server/Result;->messageId:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lcom/google/android/gcm/server/Result$Builder;->access$300(Lcom/google/android/gcm/server/Result$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gcm/server/Result;->errorCode:Ljava/lang/String;

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gcm/server/Result$Builder;Lcom/google/android/gcm/server/Result$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gcm/server/Result$Builder;
    .param p2, "x1"    # Lcom/google/android/gcm/server/Result$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gcm/server/Result;-><init>(Lcom/google/android/gcm/server/Result$Builder;)V

    return-void
.end method


# virtual methods
.method public getCanonicalRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gcm/server/Result;->canonicalRegistrationId:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gcm/server/Result;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gcm/server/Result;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/gcm/server/Result;->messageId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 110
    const-string v1, " messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gcm/server/Result;->messageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/google/android/gcm/server/Result;->canonicalRegistrationId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 113
    const-string v1, " canonicalRegistrationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gcm/server/Result;->canonicalRegistrationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/google/android/gcm/server/Result;->errorCode:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 117
    const-string v1, " errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gcm/server/Result;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_2
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
