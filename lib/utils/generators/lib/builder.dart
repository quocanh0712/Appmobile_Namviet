// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/d3f_base_response_json_to_t_generator.dart';
import 'src/d3f_network_json_converter_generator.dart';

Builder genJsonT4ThisOne(BuilderOptions options) => SharedPartBuilder(
      [D3FBaseResponseJsonToTGenerator()],
      'd3f_base_response_json_to_t_generator',
      additionalOutputExtensions: ['.d3f.networking.dart'],
    );

Builder addThisOneToConverter(BuilderOptions options) => LibraryBuilder(
      D3FNetworkJsonConverterGenerator(),
      generatedExtension: '.d3f.network.converter.dart',
      additionalOutputExtensions: ['.d3f.converter.dart'],
    );
