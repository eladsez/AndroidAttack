.class final Lcom/crashlytics/android/c/z$f;
.super Lcom/crashlytics/android/c/z$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/c/z$l;Lcom/crashlytics/android/c/z$k;Lcom/crashlytics/android/c/z$k;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/crashlytics/android/c/z$j;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-direct {p0, p2, v0}, Lcom/crashlytics/android/c/z$j;-><init>(I[Lcom/crashlytics/android/c/z$j;)V

    return-void
.end method
