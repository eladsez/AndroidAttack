.class Lcom/crashlytics/android/c/h$g$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/c/h$g;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/f;

.field final synthetic b:Lcom/crashlytics/android/c/h$g;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/h$g;Lcom/crashlytics/android/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/c/h$g$2;->b:Lcom/crashlytics/android/c/h$g;

    iput-object p2, p0, Lcom/crashlytics/android/c/h$g$2;->a:Lcom/crashlytics/android/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/c/h$g$2;->a:Lcom/crashlytics/android/c/f;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/f;->a()V

    return-void
.end method
