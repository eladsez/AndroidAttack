.class final Lcom/crashlytics/android/c/z$h;
.super Lcom/crashlytics/android/c/z$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field a:Lcom/crashlytics/android/c/b;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/c/b;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/crashlytics/android/c/z$j;

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/c/z$j;-><init>(I[Lcom/crashlytics/android/c/z$j;)V

    iput-object p1, p0, Lcom/crashlytics/android/c/z$h;->a:Lcom/crashlytics/android/c/b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/c/z$h;->a:Lcom/crashlytics/android/c/b;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/crashlytics/android/c/e;->b(ILcom/crashlytics/android/c/b;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/crashlytics/android/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/c/z$h;->a:Lcom/crashlytics/android/c/b;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/c/e;->a(ILcom/crashlytics/android/c/b;)V

    return-void
.end method
