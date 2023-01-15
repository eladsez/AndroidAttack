.class Lcom/waps/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/waps/AppConnect;


# direct methods
.method private constructor <init>(Lcom/waps/AppConnect;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/l;->a:Lcom/waps/AppConnect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waps/AppConnect;Lcom/waps/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/waps/l;-><init>(Lcom/waps/AppConnect;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v5, 0x3

    const/4 v4, 0x0

    const-string v6, ""

    iget-object v0, p0, Lcom/waps/l;->a:Lcom/waps/AppConnect;

    invoke-static {v0}, Lcom/waps/AppConnect;->access$1400(Lcom/waps/AppConnect;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Finalize_Flag"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "appList"

    const-string v3, ""

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waps/l;->a:Lcom/waps/AppConnect;

    invoke-static {v0}, Lcom/waps/AppConnect;->access$1400(Lcom/waps/AppConnect;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/waps/q;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/waps/p;

    iget-object v2, p0, Lcom/waps/l;->a:Lcom/waps/AppConnect;

    invoke-static {v2}, Lcom/waps/AppConnect;->access$1400(Lcom/waps/AppConnect;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/waps/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/waps/p;->a()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/waps/AppConnect;->E:Z

    sput-boolean v4, Lcom/waps/p;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/waps/l;->a:Lcom/waps/AppConnect;

    invoke-static {v0}, Lcom/waps/AppConnect;->access$1400(Lcom/waps/AppConnect;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/waps/o;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/waps/l;->a:Lcom/waps/AppConnect;

    invoke-static {v0}, Lcom/waps/AppConnect;->access$1400(Lcom/waps/AppConnect;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "Package_Name"

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sput-boolean v4, Lcom/waps/q;->c:Z

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method
