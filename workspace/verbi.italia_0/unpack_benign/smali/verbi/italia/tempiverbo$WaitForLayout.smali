.class Lverbi/italia/tempiverbo$WaitForLayout;
.super Ljava/lang/Object;
.source "tempiverbo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lverbi/italia/tempiverbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WaitForLayout"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lverbi/italia/tempiverbo$1;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lverbi/italia/tempiverbo$WaitForLayout;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    sget-boolean v0, Lverbi/italia/tempiverbo;->afterFirstLayout:Z

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v0, v0, Lverbi/italia/tempiverbo;->layout:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v0}, Lanywheresoftware/b4a/BALayout;->getWidth()I

    move-result v0

    if-nez v0, :cond_2

    .line 70
    sget-object v0, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 73
    :cond_2
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v0, v0, Lverbi/italia/tempiverbo;->layout:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v0}, Lanywheresoftware/b4a/BALayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v1, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v1, v1, Lverbi/italia/tempiverbo;->layout:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v1}, Lanywheresoftware/b4a/BALayout;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v0, v0, Lverbi/italia/tempiverbo;->layout:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v0}, Lanywheresoftware/b4a/BALayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v1, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v1, v1, Lverbi/italia/tempiverbo;->layout:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v1}, Lanywheresoftware/b4a/BALayout;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lverbi/italia/tempiverbo;->afterFirstLayout:Z

    .line 76
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    invoke-static {v0}, Lverbi/italia/tempiverbo;->access$100(Lverbi/italia/tempiverbo;)V

    goto :goto_0
.end method
