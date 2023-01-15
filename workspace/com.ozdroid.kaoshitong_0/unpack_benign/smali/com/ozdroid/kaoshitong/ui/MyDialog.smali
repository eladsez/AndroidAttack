.class public Lcom/ozdroid/kaoshitong/ui/MyDialog;
.super Landroid/app/Dialog;
.source "MyDialog.java"


# instance fields
.field private handler:Lcom/ozdroid/kaoshitong/ui/IDismiss;

.field private updating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/ozdroid/kaoshitong/ui/IDismiss;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newborderdialogtheme"    # I
    .param p3, "handler"    # Lcom/ozdroid/kaoshitong/ui/IDismiss;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 22
    iput-object p3, p0, Lcom/ozdroid/kaoshitong/ui/MyDialog;->handler:Lcom/ozdroid/kaoshitong/ui/IDismiss;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ozdroid/kaoshitong/ui/IDismiss;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Lcom/ozdroid/kaoshitong/ui/IDismiss;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/ozdroid/kaoshitong/ui/MyDialog;->handler:Lcom/ozdroid/kaoshitong/ui/IDismiss;

    .line 29
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/ozdroid/kaoshitong/ui/MyDialog;->updating:Z

    if-eqz v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/MyDialog;->handler:Lcom/ozdroid/kaoshitong/ui/IDismiss;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/MyDialog;->handler:Lcom/ozdroid/kaoshitong/ui/IDismiss;

    invoke-interface {v0}, Lcom/ozdroid/kaoshitong/ui/IDismiss;->rollbackBtn()V

    .line 37
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public setUpdating(Z)V
    .locals 0
    .param p1, "updating"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/ozdroid/kaoshitong/ui/MyDialog;->updating:Z

    .line 18
    return-void
.end method
