.class Lcom/djavid/puppypet_es/skins/SkinActivity_or$1;
.super Ljava/lang/Object;
.source "SkinActivity_or.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/djavid/puppypet_es/skins/SkinActivity_or;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/djavid/puppypet_es/skins/SkinActivity_or;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/djavid/puppypet_es/skins/SkinActivity_or;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/djavid/puppypet_es/skins/SkinActivity_or$1;->this$0:Lcom/djavid/puppypet_es/skins/SkinActivity_or;

    iput-object p2, p0, Lcom/djavid/puppypet_es/skins/SkinActivity_or$1;->val$intent:Landroid/content/Intent;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/djavid/puppypet_es/skins/SkinActivity_or$1;->this$0:Lcom/djavid/puppypet_es/skins/SkinActivity_or;

    iget-object v2, p0, Lcom/djavid/puppypet_es/skins/SkinActivity_or$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/djavid/puppypet_es/skins/SkinActivity_or;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/djavid/puppypet_es/skins/SkinActivity_or$1;->this$0:Lcom/djavid/puppypet_es/skins/SkinActivity_or;

    invoke-virtual {v1}, Lcom/djavid/puppypet_es/skins/SkinActivity_or;->finish()V

    .line 70
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 63
    iget-object v1, p0, Lcom/djavid/puppypet_es/skins/SkinActivity_or$1;->this$0:Lcom/djavid/puppypet_es/skins/SkinActivity_or;

    .line 64
    const v2, 0x7f060021

    .line 65
    const/4 v3, 0x0

    .line 63
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
