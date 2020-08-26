<?php
namespace Syntro\SilverStripeElementalBootstrapGallerySection\Model;

use SilverStripe\Assets\Image;
use SilverStripe\Forms\TextareaField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use Syntro\SilverStripeElementalBaseitems\Model\BaseItem;
use Syntro\SilverStripeElementalBootstrapGallerySection\Elements\GallerySection;
use Syntro\SilverStripeElementalBootstrapGallerySection\Elements\IllustratedGallerySection;

/**
 * GalleryImage
 *
 * @author Matthias Leutenegger <hello@syntro.ch>
 */
class GalleryImage extends BaseItem
{
    /**
     * @var string
     */
    private static $table_name = 'ElementalBootstrapGalleryImage';

    /**
     * @var array
     */
    private static $db = [
        'Sort' => 'Int',
        'Caption' => 'Text',

    ];

    private static $default_sort = ['Sort' => 'ASC'];

    /**
     * @var array
     */
    private static $has_one = [
        'Section' => GallerySection::class,
        'Image' => Image::class,
    ];

    /**
     * @var array
     */
    private static $owns = [
        'Image'
    ];

    /**
     * @return FieldList
     */
    public function getCMSFields()
    {
        $this->beforeUpdateCMSFields(function ($fields) {
            /** @var FieldList $fields */
            $fields->removeByName([
                'Sort',
                'SectionID',
            ]);

            // Add Image Upload Field
            $fields->addFieldToTab(
                'Root.Main',
                $imageField = UploadField::create(
                    'Image',
                    'Image'
                )
            );
            $imageField->setFolderName('Uploads/GalleryImages');

            // Add content field
            // $fields->addFieldToTab(
            //     'Root.Main',
            //     TextareaField::create(
            //         'Content',
            //         'Content'
            //     ),
            //     'CTALink'
            // );
        });

        return parent::getCMSFields();
    }
}
