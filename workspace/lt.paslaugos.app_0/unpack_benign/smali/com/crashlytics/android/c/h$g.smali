.class final Lcom/crashlytics/android/c/h$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/c/af$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final a:La/a/a/a/i;

.field private final b:Lcom/crashlytics/android/c/ab;

.field private final c:La/a/a/a/a/g/o;


# direct methods
.method public constructor <init>(La/a/a/a/i;Lcom/crashlytics/android/c/ab;La/a/a/a/a/g/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/c/h$g;->a:La/a/a/a/i;

    iput-object p2, p0, Lcom/crashlytics/android/c/h$g;->b:Lcom/crashlytics/android/c/ab;

    iput-object p3, p0, Lcom/crashlytics/android/c/h$g;->c:La/a/a/a/a/g/o;

    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/c/h$g;)Lcom/crashlytics/android/c/ab;
    .locals 0

    iget-object p0, p0, Lcom/crashlytics/android/c/h$g;->b:Lcom/crashlytics/android/c/ab;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 4

    iget-object v0, p0, Lcom/crashlytics/android/c/h$g;->a:La/a/a/a/i;

    invoke-virtual {v0}, La/a/a/a/i;->r()La/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/c;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/crashlytics/android/c/h$g$1;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/c/h$g$1;-><init>(Lcom/crashlytics/android/c/h$g;)V

    iget-object v2, p0, Lcom/crashlytics/android/c/h$g;->c:La/a/a/a/a/g/o;

    invoke-static {v0, v2, v1}, Lcom/crashlytics/android/c/f;->a(Landroid/app/Activity;La/a/a/a/a/g/o;Lcom/crashlytics/android/c/f$a;)Lcom/crashlytics/android/c/f;

    move-result-object v1

    new-instance v2, Lcom/crashlytics/android/c/h$g$2;

    invoke-direct {v2, p0, v1}, Lcom/crashlytics/android/c/h$g$2;-><init>(Lcom/crashlytics/android/c/h$g;Lcom/crashlytics/android/c/f;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v2, "CrashlyticsCore"

    const-string v3, "Waiting for user opt-in."

    invoke-interface {v0, v2, v3}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/crashlytics/android/c/f;->b()V

    invoke-virtual {v1}, Lcom/crashlytics/android/c/f;->c()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
