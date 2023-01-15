.class Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$1;
.super Ljava/lang/Object;
.source "AutoCompleteEditTextWrapper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;

.field private final synthetic val$a:Landroid/widget/AutoCompleteTextView;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;

.field private final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$1;->this$0:Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;

    iput-object p2, p0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$1;->val$eventName:Ljava/lang/String;

    iput-object p4, p0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$1;->val$a:Landroid/widget/AutoCompleteTextView;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 119
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 120
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$1;->this$0:Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 121
    iget-object v1, p0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v2, p0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$1;->this$0:Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_itemclick"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$1;->val$a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lanywheresoftware/b4a/BA;->raiseEventFromUI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    return-void
.end method
