.class Lcom/djavid/puppypet_es/skins/SkinActivity_or$2;
.super Ljava/lang/Object;
.source "SkinActivity_or.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/djavid/puppypet_es/skins/SkinActivity_or;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/djavid/puppypet_es/skins/SkinActivity_or$2;->this$0:Lcom/djavid/puppypet_es/skins/SkinActivity_or;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/djavid/puppypet_es/skins/SkinActivity_or$2;->this$0:Lcom/djavid/puppypet_es/skins/SkinActivity_or;

    invoke-virtual {v0}, Lcom/djavid/puppypet_es/skins/SkinActivity_or;->finish()V

    .line 76
    return-void
.end method
