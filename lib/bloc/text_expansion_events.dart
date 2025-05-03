abstract class TextExpansionEvents {}

class isExpandedEvent extends TextExpansionEvents {
  final bool isExpanded;
  isExpandedEvent(this.isExpanded);
}
