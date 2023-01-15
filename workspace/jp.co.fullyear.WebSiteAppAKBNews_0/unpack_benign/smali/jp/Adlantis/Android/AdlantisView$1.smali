.class Ljp/Adlantis/Android/AdlantisView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/Adlantis/Android/AdlantisView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/Adlantis/Android/AdlantisView;


# direct methods
.method constructor <init>(Ljp/Adlantis/Android/AdlantisView;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdlantisView$1;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$1;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdlantisView;->showNextAd()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ljp/Adlantis/Android/AdlantisView$1;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-static {v2}, Ljp/Adlantis/Android/AdlantisView;->access$700(Ljp/Adlantis/Android/AdlantisView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Ljp/Adlantis/Android/AdlantisView$1;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-static {v3}, Ljp/Adlantis/Android/AdlantisView;->access$600(Ljp/Adlantis/Android/AdlantisView;)J

    move-result-wide v3

    add-long/2addr v0, v3

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
