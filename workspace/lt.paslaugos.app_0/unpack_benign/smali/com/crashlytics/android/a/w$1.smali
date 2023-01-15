.class final Lcom/crashlytics/android/a/w$1;
.super Ljava/util/HashSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Lcom/crashlytics/android/a/ab$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    sget-object v0, Lcom/crashlytics/android/a/ab$b;->a:Lcom/crashlytics/android/a/ab$b;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/a/w$1;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/crashlytics/android/a/ab$b;->b:Lcom/crashlytics/android/a/ab$b;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/a/w$1;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/crashlytics/android/a/ab$b;->c:Lcom/crashlytics/android/a/ab$b;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/a/w$1;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/crashlytics/android/a/ab$b;->d:Lcom/crashlytics/android/a/ab$b;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/a/w$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
