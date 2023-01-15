.class final Lcom/crashlytics/android/c/z$a;
.super Lcom/crashlytics/android/c/z$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/c/z$f;Lcom/crashlytics/android/c/z$k;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/crashlytics/android/c/z$j;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x3

    invoke-direct {p0, p1, v0}, Lcom/crashlytics/android/c/z$j;-><init>(I[Lcom/crashlytics/android/c/z$j;)V

    return-void
.end method
