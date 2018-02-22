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

@:native("Swiper")
#if(!swiperGlobal)
@:jsRequire("swiper","default")
#end
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
    public var container (default, null) : Array<Dynamic>;
    public var wrapper (default, null) : Array<Dynamic>;
}

typedef SwiperOptions = {
    ? slideClass : String,
    ? wrapperClass : String,
    ? prevButton : haxe.extern.EitherType<String,js.html.Element>,
    ? nextButton : haxe.extern.EitherType<String,js.html.Element>,
    //
    ? initialSlide : Int,
    ? direction : String, // 'vertical' or 'horizontal'
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
    ? slidesPerView : Float,
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
    ? runCallbacksOnInit : Bool,
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
    ? freeModeMomentum : Bool,
    ? freeMode : Bool,
}

typedef ReactSwiperProps = {
    > ReactComponentProps,
    options : SwiperOptions,
    swiperIsInitialized : Null<Swiper -> Void>,
    className : String,
    ? style : Dynamic,
    ? noWrapper : Bool
}

/**
Haxe rewrite of [SwiperComponent](https://github.com/poetic/meteor-react-swiper)
**/
class ReactSwiper extends ReactComponentOf<ReactSwiperProps, Dynamic, Dynamic> {

#if(!swiperGlobal)
    static var css = js.Lib.require('swiper/dist/css/swiper.css');
#end

    public function new(p) { super(p); }

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

    override function componentDidMount() : Void { js.Browser.console.log(props);

        swiper = new Swiper(refs.node, props.options);

        if (props.swiperIsInitialized != null) props.swiperIsInitialized(this.swiper);
    }

    private function renderChildren() {

        return [ for(ci in 0...props.children.length) jsx('<div key={ ci } className="swiper-slide">{ props.children[ci] }</div>') ];
    }

    override function render() { trace('renderSwiper');

        if (props.noWrapper) {

           return jsx('
                <div className={ props.className } style={ props.style } ref="node">
                    { props.children }
                </div>
            ');
        }

        return jsx('
            <div className={ props.className } style={ props.style } ref="node">
                <div className="swiper-wrapper">
                    { renderChildren() }
                </div>
            </div>
        ');
    }
}

