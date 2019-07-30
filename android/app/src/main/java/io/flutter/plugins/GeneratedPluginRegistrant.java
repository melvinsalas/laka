package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import fr.g123k.deviceapps.DeviceAppsPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    DeviceAppsPlugin.registerWith(registry.registrarFor("fr.g123k.deviceapps.DeviceAppsPlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}
