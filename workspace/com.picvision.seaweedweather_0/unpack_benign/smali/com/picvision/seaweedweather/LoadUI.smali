.class public Lcom/picvision/seaweedweather/LoadUI;
.super Landroid/app/Activity;
.source "LoadUI.java"


# static fields
.field private static final SLEEP:I = 0x7d0

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/picvision/seaweedweather/LoadUI;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/picvision/seaweedweather/LoadUI;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getMMAd(II)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 78
    mul-int v1, p1, p2

    .line 79
    .local v1, "display":I
    const/4 v0, 0x0

    .line 80
    .local v0, "adimg":I
    sparse-switch v1, :sswitch_data_0

    .line 112
    const v0, 0x7f020008

    .line 115
    :goto_0
    return v0

    .line 82
    :sswitch_0
    const/high16 v0, 0x7f020000

    .line 83
    goto :goto_0

    .line 85
    :sswitch_1
    const v0, 0x7f020001

    .line 86
    goto :goto_0

    .line 88
    :sswitch_2
    const v0, 0x7f020002

    .line 89
    goto :goto_0

    .line 91
    :sswitch_3
    const v0, 0x7f020003

    .line 92
    goto :goto_0

    .line 94
    :sswitch_4
    const v0, 0x7f020004

    .line 95
    goto :goto_0

    .line 97
    :sswitch_5
    const v0, 0x7f020006

    .line 98
    goto :goto_0

    .line 100
    :sswitch_6
    const v0, 0x7f020005

    .line 101
    goto :goto_0

    .line 103
    :sswitch_7
    const v0, 0x7f020007

    .line 104
    goto :goto_0

    .line 106
    :sswitch_8
    const v0, 0x7f020008

    .line 107
    goto :goto_0

    .line 109
    :sswitch_9
    const v0, 0x7f020009

    .line 110
    goto :goto_0

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        0x8f00 -> :sswitch_0
        0xa900 -> :sswitch_1
        0x11940 -> :sswitch_2
        0x12c00 -> :sswitch_3
        0x17700 -> :sswitch_4
        0x23c00 -> :sswitch_5
        0x25800 -> :sswitch_6
        0x38400 -> :sswitch_7
        0x5dc00 -> :sswitch_8
        0x64140 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v5, 0x7f030004

    invoke-virtual {p0, v5}, Lcom/picvision/seaweedweather/LoadUI;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/LoadUI;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 25
    .local v1, "display":Landroid/view/Display;
    const v5, 0x7f09000d

    invoke-virtual {p0, v5}, Lcom/picvision/seaweedweather/LoadUI;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 26
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 25
    invoke-direct {p0, v6, v7}, Lcom/picvision/seaweedweather/LoadUI;->getMMAd(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/LoadUI;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 28
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "SWITCH"

    .line 29
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 30
    .local v3, "msg":Landroid/os/Message;
    const/16 v5, 0x53

    iput v5, v3, Landroid/os/Message;->what:I

    .line 31
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 32
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;)C

    move-result v4

    .line 33
    .local v4, "switchs":C
    iput v4, v3, Landroid/os/Message;->what:I

    .line 35
    .end local v4    # "switchs":C
    :cond_0
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/picvision/seaweedweather/LoadUI$1;

    invoke-direct {v6, p0, v3}, Lcom/picvision/seaweedweather/LoadUI$1;-><init>(Lcom/picvision/seaweedweather/LoadUI;Landroid/os/Message;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 70
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method
