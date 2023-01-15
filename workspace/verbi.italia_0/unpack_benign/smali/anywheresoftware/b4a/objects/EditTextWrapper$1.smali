.class Lanywheresoftware/b4a/objects/EditTextWrapper$1;
.super Ljava/lang/Object;
.source "EditTextWrapper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/objects/EditTextWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private old:Ljava/lang/CharSequence;

.field final synthetic this$0:Lanywheresoftware/b4a/objects/EditTextWrapper;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;

.field private final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/objects/EditTextWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/objects/EditTextWrapper$1;->this$0:Lanywheresoftware/b4a/objects/EditTextWrapper;

    iput-object p2, p0, Lanywheresoftware/b4a/objects/EditTextWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Lanywheresoftware/b4a/objects/EditTextWrapper$1;->val$eventName:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lanywheresoftware/b4a/objects/EditTextWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/EditTextWrapper$1;->this$0:Lanywheresoftware/b4a/objects/EditTextWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/objects/EditTextWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_textchanged"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 84
    iget-object v6, p0, Lanywheresoftware/b4a/objects/EditTextWrapper$1;->old:Ljava/lang/CharSequence;

    aput-object v6, v5, v2

    iget-object v6, p0, Lanywheresoftware/b4a/objects/EditTextWrapper$1;->this$0:Lanywheresoftware/b4a/objects/EditTextWrapper;

    invoke-virtual {v6}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/EditTextWrapper$1;
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 83
    aput-object v6, v5, v4

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 90
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/objects/EditTextWrapper$1;->old:Ljava/lang/CharSequence;

    .line 91
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 96
    return-void
.end method
