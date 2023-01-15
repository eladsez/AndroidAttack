.class Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings$1;
.super Ljava/util/HashMap;
.source "AppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 25
    const-string v0, "CONTROLS_ORIENTATION"

    const-string v1, "L"

    invoke-virtual {p0, v0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "PREFER_STORAGE"

    const-string v1, "E"

    invoke-virtual {p0, v0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "RATE_EXECUTION_COUNTER"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
