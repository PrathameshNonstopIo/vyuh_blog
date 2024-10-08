import 'package:flutter/material.dart';
import 'package:sanity_client/client.dart';
import 'package:vyuh_core/plugin/plugin_descriptor.dart';
import 'package:vyuh_core/vyuh_core.dart' as vc;
import 'package:vyuh_extension_content/vyuh_extension_content.dart';
import 'feature.dart' as blog;
import 'package:vyuh_feature_system/vyuh_feature_system.dart' as system;
import 'package:vyuh_feature_developer/vyuh_feature_developer.dart'
    as developer;
import 'package:vyuh_plugin_content_provider_sanity/vyuh_plugin_content_provider_sanity.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  vc.runApp(
    initialLocation: '/blog',
    features: () => [
      system.feature,
      developer.feature,
      blog.feature,
    ],
    plugins: PluginDescriptor(
      content: DefaultContentPlugin(
        provider: SanityContentProvider(
          SanityClient(
            SanityConfig(
              dataset: 'production',
              projectId: '9gdst2ud',
              token:'skYzPbi7gDFKljNHoTAt17IQQGPsOOdZhUtexs1Dhk57tTbhdTwkD6ubTAqacQaozRbmIK7KKxKMq6BtFFR0rdNjjeaC1euaAhqt2WIe526dHXaCvWTyfwluspTROv8rcenj6RRL8cTotq1yu133yT9BiAyWgE6iFMKe2HHzG2NqqbttIoFR',
            ),
          ),
        ),
      )
    ),
  );
}