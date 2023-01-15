.class Lanywheresoftware/b4a/keywords/DateTime$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/keywords/DateTime;->ListenToExternalTimeChanges(Lanywheresoftware/b4a/BA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/BA;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/keywords/DateTime$1;->val$ba:Lanywheresoftware/b4a/BA;

    .line 72
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v2, "time-zone"

    .line 76
    const-string v0, "time-zone"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "time-zone"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "id":Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/keywords/DateTime;->access$0(Ljava/util/TimeZone;)V

    .line 80
    .end local v7    # "id":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getNow()J

    move-result-wide v4

    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->access$1()J

    move-result-wide v8

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x64

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    .line 81
    iget-object v0, p0, Lanywheresoftware/b4a/keywords/DateTime$1;->val$ba:Lanywheresoftware/b4a/BA;

    const-string v4, "datetime_timechanged"

    move-object v2, v1

    move v5, v3

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lanywheresoftware/b4a/BA;->raiseEventFromDifferentThread(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_1
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getNow()J

    move-result-wide v0

    invoke-static {v0, v1}, Lanywheresoftware/b4a/keywords/DateTime;->access$2(J)V

    .line 84
    return-void
.end method
