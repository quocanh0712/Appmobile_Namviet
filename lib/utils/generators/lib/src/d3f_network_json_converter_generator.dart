// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// ignore_for_file: depend_on_referenced_packages, implementation_imports

import 'package:analyzer/dart/element/element.dart';
import 'package:annotations/annotations.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:generators/src/model_visitor.dart';
import 'package:source_gen/source_gen.dart';
import 'package:dart_style/dart_style.dart';

class D3FNetworkJsonConverterGenerator
    extends GeneratorForAnnotation<D3FNetworkJsonConverterAnnotation> {
  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    final generateForDir =
        annotation.read('generateForDir').listValue.map((e) => e.toStringValue());

    final visitor = ModelVisitor();
    element.visitChildren(visitor);
    final classBuffer = StringBuffer();
    // gen jsonToT method for single object.
    classBuffer
        .writeln('''${visitor.className}? jsonToNullable${visitor.className}(Object? json) =>
            ${visitor.className}.fromJson(json as Map<String, dynamic>);\n''');

    classBuffer.writeln('''${visitor.className} jsonTo${visitor.className}(Object? json) => 
            ${visitor.className}.fromJson(json as Map<String, dynamic>);\n''');

    // gen the jsonToT method for list of objects.
    classBuffer.writeln(
        '''List<${visitor.className}?> jsonToListNullable${visitor.className}s(Object? json) =>
                      List<Object>.from(json as List)
                        .map((e) => ${visitor.className}.fromJson(e as Map<String, dynamic>))
                        .toList();\n''');

    classBuffer
        .writeln('''List<${visitor.className}> jsonToList${visitor.className}s(Object? json) =>
                      List<Object>.from(json as List)
                        .map((e) => ${visitor.className}.fromJson(e as Map<String, dynamic>))
                        .toList();''');

    return DartFormatter().format(classBuffer.toString());
  }
}
