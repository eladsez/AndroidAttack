.class Lcom/crashlytics/android/c/i$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/c/i;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/i;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/c/i$2;->a:Lcom/crashlytics/android/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/crashlytics/android/c/i$2;->a:Lcom/crashlytics/android/c/i;

    invoke-static {v0}, Lcom/crashlytics/android/c/i;->a(Lcom/crashlytics/android/c/i;)Lcom/crashlytics/android/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/c/j;->a()Z

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Initialization marker file created."

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/crashlytics/android/c/i$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
