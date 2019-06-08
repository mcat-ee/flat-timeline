<App>

	<style type="text/css">
		/*Timeline styles*/
		.timeline {
			min-width:100vh;
			height:15px;
			background-color: #95CEFF;
		}

		.topRow{
			margin-top:50px;
		}

		.topRow .card .contents {
			flex-direction: column-reverse;
		}

		.bottomRow{

		}

		.bottomRow .card .contents{
			/*flex: 0.25;*/
			/*display:flex;*/
			flex-direction:column;
			/*flex-direction: row;*/
			/*border-bottom: 2px solid green;*/
		}

		.row .card{

		}

		.topRow .card {
			flex-direction:column;
			/*flex-direction: row;*/
			/*border-bottom: 2px solid green;*/
		}


		.bottomRow .card{
			flex-direction: column-reverse;
		}

		.row{
			display: flex;
			flex-direction: row;
		}
		

		.spacer {
			width:150px;
			height:300px;
			background-color: #eee;
		}
	</style>

<div id="topRow" class="topRow row">
		<div class="spacer"></div>
		<!-- <div class="card">
			<div class="cardText">text</div>
			<div class="timelineLink">
				<div class="linkSpacer linkSpacerLeft"></div>
				<div class="linkSpacer"></div>
			</div>
		</div> -->

		<!-- div class="spacer"></div>
		<div class="card">
			<div class="cardText">text2</div>
			<div class="timelineLink">|</div>
		</div> -->
	</div>
	<div class="timeline">
	</div>
	<div id="bottomRow" class="bottomRow row">
				<div class="spacer"></div>
	<!-- 	<div class="card">
			<div class="cardText">text3</div>
			<div class="timelineLink">|</div>
		</div> -->
	</div>


	<script type="text/javascript">
	// const self = this;

	// 	//Attach event listeners
 //    	this.on("mount", function() {
 //    		//Set initial state
 //    		this.state = "loading";
 //    		this.userModel = null;

 	const self = this;
 	this.on("mount", () => {
 		console.log("MOUNTING");
 		console.log(this.opts);
		const cards = this.opts.cards;

		const topRowRef = document.getElementById("topRow");
		const bottomRowRef = document.getElementById("bottomRow");
		console.log(topRowRef);
		console.log(bottomRowRef);

		for (var cardIndex = 0 ; cardIndex< cards.length ; cardIndex++) {
			var cardOpt = cards[cardIndex];

			if(cardIndex%2) {
				//Add card to topRow
				//Add spacer to bottomRow
				var card = document.createElement("Card");
				topRowRef.appendChild(card)

				var spacer = document.createElement("div");
				spacer.className = "spacer";
				bottomRowRef.appendChild(spacer);

				//Mount card

				riot.mount(card, cardOpt);

			} else {
				//Add card to bottomRow
				//Add spacer to topRow

				var card = document.createElement("Card");
				bottomRowRef.appendChild(card)

				var spacer = document.createElement("div");
				spacer.className = "spacer";
				topRowRef.appendChild(spacer);

				//Mount card

				riot.mount(card, cardOpt);
			}

		}
 	})

		
	</script>

	

</App>