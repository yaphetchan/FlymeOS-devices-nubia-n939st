.class Lcom/android/settings_ex/notification/AppNotificationSettings$1;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/AppNotificationSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/AppNotificationSettings;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/AppNotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->access$100(Lcom/android/settings_ex/notification/AppNotificationSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    invoke-static {v1}, Lcom/android/settings_ex/notification/AppNotificationSettings;->access$000(Lcom/android/settings_ex/notification/AppNotificationSettings;)Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method
