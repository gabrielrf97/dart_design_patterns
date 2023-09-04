abstract class RenderableShape {
  void accept(ShapeRendererVisitor v);
}

class Circle implements RenderableShape {
  @override
  void accept(ShapeRendererVisitor v) {
    v.renderCircle(this);
  }
}

class Square implements RenderableShape {
  @override
  void accept(ShapeRendererVisitor v) {
    v.renderSquare(this);
  }
}

abstract class ShapeRendererVisitor {
  void renderCircle(Circle circle);
  void renderSquare(Square square);
}

class ConcreteShapeRendererVisitor implements ShapeRendererVisitor {
  @override
  void renderCircle(Circle circle) {}

  @override
  void renderSquare(Square square) {}
}
