.class Ljp/Adlantis/Android/AdManager$ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/Adlantis/Android/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Ljp/Adlantis/Android/AdManager;


# direct methods
.method private constructor <init>(Ljp/Adlantis/Android/AdManager;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdManager$ConnectionChangeReceiver;->this$0:Ljp/Adlantis/Android/AdManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljp/Adlantis/Android/AdManager;Ljp/Adlantis/Android/AdManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/Adlantis/Android/AdManager$ConnectionChangeReceiver;-><init>(Ljp/Adlantis/Android/AdManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1}, Ljp/Adlantis/Android/AdManager;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager$ConnectionChangeReceiver;->this$0:Ljp/Adlantis/Android/AdManager;

    invoke-static {v0}, Ljp/Adlantis/Android/AdManager;->access$400(Ljp/Adlantis/Android/AdManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager$ConnectionChangeReceiver;->this$0:Ljp/Adlantis/Android/AdManager;

    invoke-static {v0}, Ljp/Adlantis/Android/AdManager;->access$300(Ljp/Adlantis/Android/AdManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager$ConnectionChangeReceiver;->this$0:Ljp/Adlantis/Android/AdManager;

    iget-object v1, p0, Ljp/Adlantis/Android/AdManager$ConnectionChangeReceiver;->this$0:Ljp/Adlantis/Android/AdManager;

    invoke-static {v1}, Ljp/Adlantis/Android/AdManager;->access$400(Ljp/Adlantis/Android/AdManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljp/Adlantis/Android/AdManager;->sendConversionTag(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
