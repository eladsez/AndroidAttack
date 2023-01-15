.class Lcom/crashlytics/android/c/h$21;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/c/h;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
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
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Ljava/lang/Thread;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/crashlytics/android/c/h;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/h;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/c/h$21;->d:Lcom/crashlytics/android/c/h;

    iput-object p2, p0, Lcom/crashlytics/android/c/h$21;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/crashlytics/android/c/h$21;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/crashlytics/android/c/h$21;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    iget-object v0, p0, Lcom/crashlytics/android/c/h$21;->d:Lcom/crashlytics/android/c/h;

    invoke-static {v0}, Lcom/crashlytics/android/c/h;->a(Lcom/crashlytics/android/c/h;)Lcom/crashlytics/android/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/c/i;->n()V

    iget-object v0, p0, Lcom/crashlytics/android/c/h$21;->d:Lcom/crashlytics/android/c/h;

    iget-object v1, p0, Lcom/crashlytics/android/c/h$21;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/crashlytics/android/c/h$21;->b:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/crashlytics/android/c/h$21;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/c/h;->a(Lcom/crashlytics/android/c/h;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-static {}, La/a/a/a/a/g/q;->a()La/a/a/a/a/g/q;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/g/q;->b()La/a/a/a/a/g/t;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, La/a/a/a/a/g/t;->b:La/a/a/a/a/g/p;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/crashlytics/android/c/h$21;->d:Lcom/crashlytics/android/c/h;

    invoke-virtual {v3, v2}, Lcom/crashlytics/android/c/h;->b(La/a/a/a/a/g/p;)V

    iget-object v3, p0, Lcom/crashlytics/android/c/h$21;->d:Lcom/crashlytics/android/c/h;

    invoke-static {v3}, Lcom/crashlytics/android/c/h;->b(Lcom/crashlytics/android/c/h;)V

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/crashlytics/android/c/h$21;->d:Lcom/crashlytics/android/c/h;

    iget v2, v2, La/a/a/a/a/g/p;->g:I

    invoke-virtual {v3, v2}, Lcom/crashlytics/android/c/h;->a(I)V

    :cond_1
    iget-object v2, p0, Lcom/crashlytics/android/c/h$21;->d:Lcom/crashlytics/android/c/h;

    invoke-static {v2, v0}, Lcom/crashlytics/android/c/h;->a(Lcom/crashlytics/android/c/h;La/a/a/a/a/g/t;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/crashlytics/android/c/h$21;->d:Lcom/crashlytics/android/c/h;

    invoke-static {v2, v0}, Lcom/crashlytics/android/c/h;->b(Lcom/crashlytics/android/c/h;La/a/a/a/a/g/t;)V

    :cond_2
    return-object v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h$21;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
