.class Lcom/android/settings_ex/users/ProfileUpdateReceiver$1;
.super Ljava/lang/Thread;
.source "ProfileUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/ProfileUpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/ProfileUpdateReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/ProfileUpdateReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings_ex/users/ProfileUpdateReceiver$1;->this$0:Lcom/android/settings_ex/users/ProfileUpdateReceiver;

    iput-object p2, p0, Lcom/android/settings_ex/users/ProfileUpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/users/ProfileUpdateReceiver$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/users/ProfileUpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/users/ProfileUpdateReceiver;->assignDefaultPhoto(Landroid/content/Context;I)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/users/ProfileUpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/users/ProfileUpdateReceiver;->copyProfileName(Landroid/content/Context;)V

    .line 48
    return-void
.end method
