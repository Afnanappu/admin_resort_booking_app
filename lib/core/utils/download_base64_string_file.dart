import 'dart:convert';
import 'dart:developer';
import 'dart:html' as html;

String downloadBase64StringFile({
  String? fileName,
  required String base64String,
  required String? type,
}) {
  try {
    final bytes = base64Decode(base64String);
    final blob = html.Blob([bytes], type);
    final pdfUrl = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.AnchorElement(href: pdfUrl);
    anchor.download = fileName;
    anchor.target = '_self';
    anchor.click();
    return pdfUrl;
  } catch (e, stack) {
    log(e.toString(), stackTrace: stack);
    throw Exception();
  }
}
