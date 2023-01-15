.class public Lanywheresoftware/b4a/objects/IntentWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "IntentWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Intent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_APPWIDGET_UPDATE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE"

.field public static final ACTION_CALL:Ljava/lang/String; = "android.intent.action.CALL"

.field public static final ACTION_EDIT:Ljava/lang/String; = "android.intent.action.EDIT"

.field public static final ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field public static final ACTION_PICK:Ljava/lang/String; = "android.intent.action.PICK"

.field public static final ACTION_SEND:Ljava/lang/String; = "android.intent.action.SEND"

.field public static final ACTION_VIEW:Ljava/lang/String; = "android.intent.action.VIEW"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public AddCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "Category"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/IntentWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/IntentWrapper;
    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    return-void
.end method

.method public ExtrasToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/IntentWrapper;->IsInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    const-string v1, "not initialized"

    .line 123
    .end local p0    # "this":Lanywheresoftware/b4a/objects/IntentWrapper;
    :goto_0
    return-object v1

    .line 119
    .restart local p0    # "this":Lanywheresoftware/b4a/objects/IntentWrapper;
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/IntentWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/IntentWrapper;
    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 120
    .local v0, "b":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 121
    const-string v1, "no extras"

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    .line 123
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public GetData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/IntentWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/IntentWrapper;
    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/IntentWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/IntentWrapper;
    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public HasExtra(Ljava/lang/String;)Z
    .locals 1
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/IntentWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/IntentWrapper;
    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public Initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "Action"    # Ljava/lang/String;
    .param p2, "Uri"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 39
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/IntentWrapper;->setObject(Ljava/lang/Object;)V

    .line 40
    return-void

    .line 38
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Initialize2(Ljava/lang/String;I)V
    .locals 1
    .param p1, "Uri"    # Ljava/lang/String;
    .param p2, "Flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p1, p2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/IntentWrapper;->setObject(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public PutExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "Name"    # Ljava/lang/String;
    .param p2, "Value"    # Ljava/lang/Object;

    .prologue
    .line 94
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/IntentWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 95
    .local v0, "i":Landroid/content/Intent;
    instance-of v1, p2, Ljava/io/Serializable;

    if-eqz v1, :cond_1

    .line 96
    check-cast p2, Ljava/io/Serializable;

    .end local p2    # "Value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 97
    .restart local p2    # "Value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p2, Landroid/os/Parcelable;

    if-eqz v1, :cond_0

    .line 98
    check-cast p2, Landroid/os/Parcelable;

    .end local p2    # "Value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public SetComponent(Ljava/lang/String;)V
    .locals 1
    .param p1, "Component"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/IntentWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/IntentWrapper;
    check-cast p0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 139
    return-void
.end method

.method public SetType(Ljava/lang/String;)V
    .locals 2
    .param p1, "Type"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/IntentWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/IntentWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/IntentWrapper;
    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    return-void
.end method

.method public WrapAsIntentChooser(Ljava/lang/String;)V
    .locals 2
    .param p1, "Title"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/IntentWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 132
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/IntentWrapper;->setObject(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/IntentWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .end local p0    # "this":Lanywheresoftware/b4a/objects/IntentWrapper;
    :goto_0
    return-object v0

    .restart local p0    # "this":Lanywheresoftware/b4a/objects/IntentWrapper;
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/IntentWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/IntentWrapper;
    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/IntentWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/IntentWrapper;
    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/IntentWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/IntentWrapper;
    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 76
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/IntentWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/IntentWrapper;
    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    return-void
.end method
