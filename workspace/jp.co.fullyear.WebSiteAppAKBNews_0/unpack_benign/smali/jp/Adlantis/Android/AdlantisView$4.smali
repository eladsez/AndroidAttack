.class Ljp/Adlantis/Android/AdlantisView$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/Adlantis/Android/AdManager$AdManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/Adlantis/Android/AdlantisView;->connect()V
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

    iput-object p1, p0, Ljp/Adlantis/Android/AdlantisView$4;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adsLoaded(Ljp/Adlantis/Android/AdManager;)V
    .locals 2

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$4;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-static {v0}, Ljp/Adlantis/Android/AdlantisView;->access$800(Ljp/Adlantis/Android/AdlantisView;)I

    move-result v0

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$4;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-static {v1}, Ljp/Adlantis/Android/AdlantisView;->access$900(Ljp/Adlantis/Android/AdlantisView;)V

    if-lez v0, :cond_0

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$4;->this$0:Ljp/Adlantis/Android/AdlantisView;

    iget v1, p1, Ljp/Adlantis/Android/AdManager;->adIndex:I

    invoke-static {v0, v1}, Ljp/Adlantis/Android/AdlantisView;->access$1002(Ljp/Adlantis/Android/AdlantisView;I)I

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$4;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-static {v0}, Ljp/Adlantis/Android/AdlantisView;->access$1100(Ljp/Adlantis/Android/AdlantisView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$4;->this$0:Ljp/Adlantis/Android/AdlantisView;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$4;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-static {v1}, Ljp/Adlantis/Android/AdlantisView;->access$1000(Ljp/Adlantis/Android/AdlantisView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/Adlantis/Android/AdlantisView;->setAdByIndex(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$4;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-static {v0}, Ljp/Adlantis/Android/AdlantisView;->access$1300(Ljp/Adlantis/Android/AdlantisView;)V

    return-void

    :cond_1
    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$4;->this$0:Ljp/Adlantis/Android/AdlantisView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljp/Adlantis/Android/AdlantisView;->access$1202(Ljp/Adlantis/Android/AdlantisView;Z)Z

    goto :goto_0
.end method
