.class public Lcom/crashlytics/android/a;
.super La/a/a/a/i;

# interfaces
.implements La/a/a/a/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/i<",
        "Ljava/lang/Void;",
        ">;",
        "La/a/a/a/j;"
    }
.end annotation


# instance fields
.field public final a:Lcom/crashlytics/android/a/b;

.field public final b:Lcom/crashlytics/android/b/c;

.field public final c:Lcom/crashlytics/android/c/i;

.field public final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "La/a/a/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lcom/crashlytics/android/a/b;

    invoke-direct {v0}, Lcom/crashlytics/android/a/b;-><init>()V

    new-instance v1, Lcom/crashlytics/android/b/c;

    invoke-direct {v1}, Lcom/crashlytics/android/b/c;-><init>()V

    new-instance v2, Lcom/crashlytics/android/c/i;

    invoke-direct {v2}, Lcom/crashlytics/android/c/i;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/a;-><init>(Lcom/crashlytics/android/a/b;Lcom/crashlytics/android/b/c;Lcom/crashlytics/android/c/i;)V

    return-void
.end method

.method constructor <init>(Lcom/crashlytics/android/a/b;Lcom/crashlytics/android/b/c;Lcom/crashlytics/android/c/i;)V
    .locals 2

    invoke-direct {p0}, La/a/a/a/i;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/a;->a:Lcom/crashlytics/android/a/b;

    iput-object p2, p0, Lcom/crashlytics/android/a;->b:Lcom/crashlytics/android/b/c;

    iput-object p3, p0, Lcom/crashlytics/android/a;->c:Lcom/crashlytics/android/c/i;

    const/4 v0, 0x3

    new-array v0, v0, [La/a/a/a/i;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/crashlytics/android/a;->d:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "2.7.1.19"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.crashlytics.sdk.android:crashlytics"

    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "La/a/a/a/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/crashlytics/android/a;->d:Ljava/util/Collection;

    return-object v0
.end method

.method protected d()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/crashlytics/android/a;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
