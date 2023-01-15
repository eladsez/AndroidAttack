.class Lcom/picvision/seaweedweather/main$8;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/main;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/main;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/main;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/main$8;->this$0:Lcom/picvision/seaweedweather/main;

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    const-string v4, "updateitemid"

    .line 847
    iget-object v1, p0, Lcom/picvision/seaweedweather/main$8;->this$0:Lcom/picvision/seaweedweather/main;

    const-string v2, "updateitemid"

    invoke-virtual {v1, v4, v3}, Lcom/picvision/seaweedweather/main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "updateitemid"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 848
    .local v0, "chose":I
    iget-object v1, p0, Lcom/picvision/seaweedweather/main$8;->this$0:Lcom/picvision/seaweedweather/main;

    const-string v2, "time"

    invoke-virtual {v1, v2, v3}, Lcom/picvision/seaweedweather/main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "updatetime"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 849
    return-void
.end method
