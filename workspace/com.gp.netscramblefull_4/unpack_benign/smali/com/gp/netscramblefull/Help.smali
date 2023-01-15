.class public Lcom/gp/netscramblefull/Help;
.super Lorg/hermit/android/core/HelpActivity;
.source "Help.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/hermit/android/core/HelpActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lorg/hermit/android/core/HelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/high16 v0, 0x7f070000

    const v1, 0x7f070001

    invoke-virtual {p0, v0, v1}, Lcom/gp/netscramblefull/Help;->addHelpFromArrays(II)V

    .line 50
    return-void
.end method
