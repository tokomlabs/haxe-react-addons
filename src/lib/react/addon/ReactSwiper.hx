package react.addon;

import react.ReactComponent;
import react.ReactMacro.jsx;

abstract SwiperHandler(Dynamic)
from Swiper -> Void to Swiper -> Void
from Swiper -> js.html.Event -> Void to Swiper -> js.html.Event -> Void
{}

/**
Extern for [Swiper](https://github.com/nolimits4web/Swiper)
**/
@:native("window.Swiper")
extern class Swiper {
    public function new(elt : js.html.DOMElement, options : SwiperOptions);
    public function updateSlidesSize() : Void;
    public function update(? updateTranslate : Bool) : Void;
    public function slidePrev(? runCallbacks : Bool, ? speed : Int) : Void;
    public function slideNext(? runCallbacks : Bool, ? speed : Int) : Void;
    public function slideTo(index : Int, ? speed : Int, ? runCallbacks : Bool) : Void;
    public function destroy(deleteInstance : Bool, cleanupStyles : Bool) : Void;
    public function on(callback : String, handler : SwiperHandler) : Void;
    public function once(callback : String, handler : SwiperHandler) : Void;
    public function off(callback : String) : Void;
    public var realIndex (default, null) : Int;
    public var activeIndex (default, null) : Int;
    public var previousIndex (default, null) : Int;
    public var slides (default, null) : Array<Dynamic>;
    public var wrapper (default, null) : Array<Dynamic>;
}

typedef SwiperOptions = {
    //
    ? initialSlide : Int,
    ? direction : String,
    ? speed : Int,
    ? setWrapperSize : Bool,
    ? virtualTranslate : Bool,
    ? width : Int,
    ? height : Int,
    ? autoHeight : Bool,
    ? roundLengths : Bool,
    ? nested : Bool,
    ? centeredSlides: Bool,
    // slides grid
    ? spaceBetween : Int,
    ? slidesPerView : Int,
    // pagination
    ? pagination : String,
    ? paginationType : String,
    ? paginationHide : Bool,
    ? paginationClickable : Bool,
    ? paginationElement : String,
    ? paginationBulletRender : Int -> String -> String,
    ? paginationFractionRender : Swiper -> String -> String -> String,
    ? paginationProgressRender : Swiper -> String -> String,
    ? paginationCustomRender : Swiper -> Int -> Int -> String,
    // loop
    ? loop : Bool, /* FIXME, this causes doubled react ids errors */
    ? loopAdditionalSlides : Int,
    ? loopedSlides : Int,
    // callbacks
    ? onInit : Swiper -> Void,
    ? onSlideChangeStart : Swiper -> Void,
    ? onSlideChangeEnd : Swiper -> Void,
    ? onSlideNextStart : Swiper -> Void,
    ? onSlideNextEnd : Swiper -> Void,
    ? onSlidePrevStart : Swiper -> Void,
    ? onSlidePrevEnd : Swiper -> Void,
    ? onTap : Swiper -> Dynamic -> Void,
    ? onSetTranslate : Swiper -> Dynamic -> Void,
    // Animations
    ? watchSlidesProgress : Bool,
    ? onTouchEnd : Swiper -> Void,
    ? onTouchStart : Swiper -> Void,
    ? onProgress : Swiper -> Int -> Void,
    // FreeMode
    ? freeModeMomentum : Bool
}

typedef ReactSwiperProps = {
    > ReactComponentProps,
    options : SwiperOptions,
    swiperIsInitialized : Null<Swiper -> Void>,
    className : String
}

/**
Haxe rewrite of [SwiperComponent](https://github.com/poetic/meteor-react-swiper)
**/
class ReactSwiper extends ReactComponentOf<ReactSwiperProps, Dynamic, Dynamic> {

    public function new() { super(); }

    ///
    // Public Interface
    //


    ///
    // Internals
    //

    private var swiper : Swiper;

    override function shouldComponentUpdate(nextProps : ReactSwiperProps, nextState : Dynamic) : Bool {

        /* swiper.update(); */ trace('swiper.update should be called ?');

        return true;
    }

    override function componentWillUnmount() : Void {

        swiper.destroy(true,true);
    }

    override function componentDidMount() : Void {

        swiper = new Swiper(refs.node, props.options);

        if (props.swiperIsInitialized != null) props.swiperIsInitialized(this.swiper);
    }

    private function getClassName() : String {

        if (props.className != null && props.className.length > 0) {

            return '${StringTools.trim(props.className)} swiper-container';
        }

        return "swiper-container";
    }

    private function renderChildren() {

        return [ for(ci in 0...props.children.length) jsx('<div key="{ ci }" className="swiper-slide">{ props.children[ci] }</div>') ];
    }

    override function render() {

        return jsx('
            <div className={ props.className } ref="node">
                <div className="swiper-wrapper">
                    { renderChildren() }
                </div>
            </div>
        ');
    }
}
