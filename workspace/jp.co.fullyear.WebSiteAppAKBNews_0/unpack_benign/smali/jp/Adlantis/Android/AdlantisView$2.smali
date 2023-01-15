.class Ljp/Adlantis/Android/AdlantisView$2;
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

    iput-object p1, p0, Ljp/Adlantis/Android/AdlantisView$2;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$2;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdlantisView;->connect()V

    return-void
.end method
