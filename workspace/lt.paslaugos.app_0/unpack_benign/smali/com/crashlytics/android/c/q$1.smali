.class Lcom/crashlytics/android/c/q$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/c/q;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/q;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/q;)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/c/q$1;->a:Lcom/crashlytics/android/c/q;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/crashlytics/android/c/q$1;->a:Lcom/crashlytics/android/c/q;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/crashlytics/android/c/q;->a(Lcom/crashlytics/android/c/q;Z)Z

    return-void
.end method
