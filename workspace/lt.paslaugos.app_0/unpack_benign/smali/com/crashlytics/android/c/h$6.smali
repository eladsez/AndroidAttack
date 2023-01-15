.class Lcom/crashlytics/android/c/h$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/c/h;->a(Lcom/crashlytics/android/c/a/a/d;)V
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
.field final synthetic a:Lcom/crashlytics/android/c/a/a/d;

.field final synthetic b:Lcom/crashlytics/android/c/h;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/h;Lcom/crashlytics/android/c/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/c/h$6;->b:Lcom/crashlytics/android/c/h;

    iput-object p2, p0, Lcom/crashlytics/android/c/h$6;->a:Lcom/crashlytics/android/c/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/c/h$6;->b:Lcom/crashlytics/android/c/h;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/h;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/c/h$6;->b:Lcom/crashlytics/android/c/h;

    iget-object v1, p0, Lcom/crashlytics/android/c/h$6;->a:Lcom/crashlytics/android/c/a/a/d;

    invoke-static {v0, v1}, Lcom/crashlytics/android/c/h;->a(Lcom/crashlytics/android/c/h;Lcom/crashlytics/android/c/a/a/d;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h$6;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
